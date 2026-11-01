using System;
using System.Collections.Generic;
using System.IO;
using System.IO.Compression;
using System.Linq;
using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;

namespace NorthpoleLauncher.Core.Patch;

public sealed class Patcher
{
	private readonly HttpClient _http;

	private readonly string _clientDir;

	private readonly string _patchUrl;

	public Patcher(HttpClient http, string clientDir, string patchUrl)
	{
		_http = http;
		_clientDir = clientDir;
		_patchUrl = patchUrl.TrimEnd('/');
	}

	public async Task<PatchInfo> FetchManifestAsync(CancellationToken ct)
	{
		using HttpResponseMessage resp = await _http.GetAsync(_patchUrl + "/PatchInfoV2.zip", HttpCompletionOption.ResponseHeadersRead, ct).ConfigureAwait(continueOnCapturedContext: false);
		resp.EnsureSuccessStatusCode();
		using MemoryStream ms = new MemoryStream();
		await resp.Content.CopyToAsync(ms, ct).ConfigureAwait(continueOnCapturedContext: false);
		ms.Position = 0L;
		return PatchInfo.ParseZip(ms);
	}

	public async Task<PatchResult> RunAsync(uint localVersion, bool fileCheck, IProgress<PatchProgress> progress, CancellationToken ct)
	{
		try
		{
			progress.Report(new PatchProgress(2.0, "Downloading patch information...", null, 0L, 0L));
			PatchInfo manifest = await FetchManifestAsync(ct).ConfigureAwait(continueOnCapturedContext: false);
			try
			{
				await SyncNoticesAsync(progress, ct).ConfigureAwait(continueOnCapturedContext: false);
			}
			catch
			{
			}
			SortedDictionary<string, List<PatchRecord>> packages = new SortedDictionary<string, List<PatchRecord>>(StringComparer.OrdinalIgnoreCase);
			int count = manifest.Records.Count;
			for (int i = 0; i < count; i++)
			{
				ct.ThrowIfCancellationRequested();
				PatchRecord patchRecord = manifest.Records[i];
				bool flag;
				if (fileCheck)
				{
					string text = Path.Combine(_clientDir, patchRecord.FileName);
					if (i % 25 == 0)
					{
						progress.Report(new PatchProgress(15.0 + 45.0 * (double)i / (double)Math.Max(1, count), $"Checking files [{i + 1}/{count}]", patchRecord.FileName, i, count));
					}
					flag = !File.Exists(text) || new FileInfo(text).Length != patchRecord.FileSize || Crc32.ComputeFile(text) != patchRecord.Crc32;
				}
				else
				{
					flag = patchRecord.Version > localVersion;
				}
				if (flag)
				{
					if (!packages.TryGetValue(patchRecord.PackageName, out List<PatchRecord> value))
					{
						value = (packages[patchRecord.PackageName] = new List<PatchRecord>());
					}
					value.Add(patchRecord);
				}
			}
			int updated = 0;
			bool launcherUpdated = false;
			int pkgIndex = 0;
			foreach (var (text3, files) in packages)
			{
				ct.ThrowIfCancellationRequested();
				int num = pkgIndex;
				pkgIndex = num + 1;
				string zipName = text3 + ".zip";
				string tmpZip = Path.Combine(_clientDir, zipName);
				double basePct = 60.0 + 35.0 * (double)(pkgIndex - 1) / (double)packages.Count;
				await DownloadFileAsync(_patchUrl + "/" + zipName, tmpZip, (long done, long len) =>
				{
					progress.Report(new PatchProgress(basePct, $"Downloading {zipName} [{pkgIndex}/{packages.Count}]", zipName, done, len));
				}, ct).ConfigureAwait(continueOnCapturedContext: false);
				using (ZipArchive zipArchive = ZipFile.OpenRead(tmpZip))
				{
					foreach (PatchRecord f in files)
					{
						ct.ThrowIfCancellationRequested();
						ZipArchiveEntry zipArchiveEntry = zipArchive.Entries.FirstOrDefault((ZipArchiveEntry e) => NormalizeName(e.FullName).Equals(NormalizeName(f.FileName), StringComparison.OrdinalIgnoreCase));
						if (zipArchiveEntry != null)
						{
							string text4 = Path.Combine(_clientDir, f.FileName);
							Directory.CreateDirectory(Path.GetDirectoryName(text4));
							ClearAttributes(text4);
							zipArchiveEntry.ExtractToFile(text4, overwrite: true);
							updated++;
							progress.Report(new PatchProgress(basePct, "Extracting " + f.FileName, zipName, 1L, 1L));
							if (f.FileName.EndsWith(".new", StringComparison.OrdinalIgnoreCase))
							{
								launcherUpdated = true;
							}
						}
					}
				}
				TryDelete(tmpZip);
			}
			progress.Report(new PatchProgress(100.0, (updated == 0) ? "Client is up to date." : $"Updated {updated} file(s).", null, 0L, 0L));
			return new PatchResult(Success: true, manifest.Version, updated, launcherUpdated, null);
		}
		catch (OperationCanceledException)
		{
			return new PatchResult(Success: false, localVersion, 0, LauncherUpdated: false, "Cancelled.");
		}
		catch (Exception ex2)
		{
			return new PatchResult(Success: false, localVersion, 0, LauncherUpdated: false, ex2.Message);
		}
	}

