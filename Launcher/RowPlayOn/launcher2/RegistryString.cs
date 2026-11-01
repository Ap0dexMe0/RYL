using Microsoft.Win32;

namespace launcher2;

public class RegistryString : RegistryBase<string>
{
	public override string regValue
	{
		get
		{
			return CMain.Dll_GetRegistry_Str(name);
		}
		set
		{
			CMain.Dll_SetRegistry_Str(name, value);
		}
	}

	public RegistryString(string _name, string _defaultValue, RegistryValueKind _valueKind = RegistryValueKind.String)
	{
		PreInit(_name, _valueKind);
		if (regValue == "")
		{
			SetDefault(_defaultValue);
		}
		PostInit();
	}

	public override bool ChkNeedSave()
	{
		return regValue != curValue;
	}
}
