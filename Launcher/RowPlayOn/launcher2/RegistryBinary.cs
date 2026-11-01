using Microsoft.Win32;

namespace launcher2;

public class RegistryBinary : RegistryBase<byte[]>
{
	private int arrayLength;

	public override byte[] regValue
	{
		get
		{
			return CMain.Dll_GetRegistry_Bin(name, arrayLength);
		}
		set
		{
			CMain.Dll_SetRegistry_Bin(name, value);
		}
	}

	public RegistryBinary(string _name, byte[] _defaultValue, RegistryValueKind _valueKind = RegistryValueKind.Binary)
	{
		PreInit(_name, _valueKind);
		arrayLength = _defaultValue.Length;
		if (regValue == null)
		{
			SetDefault(_defaultValue);
		}
		PostInit();
	}

	public override bool ChkNeedSave()
	{
		for (int i = 0; i < regValue.Length; i++)
		{
			if (curValue[i] != regValue[i])
			{
				return true;
			}
		}
		return false;
	}
}
