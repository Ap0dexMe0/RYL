using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;

namespace launcher2;

public partial class SettingWindow : Window, IComponentConnector
{
	public bool m_isInit;

	public SystemData SysData;

	public RegistryString Reg_Adapter;

	public RegistryInt Reg_Width;

	public RegistryInt Reg_Height;

	public RegistryInt Reg_WindowMode;

	public RegistryInt Reg_Depth;

	public RegistryInt Reg_Refresh;

	public RegistryInt Reg_Language;

	public RegistryBinary Reg_MLSupport;

	public RegistryBinary Reg_RenderOption;

	public int[] CharSIdx = new int[2] { 64, 68 };

	public int HouseSIdx = 40;

	public int[] ViewRangeIdx = new int[2] { 36, 72 };

	public int[] TextureQIdx = new int[2] { 32, 76 };

	public int GrassIdx;

	public int ScreenEIdx = 80;

	public int WaterEIdx = 28;

	public int WeatherEIdx = 84;

	private Dictionary<ComboBox, int> RevisedIdx = new Dictionary<ComboBox, int>();

	private Dictionary<CheckBox, bool> RevisedChecked = new Dictionary<CheckBox, bool>();

	public SettingWindow()
	{
		InitializeComponent();
	}

	private void InitComboBox(ComboBox ctrl, Array list, object regValue, bool regValueIsIdx, bool defaultIsZero, SelectionChangedEventHandler SelectionChanged)
	{
		foreach (object item in list)
		{
			ctrl.Items.Add(item);
		}
		int selectedIndex = ctrl.SelectedIndex;
		if (ctrl.Items.Count == 1)
		{
			selectedIndex = 0;
		}
		else
		{
			selectedIndex = ((!regValueIsIdx) ? ctrl.Items.IndexOf(regValue) : ((int)regValue));
			if (selectedIndex == -1)
			{
				selectedIndex = ((!defaultIsZero) ? (ctrl.Items.Count - 1) : 0);
			}
		}
		ctrl.SelectedIndex = selectedIndex;
		RevisedIdx.Add(ctrl, selectedIndex);
		ctrl.SelectionChanged += SelectionChanged;
	}

	private void InitCheckBox(CheckBox ctrl, object regValue, RoutedEventHandler CheckedChanged)
	{
		bool value = (int)regValue == 1;
		ctrl.IsChecked = value;
		RevisedChecked.Add(ctrl, value);
		ctrl.Checked += CheckedChanged;
		ctrl.Unchecked += CheckedChanged;
	}

