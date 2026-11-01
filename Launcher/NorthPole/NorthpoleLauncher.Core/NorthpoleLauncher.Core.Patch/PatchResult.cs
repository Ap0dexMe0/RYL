namespace NorthpoleLauncher.Core.Patch;

public sealed record PatchResult(bool Success, uint NewVersion, int FilesUpdated, bool LauncherUpdated, string? Error);
