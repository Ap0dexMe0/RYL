using System;
using System.Diagnostics;
using System.IO;
using System.Runtime.CompilerServices;
using System.Windows;
using System.Windows.Threading;

namespace NorthpoleLauncher;

public partial class App : Application
{
	[Serializable]
	[CompilerGenerated]
	private sealed class _003C_003Ec
	{
		public static readonly _003C_003Ec _003C_003E9 = new _003C_003Ec();

		public static DispatcherUnhandledExceptionEventHandler _003C_003E9__4_0;

		internal void _003COnStartup_003Eb__4_0(object _, DispatcherUnhandledExceptionEventArgs args)
		{
			MessageBox.Show(args.Exception.Message, "RYL2 Northpole Launcher", MessageBoxButton.OK, MessageBoxImage.Hand);
			args.Handled = true;
		}
	}

	public static string LauncherDir => AppContext.BaseDirectory;

	public static string ExePath => Environment.ProcessPath ?? Path.Combine(LauncherDir, "NorthpoleLauncher.exe");

	protected override void OnStartup(StartupEventArgs e)
	{
		//IL_00c4: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c9: Unknown result type (might be due to invalid IL or missing references)
		//IL_00cf: Expected Obj, but got Unknown
		string text = ExePath + ".new";
		if (File.Exists(text))
		{
			try
			{
				Process.Start(new ProcessStartInfo("cmd.exe", $"/c ping 127.0.0.1 -n 3 >nul & move /y \"{text}\" \"{ExePath}\" & start \"\" \"{ExePath}\"")
				{
					CreateNoWindow = true,
					UseShellExecute = false,
					WorkingDirectory = LauncherDir
				});
				Shutdown();
				return;
			}
			catch
			{
			}
		}
		DispatcherUnhandledExceptionEventHandler val = _003C_003Ec._003C_003E9__4_0;
		if (val == null)
		{
			DispatcherUnhandledExceptionEventHandler val2 = (object _, DispatcherUnhandledExceptionEventArgs args) =>
			{
				MessageBox.Show(args.Exception.Message, "RYL2 Northpole Launcher", MessageBoxButton.OK, MessageBoxImage.Hand);
				args.Handled = true;
			};
			_003C_003Ec._003C_003E9__4_0 = val2;
			val = val2;
		}
		DispatcherUnhandledException += val;
		base.OnStartup(e);
	}
}
