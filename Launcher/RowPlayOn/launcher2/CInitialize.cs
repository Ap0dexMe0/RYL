namespace launcher2;

internal class CInitialize : CScene
{
	public enum EState
	{
		e_Init,
		e_End,
		e_Error
	}

	public EState m_state;

	public override void Update()
	{
		CMain.Dll_ChkUpdateDummyFile();
		if (CMain.Dll_CheckDuplicateExecution())
		{
			m_state = EState.e_Error;
		}
		else
		{
			m_state = EState.e_End;
		}
		CMain.m_scene = CMain.EScene.e_ServerChk;
	}
}
