using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Sockets;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Interop;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Shapes;
using System.Windows.Threading;
using Microsoft.Win32;
using NorthpoleLauncher.Core;
using NorthpoleLauncher.Core.Net;
using NorthpoleLauncher.Core.Patch;

namespace NorthpoleLauncher;

public partial class MainWindow : Window, IComponentConnector, IStyleConnector
{
	private sealed record ServerChoice(GameServer Server, string Label)
	{
		public override string ToString()
		{
			return Label;
		}
	}

	private sealed class Flake
	{
		public Ellipse Shape;

		public double X;

		public double Y;

		public double Speed;

		public double Sway;

		public double Phase;

		public double Size;
	}

	private enum StatusKind
	{
		Working,
		Ok,
		Warn,
		Error
	}

	private static readonly HttpClient Http = new HttpClient(new HttpClientHandler
	{
		AutomaticDecompression = DecompressionMethods.All
	})
	{
		Timeout = TimeSpan.FromMinutes(30.0),
		DefaultRequestHeaders = { { "User-Agent", "RYL2NorthpoleLauncher/1.0" } }
	};

	private readonly DispatcherTimer _clock = new DispatcherTimer
	{
		Interval = TimeSpan.FromSeconds(1.0)
	};

	private LauncherConfig _cfg = new LauncherConfig();

	private string? _clientDir;

	private uint _localVersion;

	private ServerListResult? _serverList;

	private string? _patchUrl;

	private bool _busy;

	private BgmPlayer? _bgm;

	private TimeZoneInfo _serverTz = TimeZoneInfo.Utc;

	private const int WM_USER = 1024;

	private const int WM_RYL_LAUNCHER_SHUTDOWN = 31607;

	private readonly List<Flake> _flakes = new List<Flake>();

	private readonly Stopwatch _snowClock = new Stopwatch();

	private double _snowLast;

