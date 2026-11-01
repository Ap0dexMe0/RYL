namespace NorthpoleLauncher.Core;

public sealed class NewsItem
{
	public string Tag { get; set; } = "Announcement";

	public string Title { get; set; } = "";

	public string Summary { get; set; } = "";

	public string? Url { get; set; }

	public string? Date { get; set; }
}
