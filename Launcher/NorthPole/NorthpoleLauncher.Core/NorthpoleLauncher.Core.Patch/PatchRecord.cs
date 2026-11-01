namespace NorthpoleLauncher.Core.Patch;

public sealed class PatchRecord
{
	public const int FileNameLength = 200;

	public const int PackageNameLength = 50;

	public const int Size = 264;

	public string FileName { get; set; } = "";

	public string PackageName { get; set; } = "";

	public uint FileSize { get; set; }

	public uint Crc32 { get; set; }

	public uint Version { get; set; } = 100u;
}
