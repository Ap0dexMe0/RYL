using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Net.Http;
using System.Text.Json;
using System.Text.Json.Serialization;
using System.Threading;
using System.Threading.Tasks;

namespace NorthpoleLauncher.Core;

public sealed class LauncherConfig
{
	public const string FileName = "launcher.json";

	public string LoginServer { get; set; } = "s2.ryl2northpole.com";

	public int LoginPort { get; set; } = 10101;

	public string? PatchUrl { get; set; }

	public string? ClientDir { get; set; }

	public int DefaultServerGroup { get; set; } = 5;

	public string? RemoteConfigUrl { get; set; } = "https://www.ryl2northpole.com/client/launcher/launcher.json";

	public string? NewsUrl { get; set; } = "https://www.ryl2northpole.com/client/launcher/news.json";

	public string? RssUrl { get; set; } = "https://www.ryl2northpole.com/?format=feed&type=rss";

	public LauncherLinks Links { get; set; } = new LauncherLinks();

	public string ServerTimeZone { get; set; } = "Central European Standard Time";

	public int[] WarHours { get; set; } = new int[8] { 1, 4, 7, 10, 13, 16, 19, 22 };

	public string BgmFile { get; set; } = "lc2.ogg";

	public bool BgmOnByDefault { get; set; } = true;

	public Dictionary<string, string> ServerNames { get; set; } = new Dictionary<string, string> { ["5"] = "Burning Northpole" };

	public LauncherUpdateInfo? LauncherUpdate { get; set; }

	public List<NewsItem>? News { get; set; }

	[JsonIgnore]
	public static JsonSerializerOptions JsonOptions { get; } = new JsonSerializerOptions
	{
		PropertyNameCaseInsensitive = true,
		PropertyNamingPolicy = JsonNamingPolicy.CamelCase,
		WriteIndented = true,
		DefaultIgnoreCondition = JsonIgnoreCondition.WhenWritingNull,
		ReadCommentHandling = JsonCommentHandling.Skip,
		AllowTrailingCommas = true
	};

	public static LauncherConfig LoadLocal(string launcherDir)
	{
		string path = Path.Combine(launcherDir, "launcher.json");
		if (!File.Exists(path))
		{
			return new LauncherConfig();
		}
		try
		{
			return JsonSerializer.Deserialize<LauncherConfig>(File.ReadAllText(path), JsonOptions) ?? new LauncherConfig();
		}
		catch
		{
			return new LauncherConfig();
		}
	}

	public async Task<bool> ApplyRemoteAsync(HttpClient http, CancellationToken ct)
	{
		if (string.IsNullOrWhiteSpace(RemoteConfigUrl))
		{
			return false;
		}
		try
		{
			using CancellationTokenSource cts = CancellationTokenSource.CreateLinkedTokenSource(ct);
			cts.CancelAfter(TimeSpan.FromSeconds(8.0));
			string json = await http.GetStringAsync(RemoteConfigUrl, cts.Token).ConfigureAwait(continueOnCapturedContext: false);
			using JsonDocument jsonDocument = JsonDocument.Parse(json, new JsonDocumentOptions
			{
				CommentHandling = JsonCommentHandling.Skip,
				AllowTrailingCommas = true
			});
			LauncherConfig launcherConfig = JsonSerializer.Deserialize<LauncherConfig>(json, JsonOptions);
			if (launcherConfig == null)
			{
				return false;
			}
			JsonElement root = jsonDocument.RootElement;
			if (Has("loginServer"))
			{
				LoginServer = launcherConfig.LoginServer;
			}
			if (Has("loginPort"))
			{
				LoginPort = launcherConfig.LoginPort;
			}
			if (Has("patchUrl"))
			{
				PatchUrl = launcherConfig.PatchUrl;
			}
			if (Has("newsUrl"))
			{
				NewsUrl = launcherConfig.NewsUrl;
			}
			if (Has("rssUrl"))
			{
				RssUrl = launcherConfig.RssUrl;
			}
			if (Has("links"))
			{
				Links = launcherConfig.Links;
			}
			if (Has("serverTimeZone"))
			{
				ServerTimeZone = launcherConfig.ServerTimeZone;
			}
			if (Has("warHours"))
			{
				WarHours = launcherConfig.WarHours;
			}
			if (Has("bgmFile"))
			{
				BgmFile = launcherConfig.BgmFile;
			}
			if (Has("serverNames"))
			{
				ServerNames = launcherConfig.ServerNames;
			}
			if (Has("launcherUpdate"))
			{
				LauncherUpdate = launcherConfig.LauncherUpdate;
			}
			if (Has("news"))
			{
				News = launcherConfig.News;
			}
			return true;
			bool Has(string name)
			{
				if (!root.TryGetProperty(name, out var value))
				{
					return root.TryGetProperty(char.ToUpperInvariant(name[0]) + name.Substring(1, name.Length - 1), out value);
				}
				return true;
			}
		}
		catch
		{
			return false;
		}
	}

	public string DisplayServerName(int group, string wireName)
	{
		if (ServerNames.TryGetValue(group.ToString(), out string value) && !string.IsNullOrWhiteSpace(value))
		{
			return value;
		}
		return CultureInfo.InvariantCulture.TextInfo.ToTitleCase(wireName.ToLowerInvariant());
	}
}