	public void Initialize()
	{
		SysData = new SystemData();
		Reg_Adapter = new RegistryString("Adapter", SysData.defaultAdapter);
		Reg_Width = new RegistryInt("Width", SysData.resolutionWidth);
		Reg_Height = new RegistryInt("Height", SysData.resolutionHeight);
		Reg_WindowMode = new RegistryInt("WindowMode", 0);
		Reg_Depth = new RegistryInt("Depth", SysData.depthBits);
		Reg_Refresh = new RegistryInt("Refresh", SysData.refreshRate);
		Reg_Language = new RegistryInt("Language", 0);
		Reg_MLSupport = new RegistryBinary("MLSupport", new byte[4] { 1, 0, 0, 0 });
		byte[] array = new byte[92];
		array[8] = 13;
		array[44] = 1;
		array[CharSIdx[0]] = 1;
		array[CharSIdx[1]] = 1;
		array[HouseSIdx] = 1;
		array[ViewRangeIdx[0]] = 7;
		array[ViewRangeIdx[1]] = 3;
		array[TextureQIdx[0]] = 1;
		array[TextureQIdx[1]] = 1;
		array[GrassIdx] = 1;
		array[ScreenEIdx] = 1;
		array[WaterEIdx] = 1;
		array[WeatherEIdx] = 1;
		Reg_RenderOption = new RegistryBinary("RenderOption", array);
		IsVisibleChanged += delegate
		{
			Left = CMain.m_mainWindow.Left + (CMain.m_mainWindow.Width - Width) / 2.0;
			Top = CMain.m_mainWindow.Top + (CMain.m_mainWindow.Height - Height) / 2.0;
		};
		Ctr_OperatingSystem.Text = SysData.osText;
		Ctr_Memory.Text = SysData.memoryText;
		Ctr_CPUSpeed.Text = SysData.cpuText;
		Ctr_HDDCapacity.Text = SysData.diskText;
		Ctr_DirectXVersion.Text = SysData.dirextXText;
		Ctr_SoundCard.Text = SysData.soundText;
		InitComboBox(Ctr_Adapter, SettingList.AdtList, Reg_Adapter.regValue, regValueIsIdx: false, defaultIsZero: true, delegate
		{
			Reg_Adapter.curValue = (string)Ctr_Adapter.SelectedItem;
		});
		string[] array2 = new string[SysData.resList.Count];
		for (int num = 0; num < SysData.resList.Count; num++)
		{
			array2[num] = SysData.resList[num].resString;
		}
		bool setRefresgRate = false;
		InitComboBox(Ctr_Resolution, array2, Reg_Width.regValue + " x " + Reg_Height.regValue, regValueIsIdx: false, defaultIsZero: false, delegate
		{
			string[] array3 = ((string)Ctr_Resolution.SelectedItem).Split('x');
			Reg_Width.curValue = int.Parse(array3[0]);
			Reg_Height.curValue = int.Parse(array3[1]);
			setRefresgRate = true;
			Ctr_RefreshRate.Items.Clear();
			foreach (int item in SysData.resList[Ctr_Resolution.SelectedIndex].refreshRate)
			{
				Ctr_RefreshRate.Items.Add(item + " Hz");
			}
			if (Ctr_RefreshRate.SelectedIndex >= Ctr_RefreshRate.Items.Count || Ctr_RefreshRate.SelectedIndex == -1)
			{
				Ctr_RefreshRate.SelectedIndex = 0;
			}
			setRefresgRate = false;
		});
		if (SysData.resList.Count <= 0)
		{
			MessageBox.Show("directX or device fail");
			return;
		}
		InitCheckBox(Ctr_WindowMode, Reg_WindowMode.regValue, delegate
		{
			Reg_WindowMode.curValue = ((Ctr_WindowMode.IsChecked == true) ? 1 : 0);
		});
		InitComboBox(Ctr_DepthBits, SettingList.DptList, Reg_Depth.regValue, regValueIsIdx: false, defaultIsZero: true, delegate
		{
			Reg_Depth.curValue = (int)Ctr_DepthBits.SelectedItem;
		});
		InitComboBox(Ctr_RefreshRate, SysData.resList[Ctr_Resolution.SelectedIndex].refreshRate.ToArray(), Reg_Refresh.regValue + " Hz", regValueIsIdx: false, defaultIsZero: true, delegate
		{
			if (!setRefresgRate)
			{
				string s = Ctr_RefreshRate.SelectedItem.ToString().Split(' ')[0];
				Reg_Refresh.curValue = int.Parse(s);
			}
		});
		InitComboBox(Ctr_Language, SettingList.LangList, Reg_Language.regValue, regValueIsIdx: true, defaultIsZero: false, delegate
		{
			Reg_Language.curValue = Ctr_Language.SelectedIndex;
		});
		InitCheckBox(Ctr_MLSupport, (int)Reg_MLSupport.regValue[0], delegate
		{
			Reg_MLSupport.curValue[0] = ((Ctr_MLSupport.IsChecked == true) ? ((byte)1) : ((byte)0));
		});
		InitComboBox(Ctr_CharShadow, SettingList.NYList, (int)Reg_RenderOption.regValue[CharSIdx[0]], regValueIsIdx: true, defaultIsZero: false, delegate
		{
			int selectedIndex = Ctr_CharShadow.SelectedIndex;
			Reg_RenderOption.curValue[CharSIdx[0]] = (byte)selectedIndex;
			Reg_RenderOption.curValue[CharSIdx[1]] = (byte)selectedIndex;
		});
		InitComboBox(Ctr_HouseShadow, SettingList.NYList, (int)Reg_RenderOption.regValue[HouseSIdx], regValueIsIdx: true, defaultIsZero: false, delegate
		{
			int selectedIndex = Ctr_HouseShadow.SelectedIndex;
			Reg_RenderOption.curValue[HouseSIdx] = (byte)selectedIndex;
		});
		InitComboBox(Ctr_ViewRange, SettingList.LMHList, Reg_RenderOption.regValue[ViewRangeIdx[1]] - 1, regValueIsIdx: true, defaultIsZero: false, delegate
		{
			int selectedIndex = Ctr_ViewRange.SelectedIndex;
			Reg_RenderOption.curValue[ViewRangeIdx[0]] = (byte)(selectedIndex * 2 + 3);
			Reg_RenderOption.curValue[ViewRangeIdx[1]] = (byte)(selectedIndex + 1);
		});
		InitComboBox(Ctr_TextureQuality, SettingList.LHList, (int)Reg_RenderOption.regValue[TextureQIdx[0]], regValueIsIdx: true, defaultIsZero: false, delegate
		{
			int selectedIndex = Ctr_TextureQuality.SelectedIndex;
			Reg_RenderOption.curValue[TextureQIdx[0]] = (byte)selectedIndex;
			Reg_RenderOption.curValue[TextureQIdx[1]] = (byte)selectedIndex;
		});
		InitComboBox(Ctr_Grass, SettingList.NYList, (int)Reg_RenderOption.regValue[GrassIdx], regValueIsIdx: true, defaultIsZero: false, delegate
		{
			int selectedIndex = Ctr_Grass.SelectedIndex;
			Reg_RenderOption.curValue[GrassIdx] = (byte)selectedIndex;
		});
		InitComboBox(Ctr_ScreenEffect, SettingList.NYList, (int)Reg_RenderOption.regValue[ScreenEIdx], regValueIsIdx: true, defaultIsZero: false, delegate
		{
			int selectedIndex = Ctr_ScreenEffect.SelectedIndex;
			Reg_RenderOption.curValue[ScreenEIdx] = (byte)selectedIndex;
		});
		InitComboBox(Ctr_WaterEffect, SettingList.NYList, (int)Reg_RenderOption.regValue[WaterEIdx], regValueIsIdx: true, defaultIsZero: false, delegate
		{
			int selectedIndex = Ctr_WaterEffect.SelectedIndex;
			Reg_RenderOption.curValue[WaterEIdx] = (byte)selectedIndex;
		});
		InitComboBox(Ctr_WeatherEffect, SettingList.NYList, (int)Reg_RenderOption.regValue[WeatherEIdx], regValueIsIdx: true, defaultIsZero: false, delegate
		{
			int selectedIndex = Ctr_WeatherEffect.SelectedIndex;
			Reg_RenderOption.curValue[WeatherEIdx] = (byte)selectedIndex;
		});
		TabControl.SelectedIndex = 1;
		textBox.Text = "";
		m_isInit = true;
	}

