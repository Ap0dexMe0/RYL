using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Net;
using System.Text;
using System.Threading;
using System.Windows.Threading;
using ICSharpCode.SharpZipLib.Core;
using ICSharpCode.SharpZipLib.Zip;

namespace launcher2;

internal class CUpdate : CScene
{
	public enum EState
	{
		e_Init,
		e_Downloading,
		e_Extracting,
		e_End,
		e_Error
	}

	public class CSvnFile
	{
		public string m_offset;

		public string m_name;

		public string m_root;

		public string m_path;

		public string m_crc;
	}

	public EState m_state;

	private int m_curDownIdx;

	private string m_updateServer;

	private string d_rowTok = "#323";

	private string d_coloumTok = "~728";

	private const int RETRY_COUNT = 5;

	private const int RETRY_DELAY_MS = 1000;

	public Func<string> GetCurProgressLogText;

	public Action<string> ChangeProgressLogText;

	public Action<double> SetProgressBarMax;

	public Action IncreaseProgress;

	public Action<string> EndProgress;

	private List<CSvnFile> downloadList;

	public int program_version = 1;

	public int svn_version = -1;

	public int top_version = -1;

	public int download_count;

	public List<int> prev_versions = new List<int>();

	private int m_curVersionIdx;

	private int m_countZIP;

	private bool UpdateServerChk = true;

	private string m_savePath;

	public Dispatcher Dispatcher => CMain.m_mainWindow.Dispatcher;

	public override void Update()
	{
		switch (m_state)
		{
		case EState.e_Init:
			Init();
			break;
		case EState.e_Downloading:
			if (!EndChk())
			{
				Download(downloadList[m_curDownIdx]);
			}
			break;
		case EState.e_Extracting:
			Extract(downloadList[m_curDownIdx]);
			break;
		case EState.e_End:
			SaveVersion();
			Dispatcher.Invoke(EndProgress, " Update Complete!");
			CMain.m_scene = CMain.EScene.e_LauncherChk;
			break;
		case EState.e_Error:
			break;
		}
	}

	public void Init()
	{
		long num = 100000L;
		long num2 = 100000L;
		m_updateServer = CMain.Get_StringTable(51);
		Stopwatch stopwatch = new Stopwatch();
		stopwatch.Start();
		GetTopVersion();
		stopwatch.Stop();
		if (top_version != -1)
		{
			num = stopwatch.ElapsedMilliseconds;
		}
		m_updateServer = CMain.Get_StringTable(52);
		stopwatch.Start();
		GetTopVersion();
		stopwatch.Stop();
		if (top_version != -1)
		{
			num2 = stopwatch.ElapsedMilliseconds + 1000;
		}
		if (num < num2)
		{
			m_updateServer = CMain.Get_StringTable(51);
		}
		GetCurProgressLogText = () => CMain.m_mainWindow.progressLog.Text;
		ChangeProgressLogText = (string text) =>
		{
			CMain.m_mainWindow.progressLog.Text = text;
		};
		SetProgressBarMax = (double max) =>
		{
			CMain.m_mainWindow.progressBar.Value = 0.0;
			CMain.m_mainWindow.progressBar.Maximum = max;
		};
		IncreaseProgress = () =>
		{
			CMain.m_mainWindow.progressBar.Value++;
		};
		EndProgress = (string text) =>
		{
			CMain.m_mainWindow.progressLog.Text = text;
			CMain.m_mainWindow.progressBar.Value = CMain.m_mainWindow.progressBar.Maximum;
		};
		Dispatcher.Invoke(ChangeProgressLogText, " Checking version");
		GetSvnVersion();
		GetPrevVersions();
		if (prev_versions.Count == 0)
		{
			Dispatcher.Invoke(EndProgress, " The latest version!");
			CMain.m_scene = CMain.EScene.e_LauncherChk;
			m_state = EState.e_End;
			return;
		}
		m_savePath = CMain.m_path;
		DirectoryInfo directoryInfo = new DirectoryInfo(m_savePath);
		if (!directoryInfo.Exists)
		{
			directoryInfo.Create();
		}
		m_curVersionIdx = 0;
		BeginVersion();
	}

	private void BeginVersion()
	{
		int num = prev_versions[m_curVersionIdx];
		Dispatcher.Invoke(ChangeProgressLogText, " Checking version " + num);
		GetDownloadList(num);
		List<CSvnFile> list = new List<CSvnFile>();
		m_countZIP = 0;
		foreach (CSvnFile download in downloadList)
		{
			if (download != null && download.m_offset != null && !(download.m_offset == "") && !(download.m_crc == "0"))
			{
				list.Add(download);
				if (download.m_name.IndexOf(".zip") != -1)
				{
					m_countZIP++;
				}
			}
		}
		downloadList = list;
		Dispatcher.Invoke(SetProgressBarMax, list.Count + m_countZIP);
		m_curDownIdx = 0;
		m_state = EState.e_Downloading;
	}

