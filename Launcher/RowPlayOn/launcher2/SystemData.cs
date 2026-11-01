using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Management;
using System.Text;

namespace launcher2;

public class SystemData
{
	public string osText;

	public string memoryText;

	public string cpuText;

	public string diskText;

	public string dirextXText;

	public string soundText;

	public int adapterCnt;

	public string defaultAdapter;

	public int resolutionWidth;

	public int resolutionHeight;

	public int depthBits;

	public int refreshRate;

	public List<Resolution> resList = new List<Resolution>();

	public SystemData()
	{
		StringBuilder stringBuilder = new StringBuilder(65536);
		CMain.Dll_GetSystemInfo(stringBuilder);
		string[] array = stringBuilder.ToString().Split('?');
		string[] array2 = array[0].Split('*');
		string[] array3 = array[1].Split('*');
		osText = array2[0];
		memoryText = GetMemoryString(double.Parse(array2[1]), double.Parse(array2[2]));
		cpuText = array2[3];
		diskText = GetHDDCapacity(returnAll: false);
		dirextXText = array2[4];
		soundText = GetSoundCardName();
		adapterCnt = int.Parse(array3[0]);
		defaultAdapter = array3[1];
		SettingList.AdtList = new string[adapterCnt];
		for (int i = 0; i < adapterCnt; i++)
		{
			SettingList.AdtList[i] = array3[i + 1];
		}
		resolutionWidth = int.Parse(array3[adapterCnt + 1]);
		resolutionHeight = int.Parse(array3[adapterCnt + 2]);
		depthBits = int.Parse(array3[adapterCnt + 3]);
		refreshRate = int.Parse(array3[adapterCnt + 4]);
		StringBuilder stringBuilder2 = new StringBuilder(65536);
		CMain.Dll_GetResolutions(stringBuilder2);
		string[] array4 = stringBuilder2.ToString().Split('?');
		foreach (string text in array4)
		{
			if (text.Length > 0)
			{
				resList.Add(new Resolution(text));
			}
		}
	}

	private string GetMemoryString(double totalRam, double availPage)
	{
		double num = Math.Round(totalRam / 1024.0 / 1024.0);
		PerformanceCounter performanceCounter;
		try
		{
			performanceCounter = new PerformanceCounter("Memory", "Available MBytes");
		}
		catch (Exception)
		{
			return "error";
		}
		double num2 = performanceCounter.NextValue();
		double num3 = Math.Round(availPage / 1024.0 / 1024.0);
		return num + " MB (" + num2 + " MB Free, " + num3 + " MB FreePage)";
	}

	private string GetHDDCapacity(bool returnAll)
	{
		if (returnAll)
		{
			DriveInfo[] drives = DriveInfo.GetDrives();
			List<int> list = new List<int>();
			for (int i = 0; i < drives.Length; i++)
			{
				if (drives[i].IsReady)
				{
					list.Add(i);
				}
			}
			List<long> list2 = new List<long>();
			List<double> list3 = new List<double>();
			List<string> list4 = new List<string>();
			if (list.Count == 1)
			{
				list2.Add(drives[list[0]].TotalFreeSpace);
				list3.Add((double)(list2[0] / 1024) / 1024.0 / 1024.0);
				list4.Add(Math.Round(list3[0], 2) + " GB");
			}
			else
			{
				for (int j = 0; j < list.Count; j++)
				{
					list2.Add(drives[list[j]].TotalFreeSpace);
					list3.Add((double)(list2[j] / 1024) / 1024.0 / 1024.0);
					list4.Add(drives[list[j]].Name[0].ToString() + ": " + Math.Round(list3[j], 2) + " GB");
				}
			}
			string text = "";
			for (int k = 0; k < list4.Count; k++)
			{
				text += list4[k];
				if (k != list4.Count - 1)
				{
					text += ", ";
				}
			}
			return text;
		}
		return Math.Round((double)(new DriveInfo(CMain.m_path[0].ToString()).TotalFreeSpace / 1024) / 1024.0 / 1024.0, 2).ToString("F") + " GB";
	}

	private string GetSoundCardName()
	{
		if (CMain.waveOutGetNumDevs() != 0)
		{
			ManagementObjectSearcher managementObjectSearcher = new ManagementObjectSearcher("Select ProductName,DeviceID from Win32_SoundDevice");
			string result = "Fail to find sound card";
			{
				foreach (ManagementObject item in managementObjectSearcher.Get())
				{
					string text = item.GetPropertyValue("ProductName").ToString();
					if (item.GetPropertyValue("DeviceID").ToString().IndexOf("ROOT") == -1 && text.IndexOf("장치") == -1)
					{
						result = text;
					}
				}
				return result;
			}
		}
		return "No sound card";
	}
}
