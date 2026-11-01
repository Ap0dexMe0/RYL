using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Interop;
using System.Windows.Markup;
using System.Windows.Media;
using Microsoft.Web.WebView2.Core;
using Microsoft.Web.WebView2.Wpf;

namespace launcher2;

public partial class MainWindow : Window, IComponentConnector
{
	private WebView2 m_webview2;

	private WebBrowser m_ie;

	private bool _isGameStarting;

	public MainWindow()
	{
		InitializeComponent();
		if (IsEdgeAvailable())
		{
			CreateEdgeBrowser(frame);
		}
		else
		{
			CreateIEBrowser(frame);
		}
	}

	private void Window_Loaded(object sender, RoutedEventArgs e)
	{
	}

	private void ShowLoginOverlay()
	{
		frame.Visibility = Visibility.Collapsed;
		LoginWindow loginOverlay = new LoginWindow();
		loginOverlay.Margin = new Thickness(0.0, 30.0, 0.0, 0.0);
		Grid.SetRowSpan(loginOverlay, int.MaxValue);
		Grid.SetColumnSpan(loginOverlay, int.MaxValue);
		Panel.SetZIndex(loginOverlay, 9999);
		loginOverlay.LoginCompleted += (bool success) =>
		{
			RootGrid.Children.Remove(loginOverlay);
			if (!success)
			{
				Close();
			}
			else
			{
				frame.Visibility = Visibility.Visible;
			}
		};
		RootGrid.Children.Add(loginOverlay);
	}

	public bool IsEdgeAvailable()
	{
		string text = null;
		try
		{
			text = CoreWebView2Environment.GetAvailableBrowserVersionString((string)null, (CoreWebView2EnvironmentOptions)null);
		}
		catch (WebView2RuntimeNotFoundException)
		{
			return false;
		}
		if (text != null)
		{
			return CoreWebView2Environment.CompareBrowserVersions(text, "100.0.0.0") >= 0;
		}
		return false;
	}

	public void CreateEdgeBrowser(DockPanel _parentElement)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_000b: Expected Obj, but got Unknown
		m_webview2 = new WebView2();
		((FrameworkElement)(object)m_webview2).Loaded += async (object sender, RoutedEventArgs e) =>
		{
			string text = Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) + "\\ROW";
			CoreWebView2Environment val = await CoreWebView2Environment.CreateAsync((string)null, text, (CoreWebView2EnvironmentOptions)null);
			await m_webview2.EnsureCoreWebView2Async(val);
			string text2 = CMain.Get_StringTable(61);
			if (Uri.TryCreate(text2, UriKind.Absolute, out var result))
			{
				if (m_webview2 != null && m_webview2.CoreWebView2 != null)
				{
					m_webview2.Source = result;
				}
			}
			else
			{
				Console.WriteLine("잘못된 URI 형식: " + text2);
			}
		};
		((FrameworkElement)(object)m_webview2).Name = "web";
		_parentElement.Children.Add((UIElement)(object)m_webview2);
	}

	public void CreateIEBrowser(DockPanel _parentElement)
	{
		m_ie = new WebBrowser();
		m_ie.Name = "web";
		m_ie.Source = new Uri(CMain.Get_StringTable(61));
		_parentElement.Children.Add(m_ie);
	}

	public void Navigate(string url)
	{
		if (string.IsNullOrEmpty(url))
		{
			return;
		}
		try
		{
			if (m_webview2 != null)
			{
				if (m_webview2.CoreWebView2 != null)
				{
					m_webview2.CoreWebView2.Navigate(url);
				}
			}
			else if (m_ie != null)
			{
				m_ie.Navigate(new Uri(url));
			}
		}
		catch
		{
		}
	}

	public void Initialize()
	{
		try
		{
			Left = SystemParameters.WorkArea.Left + (SystemParameters.WorkArea.Width - Width) / 2.0;
			Top = SystemParameters.WorkArea.Top + (SystemParameters.WorkArea.Height - Height) / 2.0;
		}
		catch (Exception ex)
		{
			MessageBox.Show(ex.ToString());
			throw new NotImplementedException();
		}
	}

	private void startBtn_Click(object sender, RoutedEventArgs e)
	{
		if (_isGameStarting)
		{
			return;
		}
		try
		{
			CMain.m_gameReady.GameStart();
		}
		finally
		{
			_isGameStarting = false;
		}
	}

	private void settingBtn_Click(object sender, RoutedEventArgs e)
	{
		if (CMain.m_settingWindow.m_isInit)
		{
			CMain.m_settingWindow.Show();
		}
		else
		{
			MessageBox.Show("Please wait until the setting window is ready.", "Setting Window is not ready", MessageBoxButton.OK, MessageBoxImage.Asterisk);
		}
	}

	private void joinBtn_Click(object sender, RoutedEventArgs e)
	{
		Process.Start(CMain.Get_StringTable(66));
	}

	private void minBtn_Click(object sender, RoutedEventArgs e)
	{
		WindowState = WindowState.Minimized;
	}

	public void exitBtn_Click(object sender, RoutedEventArgs e)
	{
		if (!CMain.m_settingWindow.AskSaveSetting(sender, e))
		{
			Close();
		}
	}

	private void Grid_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
	{
		DragMove();
	}

	private void progressBar_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
	{
		double num = progressBar.Value / progressBar.Maximum;
		int num2 = (int)Math.Round(num * 100.0);
		progressPercent.Text = num2 + "%";
		double num3 = num * progressLog.RenderSize.Width * 2.0;
		if (num3 < 0.0)
		{
			num3 = 0.0;
		}
		((LinearGradientBrush)progressLog.Foreground).EndPoint = new Point(num3, progressLog.RenderSize.Height / 2.0);
	}

	private void web_LoadCompleted(object sender)
	{
	}

	private void Window_Closing(object sender, CancelEventArgs e)
	{
		if (m_webview2 != null)
		{
			try
			{
				((HwndHost)(object)m_webview2).Dispose();
			}
			catch (Exception)
			{
			}
		}
		CMain.m_webWindow.DisposeWebView();
		Application.Current.Shutdown();
	}
}
