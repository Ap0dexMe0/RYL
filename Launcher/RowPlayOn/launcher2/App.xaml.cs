using System;
using System.Windows;
using System.Windows.Forms;
using System.Windows.Threading;

namespace launcher2;

public partial class App : System.Windows.Application
{
	private App()
	{
		AppDomain.CurrentDomain.UnhandledException += OnUnhandledException;
		DispatcherUnhandledException += OnDispatcherUnhandledException;
		CFirewallTest.Add(System.Windows.Forms.Application.ProductName, CFirewallTest.Protocol.TCPUDP, CFirewallTest.Direction.INBOUND, CFirewallTest.Action.ALLOW);
		Singleton<CMain>.Inst.Init();
	}

	private void OnDispatcherUnhandledException(object sender, DispatcherUnhandledExceptionEventArgs e)
	{
		e.Handled = true;
		System.Windows.MessageBox.Show(e.Exception.Message, "ERROR", MessageBoxButton.OK, MessageBoxImage.Hand);
		Environment.Exit(1);
	}

	private void OnUnhandledException(object sender, UnhandledExceptionEventArgs e)
	{
		System.Windows.MessageBox.Show((e.ExceptionObject as Exception)?.Message ?? e.ExceptionObject.ToString(), "ERROR", MessageBoxButton.OK, MessageBoxImage.Hand);
		Environment.Exit(1);
	}
}