	public void saveAll()
	{
		Reg_Adapter.SaveCurValue();
		RevisedIdx[Ctr_Adapter] = Ctr_Adapter.SelectedIndex;
		Reg_Width.SaveCurValue();
		Reg_Height.SaveCurValue();
		RevisedIdx[Ctr_Resolution] = Ctr_Resolution.SelectedIndex;
		RevisedChecked[Ctr_WindowMode] = Ctr_WindowMode.IsChecked == true;
		Reg_WindowMode.SaveCurValue();
		Reg_Depth.SaveCurValue();
		RevisedIdx[Ctr_DepthBits] = Ctr_DepthBits.SelectedIndex;
		Reg_Refresh.SaveCurValue();
		RevisedIdx[Ctr_RefreshRate] = Ctr_RefreshRate.SelectedIndex;
		Reg_Language.SaveCurValue();
		RevisedIdx[Ctr_Language] = Ctr_Language.SelectedIndex;
		Reg_MLSupport.SaveCurValue();
		RevisedChecked[Ctr_MLSupport] = Ctr_MLSupport.IsChecked == true;
		Reg_RenderOption.SaveCurValue();
		RevisedIdx[Ctr_CharShadow] = Ctr_CharShadow.SelectedIndex;
		RevisedIdx[Ctr_HouseShadow] = Ctr_HouseShadow.SelectedIndex;
		RevisedIdx[Ctr_ViewRange] = Ctr_ViewRange.SelectedIndex;
		RevisedIdx[Ctr_TextureQuality] = Ctr_TextureQuality.SelectedIndex;
		RevisedIdx[Ctr_Grass] = Ctr_Grass.SelectedIndex;
		RevisedIdx[Ctr_ScreenEffect] = Ctr_ScreenEffect.SelectedIndex;
		RevisedIdx[Ctr_WaterEffect] = Ctr_WaterEffect.SelectedIndex;
		RevisedIdx[Ctr_WeatherEffect] = Ctr_WeatherEffect.SelectedIndex;
	}

