using System;
using System.ComponentModel;
using System.IO;
using System.Runtime.InteropServices;
using System.Text;

namespace NorthpoleLauncher.Core;

public static class GameLauncher
{
	[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Unicode)]
	private struct STARTUPINFO
	{
		public int cb;

		public string? lpReserved;

		public string? lpDesktop;

		public string? lpTitle;

		public int dwX;

		public int dwY;

		public int dwXSize;

		public int dwYSize;

		public int dwXCountChars;

		public int dwYCountChars;

		public int dwFillAttribute;

		public int dwFlags;

		public short wShowWindow;

		public short cbReserved2;

		public nint lpReserved2;

		public nint hStdInput;

		public nint hStdOutput;

		public nint hStdError;
	}

	private struct PROCESS_INFORMATION
	{
		public nint hProcess;

		public nint hThread;

		public int dwProcessId;

		public int dwThreadId;
	}

	private const uint NORMAL_PRIORITY_CLASS = 32u;

	public static int Start(string clientDir, string serverIp, int group, string extraArgs = "")
	{
		string text = Path.Combine(clientDir, "Client.exe");
		if (!File.Exists(text))
		{
			throw new FileNotFoundException("Client.exe not found.", text);
		}
		string text2 = $"{serverIp} {group}";
		if (!string.IsNullOrWhiteSpace(extraArgs))
		{
			text2 = text2 + " " + extraArgs.Trim();
		}
		STARTUPINFO lpStartupInfo = new STARTUPINFO
		{
			cb = Marshal.SizeOf<STARTUPINFO>()
		};
		StringBuilder lpCommandLine = new StringBuilder(text2, text2.Length + 64);
		if (!CreateProcess(text, lpCommandLine, IntPtr.Zero, IntPtr.Zero, bInheritHandles: false, 32u, IntPtr.Zero, clientDir, ref lpStartupInfo, out var lpProcessInformation))
		{
			throw new Win32Exception(Marshal.GetLastWin32Error());
		}
		CloseHandle(lpProcessInformation.hThread);
		CloseHandle(lpProcessInformation.hProcess);
		return lpProcessInformation.dwProcessId;
	}

	[DllImport("kernel32.dll", CharSet = CharSet.Unicode, SetLastError = true)]
	private static extern bool CreateProcess(string lpApplicationName, StringBuilder lpCommandLine, nint lpProcessAttributes, nint lpThreadAttributes, bool bInheritHandles, uint dwCreationFlags, nint lpEnvironment, string lpCurrentDirectory, ref STARTUPINFO lpStartupInfo, out PROCESS_INFORMATION lpProcessInformation);

	[DllImport("kernel32.dll", SetLastError = true)]
	private static extern bool CloseHandle(nint hObject);
}