	private async Task SyncNoticesAsync(IProgress<PatchProgress> progress, CancellationToken ct)
	{
		List<int> list = (from s in (await _http.GetStringAsync(_patchUrl + "/Notice/NoticeInfo.dat", ct).ConfigureAwait(continueOnCapturedContext: false)).Split((char[]?)null, StringSplitOptions.RemoveEmptyEntries)
			select int.TryParse(s, out var result) ? result : 0 into v
			where v > 0
			select v).ToList();
		string noticeDir = Path.Combine(_clientDir, "Notice");
		Directory.CreateDirectory(noticeDir);
		bool addAll = false;
		foreach (int item in list)
		{
			if (!Directory.Exists(Path.Combine(noticeDir, item.ToString())))
			{
				addAll = true;
			}
			if (addAll)
			{
				string text = $"{item}Notice.zip";
				string tmp = Path.Combine(_clientDir, text);
				progress.Report(new PatchProgress(8.0, $"Downloading notice {item}", text, 0L, 0L));
				await DownloadFileAsync(_patchUrl + "/Notice/" + text, tmp, null, ct).ConfigureAwait(continueOnCapturedContext: false);
				ZipFile.ExtractToDirectory(tmp, noticeDir, overwriteFiles: true);
				TryDelete(tmp);
			}
		}
	}

	private async Task DownloadFileAsync(string url, string dest, Action<long, long>? onProgress, CancellationToken ct)
	{
		using HttpResponseMessage resp = await _http.GetAsync(url, HttpCompletionOption.ResponseHeadersRead, ct).ConfigureAwait(continueOnCapturedContext: false);
		resp.EnsureSuccessStatusCode();
		long len = resp.Content.Headers.ContentLength.GetValueOrDefault();
		using Stream src = await resp.Content.ReadAsStreamAsync(ct).ConfigureAwait(continueOnCapturedContext: false);
		ClearAttributes(dest);
		using FileStream dst = new FileStream(dest, FileMode.Create, FileAccess.Write, FileShare.None, 65536);
		byte[] buf = new byte[65536];
		long done = 0L;
		DateTime lastReport = DateTime.MinValue;
		while (true)
		{
			int num;
			int n = (num = await src.ReadAsync(buf, ct).ConfigureAwait(continueOnCapturedContext: false));
			if (num <= 0)
			{
				break;
			}
			await dst.WriteAsync(buf.AsMemory(0, n), ct).ConfigureAwait(continueOnCapturedContext: false);
			done += n;
			if (onProgress != null && (DateTime.UtcNow - lastReport).TotalMilliseconds > 80.0)
			{
				lastReport = DateTime.UtcNow;
				onProgress(done, len);
			}
		}
		onProgress?.Invoke(done, (len == 0L) ? done : len);
	}

	private static string NormalizeName(string n)
	{
		return n.Replace('\\', '/').TrimStart('/');
	}

	private static void ClearAttributes(string path)
	{
		if (File.Exists(path))
		{
			FileAttributes attributes = File.GetAttributes(path);
			FileAttributes fileAttributes = attributes & ~(FileAttributes.ReadOnly | FileAttributes.Hidden | FileAttributes.System);
			if (fileAttributes != attributes)
			{
				File.SetAttributes(path, fileAttributes);
			}
		}
	}

	private static void TryDelete(string path)
	{
		try
		{
			if (File.Exists(path))
			{
				File.Delete(path);
			}
		}
		catch
		{
		}
	}
}
