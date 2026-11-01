using System;
using System.Text;
using System.Threading;
using System.Timers;
using System.Windows;

namespace launcher2;

internal class CGameReady : CScene
{
	public enum EState
	{
		e_Init,
		e_SendInfo
	}

	private EState m_state;

	private System.Timers.Timer m_sendInfoCallTimer = new System.Timers.Timer();

	public void GameStart()
	{
		if (m_state == EState.e_SendInfo)
		{
			CMain.m_update.GetSvnVersion();
			CMain.m_update.GetTopVersion();
			if (CMain.m_update.svn_version != CMain.m_update.top_version)
			{
				MessageBox.Show(CMain.Get_StringTable(21), "Launcher Updated", MessageBoxButton.OK, MessageBoxImage.Asterisk);
				CMain.m_mainWindow.exitBtn_Click(this, null);
			}
			else if (CMain.m_serverInfo.m_ip != "" && CMain.m_serverInfo.m_program != "" && CMain.m_serverInfo.m_connect)
			{
				string text = CMain.Get_StringTable(73);
				if (text != null && text.Length >= 1)
				{
					CMain.Dll_GetUrlChk(new StringBuilder(text), new StringBuilder());
				}
				Thread.Sleep(2000);
				CMain.STARTUPINFO lpStartupInfo = default;
				CMain.PROCESS_INFORMATION lpProcessInformation = default;
				CMain.CreateProcess(CMain.m_path + CMain.m_serverInfo.m_program, CMain.m_serverInfo.m_ip + " 1", IntPtr.Zero, IntPtr.Zero, bInheritHandles: false, 32u, IntPtr.Zero, null, ref lpStartupInfo, out lpProcessInformation);
			}
			else
			{
				MessageBox.Show(CMain.Get_StringTable(22) + Singleton<CMain>.Inst.m_errorCode, "ERROR", MessageBoxButton.OK, MessageBoxImage.Hand);
			}
		}
		else if (Singleton<CMain>.Inst.m_errorCode == -1)
		{
			MessageBox.Show(CMain.Get_StringTable(23), "Wait for ready.", MessageBoxButton.OK, MessageBoxImage.Exclamation);
		}
		else
		{
			MessageBox.Show(CMain.Get_StringTable(22) + Singleton<CMain>.Inst.m_errorCode, "ERROR", MessageBoxButton.OK, MessageBoxImage.Hand);
		}
	}

	public override void Update()
	{
		if (m_state == EState.e_Init)
		{
			CMain.m_update.Dispatcher.Invoke(CMain.m_update.ChangeProgressLogText, " Checking registry");
			if (!m_sendInfoCallTimer.Enabled)
			{
				SendInfo(this, null);
				m_sendInfoCallTimer.Interval = 600000.0;
				m_sendInfoCallTimer.Elapsed += SendInfo;
				m_sendInfoCallTimer.Start();
			}
			SetRegistry();
			m_state = EState.e_SendInfo;
			CMain.m_update.Dispatcher.Invoke(CMain.m_update.ChangeProgressLogText, " Ready to start ROW");
		}
		else
		{
			Thread.Sleep(1000);
		}
	}

	private void SetRegistry()
	{
		StringBuilder FirstLaunch = new StringBuilder(65536);
		CMain.Dll_InitRegistry(FirstLaunch);
		CMain.m_settingWindow.Dispatcher.Invoke(() =>
		{
			CMain.m_settingWindow.Initialize();
			if (FirstLaunch.ToString() == "firstLaunch")
			{
				CMain.m_settingWindow.Show();
			}
		});
	}

	private void SendInfo(object sender, ElapsedEventArgs e)
	{
	}
}