	public MainWindow()
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0006: Unknown result type (might be due to invalid IL or missing references)
		//IL_001f: Expected Obj, but got Unknown
		//IL_0020: Unknown result type (might be due to invalid IL or missing references)
		//IL_002a: Expected Obj, but got Unknown
		InitializeComponent();
		SourceInitialized += (object? _, EventArgs _) =>
		{
			HwndSource.FromHwnd(new WindowInteropHelper(this).Handle)?.AddHook(WndProc);
		};
	}

	private nint WndProc(nint hwnd, int msg, nint wParam, nint lParam, ref bool handled)
	{
		if (msg == 31607)
		{
			handled = true;
			((DispatcherObject)this).Dispatcher.BeginInvoke((Delegate)new Action(Close), Array.Empty<object>());
		}
		return IntPtr.Zero;
	}

	private void StartSnow(int count = 110)
	{
		Random shared = Random.Shared;
		double width = Width;
		double height = Height;
		for (int i = 0; i < count; i++)
		{
			Flake flake = new Flake
			{
				Size = 1.5 + shared.NextDouble() * 3.2,
				X = shared.NextDouble() * width,
				Y = shared.NextDouble() * height,
				Speed = 18.0 + shared.NextDouble() * 42.0,
				Sway = 6.0 + shared.NextDouble() * 18.0,
				Phase = shared.NextDouble() * Math.PI * 2.0
			};
			flake.Shape = new Ellipse
			{
				Width = flake.Size,
				Height = flake.Size,
				Fill = Brushes.White,
				Opacity = 0.25 + flake.Size / 4.7 * 0.6
			};
			SnowCanvas.Children.Add(flake.Shape);
			_flakes.Add(flake);
		}
		_snowClock.Start();
		_snowLast = 0.0;
		CompositionTarget.Rendering += Snow_Rendering;
	}

	private void Snow_Rendering(object? sender, EventArgs e)
	{
		double totalSeconds = _snowClock.Elapsed.TotalSeconds;
		double num = Math.Min(0.05, totalSeconds - _snowLast);
		_snowLast = totalSeconds;
		if (WindowState == WindowState.Minimized || num <= 0.0)
		{
			return;
		}
		double width = Width;
		double height = Height;
		foreach (Flake flake in _flakes)
		{
			flake.Y += flake.Speed * num;
			double length = flake.X + Math.Sin(totalSeconds * 0.8 + flake.Phase) * flake.Sway;
			if (flake.Y > height + 6.0)
			{
				flake.Y = -6.0;
				flake.X = Random.Shared.NextDouble() * width;
			}
			Canvas.SetLeft(flake.Shape, length);
			Canvas.SetTop(flake.Shape, flake.Y);
		}
	}

	private async void Window_Loaded(object sender, RoutedEventArgs e)
	{
		_cfg = LauncherConfig.LoadLocal(App.LauncherDir);
		ApplyTimeZone();
		_clock.Tick += (object? _, EventArgs _) =>
		{
			TickClock();
		};
		_clock.Start();
		TickClock();
		StartSnow();
		_clientDir = ClientLocator.FindClientDir(_cfg.ClientDir, App.LauncherDir);
		if (_clientDir == null)
		{
			SetStatus("Client not found. Click Start Game to locate your RYL2 Northpole folder.", StatusKind.Error);
			StartButton.IsEnabled = true;
		}
		else
		{
			_localVersion = ClientLocator.ReadVersion(_clientDir);
			VersionText.Text = $"v{_localVersion}";
			StartBgm();
		}
		LoadNewsAsync();
		bool fileCheck = Environment.GetCommandLineArgs().Skip(1).Any((string a) => a.Equals("--filecheck", StringComparison.OrdinalIgnoreCase));
		await ConnectAndPatchAsync(fileCheck);
	}

	private static bool IsDirectoryWritable(string dir)
	{
		try
		{
			using (File.Create(System.IO.Path.Combine(dir, $".np_write_test_{Environment.ProcessId}"), 1, FileOptions.DeleteOnClose))
			{
			}
			return true;
		}
		catch
		{
			return false;
		}
	}

	private bool EnsureWritableOrRelaunch(string arg, string reason)
	{
		if (_clientDir == null)
		{
			return false;
		}
		if (IsDirectoryWritable(_clientDir))
		{
			return true;
		}
		if (MessageBox.Show(this, reason + "\n\nThe client folder is protected by Windows:\n" + _clientDir + "\n\nRestart the launcher as administrator to continue?", "RYL2 Northpole", MessageBoxButton.YesNo, MessageBoxImage.Question) != MessageBoxResult.Yes)
		{
			SetStatus("Update skipped: no write access to the client folder.", StatusKind.Warn);
			return false;
		}
		try
		{
			StopBgm();
			Process.Start(new ProcessStartInfo(App.ExePath, arg)
			{
				UseShellExecute = true,
				Verb = "runas",
				WorkingDirectory = App.LauncherDir
			});
			Application.Current.Shutdown();
		}
		catch (Win32Exception)
		{
			SetStatus("Update skipped: administrator rights were not granted.", StatusKind.Warn);
		}
		return false;
	}

	private async Task LoadNewsAsync()
	{
		_ = 1;
		try
		{
			if (await _cfg.ApplyRemoteAsync(Http, CancellationToken.None))
			{
				ApplyTimeZone();
			}
			List<NewsItem> itemsSource = await NewsFeed.LoadAsync(Http, _cfg, CancellationToken.None);
			NewsList.ItemsSource = itemsSource;
			CheckLauncherUpdateAsync();
		}
		catch
		{
		}
	}

	private async Task CheckLauncherUpdateAsync()
	{
		LauncherUpdateInfo launcherUpdate = _cfg.LauncherUpdate;
		if (((launcherUpdate != null) ? launcherUpdate.Version : null) == null || launcherUpdate.Url == null || !Version.TryParse(launcherUpdate.Version, out Version remoteVer))
		{
			return;
		}
		Version version = typeof(MainWindow).Assembly.GetName().Version ?? new Version(0, 0);
		if (remoteVer <= version)
		{
			return;
		}
		try
		{
			string tmp = App.ExePath + ".new";
			using HttpResponseMessage resp = await Http.GetAsync(launcherUpdate.Url, HttpCompletionOption.ResponseHeadersRead);
			resp.EnsureSuccessStatusCode();
			await using (FileStream fs = File.Create(tmp))
			{
				await resp.Content.CopyToAsync(fs);
			}
			SetStatus($"Launcher update v{remoteVer} downloaded. It will apply the next time you open the launcher.", StatusKind.Ok);
		}
		catch
		{
		}
	}

	private async Task ConnectAndPatchAsync(bool fileCheck)
	{
		if (_busy)
		{
			return;
		}
		_busy = true;
		SetButtonsEnabled(enabled: false);
		try
		{
			if (_clientDir == null)
			{
				return;
			}
			SetStatus("Connecting to login server...", StatusKind.Working);
			Progress.Value = 0.0;
			ProgressText.Text = "";
			try
			{
				_serverList = await LoginServerClient.GetServerListAsync(_cfg.LoginServer, _cfg.LoginPort, _localVersion, TimeSpan.FromSeconds(8.0), default(CancellationToken));
				PopulateServers(_serverList);
				ServerDot.Fill = (Brush)FindResource("Green");
				SetStatus("Connected to login server.", StatusKind.Working);
			}
			catch (Exception ex)
			{
				_serverList = null;
				ServerCombo.Visibility = Visibility.Collapsed;
				ServerDot.Fill = (Brush)FindResource("Red");
				OnlineText.Text = "";
				SetStatus("Login server unreachable (" + Short(ex.Message) + "). You can still try to start the game.", StatusKind.Warn);
			}
			MainWindow mainWindow = this;
			string patchUrl;
			if (string.IsNullOrWhiteSpace(_cfg.PatchUrl))
			{
				ServerListResult? serverList = _serverList;
				patchUrl = ((!string.IsNullOrWhiteSpace((serverList != null) ? serverList.PatchUrl : null)) ? _serverList.PatchUrl : ClientLocator.ReadRegistry().PatchServer);
			}
			else
			{
				patchUrl = _cfg.PatchUrl;
			}
			mainWindow._patchUrl = patchUrl;
			bool flag = fileCheck || (_serverList != null && _serverList.ClientVersion > _localVersion);
			if (flag && !string.IsNullOrWhiteSpace(_patchUrl))
			{
				string text;
				if (!fileCheck)
				{
					DefaultInterpolatedStringHandler defaultInterpolatedStringHandler = new DefaultInterpolatedStringHandler(38, 2);
					defaultInterpolatedStringHandler.AppendLiteral("A client update is available (v");
					defaultInterpolatedStringHandler.AppendFormatted(_localVersion);
					defaultInterpolatedStringHandler.AppendLiteral(" -> v");
					ServerListResult? serverList2 = _serverList;
					defaultInterpolatedStringHandler.AppendFormatted((serverList2 != null) ? new uint?(serverList2.ClientVersion) : ((uint?)null));
					defaultInterpolatedStringHandler.AppendLiteral(").");
					text = defaultInterpolatedStringHandler.ToStringAndClear();
				}
				else
				{
					text = "File Check needs to repair files in the client folder.";
				}
				string reason = text;
				if (EnsureWritableOrRelaunch(fileCheck ? "--filecheck" : "--patch", reason))
				{
					await RunPatchAsync(fileCheck);
				}
			}
			else if (flag)
			{
				SetStatus("Client is out of date but no patch server is configured.", StatusKind.Warn);
			}
			else if (_serverList != null)
			{
				Progress.Value = 100.0;
				ProgressText.Text = "100% - Client is up to date";
				SetStatus("Ready to play.", StatusKind.Ok);
			}
		}
		finally
		{
			_busy = false;
			SetButtonsEnabled(enabled: true);
		}
	}

	private async Task RunPatchAsync(bool fileCheck)
	{
		if (_clientDir == null || string.IsNullOrWhiteSpace(_patchUrl))
		{
			return;
		}
		SetStatus(fileCheck ? "Checking client files..." : "Updating client...", StatusKind.Working);
		Patcher val = new Patcher(Http, _clientDir, _patchUrl);
		Progress<PatchProgress> progress = new Progress<PatchProgress>((PatchProgress p) =>
		{
			Progress.Value = p.OverallPercent;
			StatusText.Text = p.Status;
			if (p.FileName != null)
			{
				ProgressText.Text = $"{p.OverallPercent:0}% - File Progress: {p.FileName} - {p.BytesDone / 1024:N0} KB / {p.BytesTotal / 1024:N0} KB ({p.FilePercent:0}%)";
			}
			else
			{
				ProgressText.Text = $"{p.OverallPercent:0}%";
			}
		});
		PatchResult val2 = await val.RunAsync(_localVersion, fileCheck, (IProgress<PatchProgress>)progress, CancellationToken.None);
		if (val2.Success)
		{
			if (val2.NewVersion > _localVersion || (fileCheck && val2.NewVersion != _localVersion && val2.NewVersion != 0))
			{
				_localVersion = val2.NewVersion;
				ClientLocator.WriteVersion(_clientDir, _localVersion);
				VersionText.Text = $"v{_localVersion}";
			}
			Progress.Value = 100.0;
			ProgressText.Text = ((val2.FilesUpdated == 0) ? "100% - Client is up to date" : $"100% - {val2.FilesUpdated} file(s) updated");
			SetStatus("Ready to play.", StatusKind.Ok);
		}
		else
		{
			Progress.Value = 0.0;
			ProgressText.Text = "";
			SetStatus("Patch failed: " + Short(val2.Error ?? "unknown error") + ". You can still try to start the game.", StatusKind.Warn);
		}
	}

	private void PopulateServers(ServerListResult list)
	{
		List<ServerChoice> list2 = list.Servers.Select((GameServer s) => new ServerChoice(s, $"{_cfg.DisplayServerName(s.Group, s.Name)}  ·  {s.Online} online")).ToList();
		ServerCombo.ItemsSource = list2;
		ServerCombo.SelectedIndex = ((list2.Count <= 0) ? (-1) : 0);
		ServerCombo.Visibility = ((list2.Count <= 0) ? Visibility.Collapsed : Visibility.Visible);
		OnlineText.Text = ((list2.Count > 0) ? $"{list.Servers.Sum((GameServer s) => s.Online)} players online" : "");
	}

	private async void Start_Click(object sender, RoutedEventArgs e)
	{
		if (_busy)
		{
			return;
		}
		if (_clientDir == null)
		{
			OpenFolderDialog openFolderDialog = new OpenFolderDialog
			{
				Title = "Select your RYL2 Northpole client folder (the one containing Client.exe)"
			};
			if (openFolderDialog.ShowDialog(this) == true)
			{
				_clientDir = ClientLocator.FindClientDir(openFolderDialog.FolderName, App.LauncherDir);
				if (_clientDir == null)
				{
					MessageBox.Show(this, "Client.exe was not found in that folder.", "RYL2 Northpole", MessageBoxButton.OK, MessageBoxImage.Exclamation);
					return;
				}
				_cfg.ClientDir = _clientDir;
				_localVersion = ClientLocator.ReadVersion(_clientDir);
				VersionText.Text = $"v{_localVersion}";
				StartBgm();
				await ConnectAndPatchAsync(fileCheck: false);
			}
			return;
		}
		string text;
		int num;
		if (ServerCombo.SelectedItem is ServerChoice serverChoice)
		{
			text = serverChoice.Server.Address.ToString();
			num = serverChoice.Server.Group;
		}
		else
		{
			ServerListResult serverList = _serverList;
			if (serverList != null)
			{
				IReadOnlyList<GameServer> servers = serverList.Servers;
				if (servers != null && servers.Count > 0)
				{
					text = _serverList.Servers[0].Address.ToString();
					num = _serverList.Servers[0].Group;
					goto IL_02c3;
				}
			}
			try
			{
				text = ((await Dns.GetHostAddressesAsync(_cfg.LoginServer)).FirstOrDefault((IPAddress a) => a.AddressFamily == AddressFamily.InterNetwork) ?? throw new Exception("no IPv4 address")).ToString();
				num = _cfg.DefaultServerGroup;
			}
			catch (Exception ex)
			{
				MessageBox.Show(this, "Cannot resolve the game server: " + ex.Message, "RYL2 Northpole", MessageBoxButton.OK, MessageBoxImage.Hand);
				return;
			}
		}
		goto IL_02c3;
		IL_02c3:
		try
		{
			StopBgm();
			GameLauncher.Start(_clientDir, text, num, "");
			SetStatus("Game started. Have fun!", StatusKind.Ok);
			WindowState = WindowState.Minimized;
		}
		catch (Exception ex2)
		{
			MessageBox.Show(this, "Could not start Client.exe:\n" + ex2.Message, "RYL2 Northpole", MessageBoxButton.OK, MessageBoxImage.Hand);
		}
	}

	private async void FileCheck_Click(object sender, RoutedEventArgs e)
	{
		if (_busy || _clientDir == null || MessageBox.Show(this, "File Check verifies every client file against the patch server and re-downloads anything that is missing or corrupt.\n\nThis can take a few minutes. Continue?", "RYL2 Northpole - File Check", MessageBoxButton.YesNo, MessageBoxImage.Question) != MessageBoxResult.Yes)
		{
			return;
		}
		if (string.IsNullOrWhiteSpace(_patchUrl))
		{
			await ConnectAndPatchAsync(fileCheck: true);
		}
		else if (EnsureWritableOrRelaunch("--filecheck", "File Check needs to repair files in the client folder."))
		{
			_busy = true;
			SetButtonsEnabled(enabled: false);
			try
			{
				await RunPatchAsync(fileCheck: true);
			}
			finally
			{
				_busy = false;
				SetButtonsEnabled(enabled: true);
			}
		}
	}

	private void Setup_Click(object sender, RoutedEventArgs e)
	{
		if (_clientDir == null)
		{
			return;
		}
		string text = System.IO.Path.Combine(_clientDir, "ClientSetup.exe");
		if (!File.Exists(text))
		{
			MessageBox.Show(this, "ClientSetup.exe was not found in the client folder.", "RYL2 Northpole", MessageBoxButton.OK, MessageBoxImage.Exclamation);
			return;
		}
		try
		{
			Process.Start(new ProcessStartInfo(text)
			{
				WorkingDirectory = _clientDir,
				UseShellExecute = true
			});
		}
		catch (Exception ex)
		{
			MessageBox.Show(this, ex.Message, "RYL2 Northpole", MessageBoxButton.OK, MessageBoxImage.Hand);
		}
	}

	private void Sound_Click(object sender, RoutedEventArgs e)
	{
		if (_bgm == null)
		{
			StartBgm(force: true);
		}
		else if (_bgm.IsPlaying)
		{
			_bgm.Pause();
		}
		else
		{
			_bgm.Resume();
		}
		UpdateSoundIcon();
	}

	private void TabHome_Click(object sender, RoutedEventArgs e)
	{
	}

	private void TabLink_Click(object sender, RoutedEventArgs e)
	{
		if (sender is RadioButton radioButton)
		{
			string url;
			switch (radioButton.Tag as string)
			{
			case "CreateAccount":
				url = _cfg.Links.CreateAccount;
				goto IL_00c3;
			case "ItemMall":
				url = _cfg.Links.ItemMall;
				goto IL_00c3;
			case "Community":
				url = _cfg.Links.Community;
				goto IL_00c3;
			case "Support":
				url = _cfg.Links.Support;
				goto IL_00c3;
			case "Discord":
				url = _cfg.Links.Discord;
				goto IL_00c3;
			default:
				url = null;
				goto IL_00c3;
			case null:
				break;
				IL_00c3:
				OpenUrl(url);
				break;
			}
		}
		TabHome.IsChecked = true;
	}

	private void ReadMore_Click(object sender, MouseButtonEventArgs e)
	{
		if (sender is FrameworkElement { Tag: string tag })
		{
			OpenUrl(tag);
		}
		else
		{
			OpenUrl(_cfg.Links.Website);
		}
	}

	private static void OpenUrl(string? url)
	{
		if (string.IsNullOrWhiteSpace(url))
		{
			return;
		}
		try
		{
			Process.Start(new ProcessStartInfo(url)
			{
				UseShellExecute = true
			});
		}
		catch
		{
		}
	}

	private void Minimize_Click(object sender, RoutedEventArgs e)
	{
		WindowState = WindowState.Minimized;
	}

	private void Close_Click(object sender, RoutedEventArgs e)
	{
		Close();
	}

	private void Header_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
	{
		if (e.ButtonState == MouseButtonState.Pressed)
		{
			DragMove();
		}
	}

	private void Window_Closing(object sender, CancelEventArgs e)
	{
		_clock.Stop();
		CompositionTarget.Rendering -= Snow_Rendering;
		StopBgm();
	}

	private void StartBgm(bool force = false)
	{
		if (_bgm != null || _clientDir == null)
		{
			return;
		}
		if (!force && !_cfg.BgmOnByDefault)
		{
			UpdateSoundIcon();
			return;
		}
		string text = System.IO.Path.Combine(_clientDir, _cfg.BgmFile);
		if (!File.Exists(text))
		{
			UpdateSoundIcon();
			return;
		}
		try
		{
			_bgm = new BgmPlayer(text);
			_bgm.Play();
		}
		catch
		{
			_bgm = null;
		}
		UpdateSoundIcon();
	}

	private void StopBgm()
	{
		_bgm?.Dispose();
		_bgm = null;
		UpdateSoundIcon();
	}

	private void UpdateSoundIcon()
	{
		bool flag = _bgm?.IsPlaying ?? false;
		SoundIcon.Text = (flag ? "\ud83d\udd0a" : "\ud83d\udd07");
		SoundIcon.Opacity = (flag ? 1.0 : 0.6);
	}

	private void ApplyTimeZone()
	{
		try
		{
			_serverTz = TimeZoneInfo.FindSystemTimeZoneById(_cfg.ServerTimeZone);
		}
		catch
		{
			_serverTz = TimeZoneInfo.CreateCustomTimeZone("srv", TimeSpan.FromHours(1.0), "Server", "Server");
		}
	}

	private void TickClock()
	{
		DateTime utcNow = DateTime.UtcNow;
		DateTime dateTime = TimeZoneInfo.ConvertTimeFromUtc(utcNow, _serverTz);
		TimeSpan utcOffset = _serverTz.GetUtcOffset(utcNow);
		string value = ((utcOffset < TimeSpan.Zero) ? "-" : "+");
		ServerTzLabel.Text = ((utcOffset.Minutes == 0) ? $"Server (UTC{value}{Math.Abs(utcOffset.Hours)})" : $"Server (UTC{value}{Math.Abs(utcOffset.Hours)}:{Math.Abs(utcOffset.Minutes):00})");
		ServerTimeText.Text = dateTime.ToString("HH:mm:ss");
		LocalTimeText.Text = DateTime.Now.ToString("HH:mm:ss");
		int[] array = (from h in _cfg.WarHours ?? Array.Empty<int>()
			where h >= 0 && h < 24
			orderby h
			select h).ToArray();
		if (array.Length == 0)
		{
			NextWarText.Text = "--:--:--";
			return;
		}
		DateTime dateTime2 = DateTime.MaxValue;
		int[] array2 = array;
		foreach (int num2 in array2)
		{
			DateTime dateTime3 = dateTime.Date.AddHours(num2);
			if (dateTime3 <= dateTime)
			{
				dateTime3 = dateTime3.AddDays(1.0);
			}
			if (dateTime3 < dateTime2)
			{
				dateTime2 = dateTime3;
			}
		}
		TimeSpan timeSpan = dateTime2 - dateTime;
		NextWarText.Text = ((timeSpan.TotalHours >= 24.0) ? timeSpan.ToString("d\\d\\ hh\\:mm\\:ss") : timeSpan.ToString("hh\\:mm\\:ss"));
	}

	private void SetStatus(string text, StatusKind kind)
	{
		StatusText.Text = text;
		Ellipse statusDot = StatusDot;
		statusDot.Fill = (Brush)FindResource(kind switch
		{
			StatusKind.Ok => (object)"Green", 
			StatusKind.Warn => "Amber", 
			StatusKind.Error => "Red", 
			_ => "Amber", 
		});
	}

	private void SetButtonsEnabled(bool enabled)
	{
		FileCheckButton.IsEnabled = enabled;
		SetupButton.IsEnabled = enabled;
		StartButton.IsEnabled = enabled;
	}

	private static string Short(string s)
	{
		if (s.Length <= 90)
		{
			return s;
		}
		return s.Substring(0, 90) + "...";
	}
}