	public bool EndChk()
	{
		if (m_curDownIdx < downloadList.Count)
		{
			return false;
		}
		svn_version = prev_versions[m_curVersionIdx];
		download_count = 0;
		SaveVersion();
		m_curVersionIdx++;
		if (m_curVersionIdx < prev_versions.Count)
		{
			BeginVersion();
		}
		else
		{
			m_state = EState.e_End;
		}
		return true;
	}

	public void Download(CSvnFile fileData)
	{
		string url = "http://" + m_updateServer + "/" + fileData.m_root + "/" + fileData.m_path;
		StringBuilder stringBuilder = new StringBuilder(65536);
		CMain.Dll_ChkRenameFile(new StringBuilder(fileData.m_name), stringBuilder);
		string saveName = m_savePath + "/" + stringBuilder;
		string text = " (" + (m_curDownIdx + 1) + "/" + downloadList.Count + ")";
		Dispatcher.Invoke(ChangeProgressLogText, " Downloading " + prev_versions[m_curVersionIdx] + " " + fileData.m_name + text);
		DownloadFile(url, saveName);
		Dispatcher.Invoke(IncreaseProgress);
		if (fileData.m_name.IndexOf(".zip") != -1)
		{
			m_state = EState.e_Extracting;
		}
		else
		{
			m_curDownIdx++;
		}
	}

	public void Extract(CSvnFile fileData)
	{
		string text = m_savePath + "/" + fileData.m_path;
		string text2 = " (" + (m_curDownIdx + 1) + "/" + downloadList.Count + ")";
		Dispatcher.Invoke(ChangeProgressLogText, " Extracting " + prev_versions[m_curVersionIdx] + " " + fileData.m_name + text2);
		string text3 = ((text.IndexOf("Extra.zip") == -1) ? text.Substring(0, text.IndexOf(".zip")) : text.Substring(0, text.IndexOf("\\/Extra.zip")));
		DirectoryInfo directoryInfo = new DirectoryInfo(text3);
		if (!directoryInfo.Exists)
		{
			directoryInfo.Create();
		}
		ExtractZipFile(text, "", text3);
		File.Delete(text);
		Dispatcher.Invoke(IncreaseProgress);
		m_state = EState.e_Downloading;
		m_curDownIdx++;
	}

	public void ExtractZipFile(string archiveFilenameIn, string password, string outFolder)
	{
		ZipFile zipFile = null;
		try
		{
			zipFile = new ZipFile(File.OpenRead(archiveFilenameIn));
			if (!string.IsNullOrEmpty(password))
			{
				zipFile.Password = password;
			}
			foreach (ZipEntry item in zipFile)
			{
				if (!item.IsFile)
				{
					continue;
				}
				string name = item.Name;
				byte[] buffer = new byte[4096];
				Stream inputStream = zipFile.GetInputStream(item);
				string path = Path.Combine(outFolder, name);
				string directoryName = Path.GetDirectoryName(path);
				if (directoryName.Length > 0)
				{
					Directory.CreateDirectory(directoryName);
				}
				int num = 1;
				while (true)
				{
					try
					{
						using FileStream destination = File.Create(path);
						StreamUtils.Copy(inputStream, destination, buffer);
					}
					catch (IOException)
					{
						if (num >= 5)
						{
							throw;
						}
						Thread.Sleep(1000);
						inputStream = zipFile.GetInputStream(item);
						goto IL_00c5;
					}
					break;
					IL_00c5:
					num++;
				}
			}
		}
		finally
		{
			if (zipFile != null)
			{
				zipFile.IsStreamOwner = true;
				zipFile.Close();
			}
		}
	}

	private List<CSvnFile> CompareFile(List<CSvnFile> _low, List<CSvnFile> _high)
	{
		List<CSvnFile> list = new List<CSvnFile>();
		bool[] array = new bool[_high.Count];
		int num = 0;
		foreach (CSvnFile item in _high)
		{
			bool flag = false;
			foreach (CSvnFile item2 in _low)
			{
				if (item.m_path == item2.m_path && item.m_name == item2.m_name)
				{
					flag = true;
					if (!(item.m_crc == item2.m_crc) && !array[num])
					{
						array[num] = true;
						list.Add(item);
						break;
					}
				}
			}
			if (!flag && !array[num])
			{
				array[num] = true;
				list.Add(item);
			}
			num++;
		}
		return list;
	}

	private List<string> CutStr(string _str, string _token)
	{
		List<string> list = new List<string>();
		int num = 0;
		int num2 = 0;
		while (true)
		{
			num = _str.IndexOf(_token, num2);
			if (num == -1)
			{
				break;
			}
			list.Add(_str.Substring(num2, num - num2));
			num2 = num + _token.Length;
		}
		list.Add(_str.Substring(num2, _str.Length - num2));
		return list;
	}

