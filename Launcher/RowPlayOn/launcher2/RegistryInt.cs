using Microsoft.Win32;

namespace launcher2;

public class RegistryInt : RegistryBase<int>
{
	public override int regValue
	{
		get
		{
			return CMain.Dll_GetRegistry_Int(name);
		}
		set
		{
			CMain.Dll_SetRegistry_Int(name, value);
		}
	}

	public RegistryInt(string _name, int _defaultValue, RegistryValueKind _valueKind = RegistryValueKind.DWord)
	{
		PreInit(_name, _valueKind);
		if ((_name == "Width" || _name == "Height") && regValue == 0)
		{
			regValue = -1;
		}
		if (regValue == -1)
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
