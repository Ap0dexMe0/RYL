using System;
using System.Text;

namespace launcher2;

internal class CServerChk : CScene
{
	public enum EState
	{
		e_Init,
		e_Connect,
		e_End,
		e_Error0,
		e_Error1
	}

	private StringBuilder m_lastMsg = new StringBuilder(65536);

	public EState m_state;

	private string[] m_serverList = new string[10];

	public string m_errorPage;

	public override void Update()
	{
		if (m_state == EState.e_Init)
		{
			Init();
			m_state = EState.e_Connect;
		}
		else
		{
			if (m_state != EState.e_Connect)
			{
				return;
			}
			string[] serverList = m_serverList;
			foreach (string text in serverList)
			{
				if (text == null || text.Length < 1)
				{
					break;
				}
				CMain.Dll_GetUrlChk(new StringBuilder(text), m_lastMsg);
				string text2 = m_lastMsg.ToString();
				if (text2 == null || text2.Length <= 1)
				{
					continue;
				}
				string[] array = text2.Split('&');
				if (array.Length <= 2)
				{
					m_state = EState.e_Error0;
					return;
				}
				CMain.m_serverInfo.m_ip = array[0];
				CMain.m_serverInfo.m_program = array[1];
				if (array[2] == "true")
				{
					CMain.m_serverInfo.m_connect = true;
				}
				else
				{
					CMain.m_serverInfo.m_connect = false;
				}
				CMain.m_serverInfo.m_updatePassVersion = Convert.ToInt32(array[3]);
				m_state = EState.e_End;
				CMain.m_scene = CMain.EScene.e_Update;
				return;
			}
			m_state = EState.e_Error1;
		}
	}

	private void Init()
	{
		m_serverList[0] = CMain.Get_StringTable(0);
		m_serverList[1] = CMain.Get_StringTable(1);
		m_errorPage = CMain.Get_StringTable(10);
	}
}