	private List<CSvnFile> GetVersionList(int version)
	{
		List<CSvnFile> list = new List<CSvnFile>();
		StringBuilder stringBuilder = new StringBuilder(65536);
		CMain.Dll_GetUrlChk(new StringBuilder("http://" + m_updateServer + "/ROW/Proc/Process.jsp?vUser=RowLauncher&vFunction=Row_GetVersion&vValue0=" + program_version + "&vValue1=" + version), stringBuilder);
		if (stringBuilder.Length == 0)
		{
			return list;
		}
		foreach (string item in CutStr(stringBuilder.ToString(), d_coloumTok))
		{
			List<string> list2 = CutStr(item, d_rowTok);
			if (list2.Count >= 5 && int.TryParse(list2[0], out var result) && long.TryParse(list2[4], out var result2))
			{
				CSvnFile cSvnFile = new CSvnFile();
				cSvnFile.m_offset = result.ToString();
				cSvnFile.m_name = list2[1];
				cSvnFile.m_root = list2[2];
				cSvnFile.m_path = list2[3];
				cSvnFile.m_crc = result2.ToString();
				list.Add(cSvnFile);
			}
		}
		return list;
	}

	private void GetDownloadList(int _version)
	{
		List<CSvnFile> low = new List<CSvnFile>();
		List<CSvnFile> list = new List<CSvnFile>();
		if (svn_version != -1)
		{
			low = GetVersionList(svn_version);
		}
		list = GetVersionList(_version);
		downloadList = new List<CSvnFile>();
		List<CSvnFile> list2 = CompareFile(low, list);
		int i = 0;
		download_count--;
		for (; download_count > i; i++)
		{
			if (list2.Count == 0)
			{
				break;
			}
			list2.RemoveAt(0);
		}
		if (download_count < 0)
		{
			download_count = 0;
		}
		foreach (CSvnFile item in list2)
		{
			downloadList.Add(item);
		}
	}

	private void DownloadFile(string url, string saveName)
	{
		WebClient webClient = new WebClient();
		int num = 1;
		while (true)
		{
			try
			{
				webClient.DownloadFile(new Uri(url), saveName);
			}
			catch (WebException)
			{
				if (num >= 5)
				{
					throw;
				}
				Dispatcher.Invoke(ChangeProgressLogText, " Retrying " + Path.GetFileName(saveName) + " (" + num + "/" + 5 + ")");
				Thread.Sleep(1000);
				goto IL_008c;
			}
			break;
			IL_008c:
			num++;
		}
		download_count++;
		StreamWriter streamWriter = new StreamWriter("version.csv");
		streamWriter.Write(program_version + "," + svn_version + ",\n" + download_count + ",");
		streamWriter.Close();
	}

	public void GetSvnVersion()
	{
		StringBuilder stringBuilder = new StringBuilder(65536);
		StringBuilder stringBuilder2 = new StringBuilder(65536);
		StringBuilder stringBuilder3 = new StringBuilder(65536);
		CMain.Dll_GetSvnVersion(stringBuilder, stringBuilder2, stringBuilder3);
		program_version = int.Parse(stringBuilder.ToString());
		svn_version = int.Parse(stringBuilder2.ToString());
		download_count = int.Parse(stringBuilder3.ToString());
	}

	public void GetTopVersion()
	{
		StringBuilder stringBuilder = new StringBuilder(65536);
		CMain.Dll_GetTopVersion(new StringBuilder(m_updateServer), svn_version, CMain.m_serverInfo.m_updatePassVersion, stringBuilder);
		if (stringBuilder.Length == 0 || !int.TryParse(stringBuilder.ToString(), out var result))
		{
			top_version = -1;
		}
		else
		{
			top_version = result;
		}
		CMain.m_curUpdateVersion = top_version;
	}

	public void GetPrevVersions()
	{
		StringBuilder stringBuilder = new StringBuilder(65536);
		CMain.Dll_GetPrevVersion(new StringBuilder(m_updateServer), svn_version, CMain.m_serverInfo.m_updatePassVersion, stringBuilder);
		prev_versions.Clear();
		foreach (string item in CutStr(stringBuilder.ToString(), d_coloumTok))
		{
			if (int.TryParse(CutStr(item, d_rowTok)[0], out var result))
			{
				prev_versions.Add(result);
			}
		}
	}

	private void SaveVersion()
	{
		StringBuilder programVersion = new StringBuilder(program_version.ToString());
		StringBuilder topVersion = new StringBuilder(svn_version.ToString());
		CMain.Dll_SaveTopVersion(programVersion, topVersion);
	}
}
