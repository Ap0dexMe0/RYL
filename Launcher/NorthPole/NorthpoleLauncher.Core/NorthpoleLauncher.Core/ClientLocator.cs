using System;
using System.Collections.Generic;
using System.IO;
using System.Runtime.Versioning;
using System.Text.RegularExpressions;
using Microsoft.Win32;

namespace NorthpoleLauncher.Core;

public static class ClientLocator
{
	public sealed record RegistryInfo(string? Folder, string? LoginServer, string? PatchServer);

	public const string RegistrySubKey = "SOFTWARE\\GamaSoft\\NP-Client";

	public const string FolderValueName = "Folder(P2)";

	public const string VersionFileName = "versioninfo.dat";

	public const string ClientExeName = "Client.exe";

	public const string SetupExeName = "ClientSetup.exe";

	[SupportedOSPlatform("windows")]
	public static RegistryInfo ReadRegistry()
	{
		try
		{
			using RegistryKey registryKey = RegistryKey.OpenBaseKey(RegistryHive.LocalMachine, RegistryView.Registry32);
			using RegistryKey registryKey2 = registryKey.OpenSubKey("SOFTWARE\\GamaSoft\\NP-Client", writable: false);
			if (registryKey2 == null)
			{
				return new RegistryInfo(null, null, null);
			}
			return new RegistryInfo(registryKey2.GetValue("Folder(P2)") as string, registryKey2.GetValue("Server") as string, registryKey2.GetValue("PatchServer") as string);
		}
		catch
		{
			return new RegistryInfo(null, null, null);
		}
	}

	public static string? FindClientDir(string? overrideDir, string launcherDir)
	{
		List<string> list = new List<string>();
		list.Add(overrideDir);
		if (OperatingSystem.IsWindows())
		{
			list.Add(ReadRegistry().Folder);
		}
		list.Add(Path.Combine(launcherDir, "Data"));
		list.Add(launcherDir);
		foreach (string item in list)
		{
			if (!string.IsNullOrWhiteSpace(item) && File.Exists(Path.Combine(item, "Client.exe")))
			{
				return Path.GetFullPath(item);
			}
		}
		return null;
	}

	public static uint ReadVersion(string clientDir)
	{
		try
		{
			Match match = Regex.Match(File.ReadAllText(Path.Combine(clientDir, "versioninfo.dat")), "\\d+");
			uint result;
			return (match.Success && uint.TryParse(match.Value, out result)) ? result : 0u;
		}
		catch
		{
			return 0u;
		}
	}

	public static void WriteVersion(string clientDir, uint version)
	{
		File.WriteAllText(Path.Combine(clientDir, "versioninfo.dat"), version + "l");
	}
}
