using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text.Json;
using System.Text.RegularExpressions;
using System.Threading;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace NorthpoleLauncher.Core;

public static class NewsFeed
{
	public static async Task<List<NewsItem>> LoadAsync(HttpClient http, LauncherConfig cfg, CancellationToken ct)
	{
		List<NewsItem> news = cfg.News;
		if (news != null && news.Count > 0)
		{
			return cfg.News;
		}
		List<NewsItem> list = await TryJsonAsync(http, cfg.NewsUrl, ct).ConfigureAwait(continueOnCapturedContext: false);
		if (list != null && list.Count > 0)
		{
			return list;
		}
		List<NewsItem> list2 = await TryRssAsync(http, cfg.RssUrl, ct).ConfigureAwait(continueOnCapturedContext: false);
		if (list2 != null && list2.Count > 0)
		{
			return list2;
		}
		return Fallback(cfg);
	}

	private static async Task<List<NewsItem>?> TryJsonAsync(HttpClient http, string? url, CancellationToken ct)
	{
		if (string.IsNullOrWhiteSpace(url))
		{
			return null;
		}
		try
		{
			using CancellationTokenSource cts = CancellationTokenSource.CreateLinkedTokenSource(ct);
			cts.CancelAfter(TimeSpan.FromSeconds(8.0));
			return JsonSerializer.Deserialize<List<NewsItem>>(await http.GetStringAsync(url, cts.Token).ConfigureAwait(continueOnCapturedContext: false), LauncherConfig.JsonOptions);
		}
		catch
		{
			return null;
		}
	}

	private static async Task<List<NewsItem>?> TryRssAsync(HttpClient http, string? url, CancellationToken ct)
	{
		if (string.IsNullOrWhiteSpace(url))
		{
			return null;
		}
		try
		{
			using CancellationTokenSource cts = CancellationTokenSource.CreateLinkedTokenSource(ct);
			cts.CancelAfter(TimeSpan.FromSeconds(8.0));
			return (from i in XDocument.Parse(await http.GetStringAsync(url, cts.Token).ConfigureAwait(continueOnCapturedContext: false)).Descendants("item")
				select new NewsItem
				{
					Tag = (((string?)i.Element("category")) ?? "News"),
					Title = (((string?)i.Element("title")) ?? "").Trim(),
					Summary = StripHtml(((string?)i.Element("description")) ?? ""),
					Url = (string?)i.Element("link"),
					Date = (string?)i.Element("pubDate")
				} into n
				where n.Title.Length > 0
				select n).Take(20).ToList();
		}
		catch
		{
			return null;
		}
	}

	private static string StripHtml(string s)
	{
		s = Regex.Replace(s, "<[^>]+>", " ");
		s = WebUtility.HtmlDecode(s);
		return Regex.Replace(s, "\\s+", " ").Trim();
	}

	private static List<NewsItem> Fallback(LauncherConfig cfg)
	{
		return new List<NewsItem>
		{
			new NewsItem
			{
				Tag = "Announcement",
				Title = "Welcome to RYL2 Northpole",
				Summary = "Risk Your Life 2, free to play. Register an account, download the client and jump into the war between Karterant and Merkadia.",
				Url = cfg.Links.Website
			},
			new NewsItem
			{
				Tag = "Statue Wars",
				Title = "Statue War Schedule",
				Summary = "Statue wars run every three hours at 01:00, 04:00, 07:00, 10:00, 13:00, 16:00, 19:00 and 22:00 server time. The countdown in the launcher footer shows the next one.",
				Url = cfg.Links.Website
			},
			new NewsItem
			{
				Tag = "Rules",
				Title = "Server Rules",
				Summary = "No scamming, no hacking, no racism or harassment. Read the full rule set before playing.",
				Url = cfg.Links.Support
			},
			new NewsItem
			{
				Tag = "Community",
				Title = "Join the Community",
				Summary = "Forum, Facebook and the in-game chat are the places to find parties, trade and get help.",
				Url = cfg.Links.Community
			}
		};
	}
}
