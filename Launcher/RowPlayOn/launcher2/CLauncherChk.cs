using System.Text;

namespace launcher2;

internal class CLauncherChk : CScene
{
	public enum EState
	{
		e_Init,
		e_Restart,
		e_End,
		e_Error
	}

	private StringBuilder m_lastMsg = new StringBuilder(65536);

	public EState m_state;

	public override void Update()
	{
		if (m_state == EState.e_Init)
		{
			CMain.Dll_UpdateFileChange(m_lastMsg);
			string text = m_lastMsg.ToString();
			CMain.Dll_ClientChk(m_lastMsg);
			if (m_lastMsg.ToString().Length > 0)
			{
				m_state = EState.e_Error;
			}
			else if (text == null || text.Length == 0)
			{
				CMain.m_scene = CMain.EScene.e_GameReady;
				m_state = EState.e_End;
			}
			else
			{
				m_state = EState.e_Restart;
			}
		}
	}
}
