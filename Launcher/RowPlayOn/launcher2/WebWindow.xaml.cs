using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Interop;
using System.Windows.Markup;
using Microsoft.Web.WebView2.Core;
using Microsoft.Web.WebView2.Wpf;

namespace launcher2;

public partial class WebWindow : Window, IComponentConnector
{
	private WebView2 m_webview2;

	public void DisposeWebView()
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
			m_webview2 = null;
		}
	}

	public WebWindow()
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

	private void exitBtn_Click(object sender, RoutedEventArgs e)
	{
		Hide();
	}

	private void Grid_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
	{
		DragMove();
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
		//IL_0008: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Unknown result type (might be due to invalid IL or missing references)
		//IL_000f: Expected Obj, but got Unknown
		//IL_0014: Expected Obj, but got Unknown
		WebView2 val = new WebView2();
		WebView2 val2 = val;
		m_webview2 = val;
		WebView2 web = val2;
		((FrameworkElement)(object)web).Loaded += async (object sender, RoutedEventArgs e) =>
		{
			string text = Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) + "\\ROW";
			CoreWebView2Environment val3 = await CoreWebView2Environment.CreateAsync((string)null, text, (CoreWebView2EnvironmentOptions)null);
			await web.EnsureCoreWebView2Async(val3);
			web.Source = new Uri(CMain.Get_StringTable(66));
		};
		((FrameworkElement)(object)web).Name = "web";
		_parentElement.Children.Add((UIElement)(object)web);
	}

	public void CreateIEBrowser(DockPanel _parentElement)
	{
		WebBrowser webBrowser = new WebBrowser();
		webBrowser.Name = "web";
		webBrowser.Source = new Uri(CMain.Get_StringTable(66));
		_parentElement.Children.Add(webBrowser);
	}
}