	private void resetAll()
	{
		Reg_Adapter.InitCurValue();
		Ctr_Adapter.SelectedIndex = RevisedIdx[Ctr_Adapter];
		Reg_Width.InitCurValue();
		Reg_Height.InitCurValue();
		Ctr_Resolution.SelectedIndex = RevisedIdx[Ctr_Resolution];
		Reg_WindowMode.InitCurValue();
		Ctr_WindowMode.IsChecked = RevisedChecked[Ctr_WindowMode];
		Reg_Depth.InitCurValue();
		Ctr_DepthBits.SelectedIndex = RevisedIdx[Ctr_DepthBits];
		Reg_Refresh.InitCurValue();
		Ctr_RefreshRate.SelectedIndex = RevisedIdx[Ctr_RefreshRate];
		Reg_Language.InitCurValue();
		Ctr_Language.SelectedIndex = RevisedIdx[Ctr_Language];
		Reg_MLSupport.InitCurValue();
		Ctr_MLSupport.IsChecked = RevisedChecked[Ctr_MLSupport];
		Reg_RenderOption.InitCurValue();
		Ctr_CharShadow.SelectedIndex = RevisedIdx[Ctr_CharShadow];
		Ctr_HouseShadow.SelectedIndex = RevisedIdx[Ctr_HouseShadow];
		Ctr_ViewRange.SelectedIndex = RevisedIdx[Ctr_ViewRange];
		Ctr_TextureQuality.SelectedIndex = RevisedIdx[Ctr_TextureQuality];
		Ctr_Grass.SelectedIndex = RevisedIdx[Ctr_Grass];
		Ctr_ScreenEffect.SelectedIndex = RevisedIdx[Ctr_ScreenEffect];
		Ctr_WaterEffect.SelectedIndex = RevisedIdx[Ctr_WaterEffect];
		Ctr_WeatherEffect.SelectedIndex = RevisedIdx[Ctr_WeatherEffect];
	}

	public void okBtn_Click(object sender, RoutedEventArgs e)
	{
		saveAll();
		Hide();
	}

	public void cancelBtn_Click(object sender, RoutedEventArgs e)
	{
		resetAll();
		Hide();
	}

	private void textGrid_MouseLeave(object sender, MouseEventArgs e)
	{
		textBox.Text = "";
	}

	private void textGrid_MouseEnter(object sender, MouseEventArgs e)
	{
		textBox.Text = ((Grid)sender).Tag.ToString();
	}

	private void Grid_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
	{
		DragMove();
	}

	public bool AskSaveSetting(object sender, RoutedEventArgs e)
	{
		if (!IsVisible)
		{
			return false;
		}
		MessageBoxResult messageBoxResult = MessageBoxResult.None;
		if (Reg_Adapter.ChkNeedSave() || Reg_Width.ChkNeedSave() || Reg_Height.ChkNeedSave() || Reg_WindowMode.ChkNeedSave() || Reg_Depth.ChkNeedSave() || Reg_Refresh.ChkNeedSave() || Reg_Language.ChkNeedSave() || Reg_MLSupport.ChkNeedSave() || Reg_RenderOption.ChkNeedSave())
		{
			messageBoxResult = MessageBox.Show(this, "Do you want to save your settings edits?", "Need save setting.", MessageBoxButton.YesNoCancel, MessageBoxImage.Question);
		}
		switch (messageBoxResult)
		{
		case MessageBoxResult.Yes:
			okBtn_Click(sender, e);
			return false;
		case MessageBoxResult.No:
			cancelBtn_Click(sender, e);
			return false;
		case MessageBoxResult.Cancel:
			return true;
		default:
			return false;
		}
	}
}
