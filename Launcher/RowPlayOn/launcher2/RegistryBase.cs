using Microsoft.Win32;

namespace launcher2;

public abstract class RegistryBase<valueType>
{
	public string name;

	public RegistryValueKind valueKind;

	public valueType curValue;

	public abstract valueType regValue { get; set; }

	protected void PreInit(string _name, RegistryValueKind _valueKind)
	{
		name = _name;
		valueKind = _valueKind;
	}

	protected void SetDefault(valueType defaultValue)
	{
		regValue = defaultValue;
	}

	protected void PostInit()
	{
		InitCurValue();
	}

	public void InitCurValue()
	{
		curValue = regValue;
	}

	public void SaveCurValue()
	{
		regValue = curValue;
	}

	public abstract bool ChkNeedSave();
}
