using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Management;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading;
using System.Windows;
using Microsoft.Win32;

namespace launcher2;

internal class CMain : Singleton<CMain>
{
	public enum ELan
	{
		e_Gl,
		e_Tw
	}

	public class CServerConnectInfo
	{
		public string m_ip;

		public string m_program;

		public bool m_connect;

		public int m_updatePassVersion;
	}

	public enum EScene
	{
		e_Init,
		e_ServerChk,
		e_Update,
		e_LauncherChk,
		e_GameReady
	}

	public struct PROCESS_INFORMATION
	{
		public IntPtr hProcess;

		public IntPtr hThread;

		public uint dwProcessId;

		public uint dwThreadId;
	}

	public struct STARTUPINFO
	{
		public uint cb;

		public string lpReserved;

		public string lpDesktop;

		public string lpTitle;

		public uint dwX;

		public uint dwY;

		public uint dwXSize;

		public uint dwYSize;

		public uint dwXCountChars;

		public uint dwYCountChars;

		public uint dwFillAttribute;

		public uint dwFlags;

		public short wShowWindow;

		public short cbReserved2;

		public IntPtr lpReserved2;

		public IntPtr hStdInput;

		public IntPtr hStdOutput;

		public IntPtr hStdError;
	}

	public struct DISPLAY_DEVICE
	{
		public int cb;

		[MarshalAs(UnmanagedType.ByValTStr, SizeConst = 32)]
		public string DeviceName;

		[MarshalAs(UnmanagedType.ByValTStr, SizeConst = 128)]
		public string DeviceString;

		public int StateFlags;

		[MarshalAs(UnmanagedType.ByValTStr, SizeConst = 128)]
		public string DeviceID;

		[MarshalAs(UnmanagedType.ByValTStr, SizeConst = 128)]
		public string DeviceKey;
	}

	internal static class NativeMethods
	{
		[DllImport("user32.dll", CharSet = CharSet.Ansi)]
		public static extern bool EnumDisplaySettings(string lpszDeviceName, int iModeNum, ref DEVMODE lpDevMode);

		[DllImport("user32.dll", CharSet = CharSet.Ansi)]
		public static extern bool EnumDisplayDevices(string lpDevice, uint iDevNum, ref DISPLAY_DEVICE lpDisplayDevice, uint dwFlags);
	}

	public class DisplayDeviceInfo
	{
		public string Description { get; set; }

		public int Width { get; set; }

		public int Height { get; set; }

		public int Bpp { get; set; }

		public int RefreshRate { get; set; }
	}

	internal struct DEVMODE
	{
		private const int CCHDEVICENAME = 32;

		private const int CCHFORMNAME = 32;

		[MarshalAs(UnmanagedType.ByValTStr, SizeConst = 32)]
		public string dmDeviceName;

		public ushort dmSpecVersion;

		public ushort dmDriverVersion;

		public ushort dmSize;

		public ushort dmDriverExtra;

		public uint dmFields;

		public int dmPositionX;

		public int dmPositionY;

		public uint dmDisplayOrientation;

		public uint dmDisplayFixedOutput;

		public short dmColor;

		public short dmDuplex;

		public short dmYResolution;

		public short dmTTOption;

		public short dmCollate;

		[MarshalAs(UnmanagedType.ByValTStr, SizeConst = 32)]
		public string dmFormName;

		public ushort dmLogPixels;

		public uint dmBitsPerPel;

		public uint dmPelsWidth;

		public uint dmPelsHeight;

		public uint dmDisplayFlags;

		public uint dmDisplayFrequency;

		public uint dmICMMethod;

		public uint dmICMIntent;

		public uint dmMediaType;

		public uint dmDitherType;

		public uint dmReserved1;

		public uint dmReserved2;

		public uint dmPanningWidth;

		public uint dmPanningHeight;
	}

	public class CResolution
	{
		public int Width { get; set; }

		public int Height { get; set; }

		public List<uint> RefreshRates { get; } = new List<uint>();

		public CResolution(int w, int h)
		{
			Width = w;
			Height = h;
		}

		public string To_String()
		{
			string text = Width + "*" + Height + "*";
			foreach (uint refreshRate in RefreshRates)
			{
				text = text + refreshRate + "*";
			}
			return text.TrimEnd('*');
		}
	}

	private ELan m_lan;

	public static EScene m_scene;

	public static CInitialize m_initialize = new CInitialize();

	public static CServerChk m_serverChk = new CServerChk();

	public static CUpdate m_update = new CUpdate();

	public static CLauncherChk m_launcher = new CLauncherChk();

	public static CGameReady m_gameReady = new CGameReady();

	public static MainWindow m_mainWindow = new MainWindow();

	public static SettingWindow m_settingWindow = new SettingWindow();

	public static WebWindow m_webWindow = new WebWindow();

	public int m_errorCode = -1;

	public Thread m_mainThread;

	public static CServerConnectInfo m_serverInfo = new CServerConnectInfo();

	public static int m_curUpdateVersion = -1;

	private static Mutex mutex;

	public static bool m_isTestMode = false;

	public static string m_path
	{
		get
		{
			if (m_isTestMode)
			{
				return "C:\\\\Program Files (x86)\\\\YouxiLand\\\\ROW\\\\";
			}
			return AppDomain.CurrentDomain.BaseDirectory;
		}
	}

	public void Init()
	{
		m_mainWindow.Initialize();
		m_mainWindow.Show();
		m_mainThread = new Thread(MainThread);
		m_mainThread.SetApartmentState(ApartmentState.STA);
		m_mainThread.IsBackground = true;
		m_mainThread.Start();
	}

	private void MainThread()
	{
		while (!m_mainWindow.Dispatcher.HasShutdownStarted)
		{
			try
			{
				switch (m_scene)
				{
				case EScene.e_Init:
					m_initialize.Update();
					break;
				case EScene.e_ServerChk:
					m_serverChk.Update();
					break;
				case EScene.e_Update:
					m_update.Update();
					break;
				case EScene.e_LauncherChk:
					m_launcher.Update();
					break;
				case EScene.e_GameReady:
					m_gameReady.Update();
					break;
				}
				if (m_initialize.m_state == CInitialize.EState.e_Error)
				{
					MessageBox.Show(Get_StringTable(16), "Duplicate Execution", MessageBoxButton.OK, MessageBoxImage.Asterisk);
					m_mainWindow.Dispatcher.Invoke(() =>
					{
						m_mainWindow.exitBtn_Click(this, null);
					});
				}
				if (m_serverChk.m_state == CServerChk.EState.e_Error0)
				{
					ShowErrorMsg(Get_StringTable(17));
					break;
				}
				if (m_serverChk.m_state == CServerChk.EState.e_Error1)
				{
					ShowErrorMsg(Get_StringTable(18));
					break;
				}
				if (m_serverChk.m_state == CServerChk.EState.e_End && !m_serverInfo.m_connect)
				{
					ShowErrorMsg(Get_StringTable(19));
					break;
				}
				if (m_update.m_state == CUpdate.EState.e_Error)
				{
					ShowErrorMsg(Get_StringTable(20));
					break;
				}
				if (m_launcher.m_state == CLauncherChk.EState.e_Error)
				{
					ShowErrorMsg(Get_StringTable(22));
					break;
				}
				if (m_launcher.m_state == CLauncherChk.EState.e_Restart)
				{
					MessageBox.Show(Get_StringTable(21), "Launcher Updated", MessageBoxButton.OK, MessageBoxImage.Asterisk);
					m_mainWindow.Dispatcher.Invoke(() =>
					{
						m_mainWindow.exitBtn_Click(this, null);
					});
				}
			}
			catch (Exception ex)
			{
				ShowErrorMsg(ex.Message);
				Environment.Exit(1);
			}
		}
	}

	private void ShowErrorMsg(string msg)
	{
		try
		{
			m_mainWindow.Dispatcher.Invoke(() =>
			{
				m_mainWindow.Navigate(m_serverChk.m_errorPage);
			});
		}
		catch
		{
		}
		MessageBox.Show(msg, "ERROR", MessageBoxButton.OK, MessageBoxImage.Hand);
	}

	public static void Dll_GetUrlChk(StringBuilder _url, StringBuilder _value)
	{
		Singleton<CHttpLoader>.Inst.GetStringFromUrl(_url, _value);
	}

	public static List<DisplayDeviceInfo> GetDxDiagInfo()
	{
		List<DisplayDeviceInfo> list = new List<DisplayDeviceInfo>();
		uint num = 0u;
		while (true)
		{
			DISPLAY_DEVICE lpDisplayDevice = new DISPLAY_DEVICE
			{
				cb = Marshal.SizeOf(typeof(DISPLAY_DEVICE))
			};
			if (!NativeMethods.EnumDisplayDevices(null, num, ref lpDisplayDevice, 0u))
			{
				break;
			}
			if ((lpDisplayDevice.StateFlags & 1) != 0)
			{
				DEVMODE lpDevMode = new DEVMODE
				{
					dmSize = (ushort)Marshal.SizeOf(typeof(DEVMODE))
				};
				if (NativeMethods.EnumDisplaySettings(lpDisplayDevice.DeviceName, -1, ref lpDevMode))
				{
					list.Add(new DisplayDeviceInfo
					{
						Description = lpDisplayDevice.DeviceString,
						Width = (int)lpDevMode.dmPelsWidth,
						Height = (int)lpDevMode.dmPelsHeight,
						Bpp = (int)lpDevMode.dmBitsPerPel,
						RefreshRate = (int)lpDevMode.dmDisplayFrequency
					});
				}
			}
			num++;
		}
		return list;
	}

	public static void Dll_GetSystemInfo(StringBuilder _sysInfo)
	{
		string text = "";
		ulong num = 0uL;
		long num2 = 0L;
		string text2 = "";
		uint num3 = 0u;
		uint num4 = 0u;
		string text3 = "directX";
		uint num5 = 0u;
		List<string> list = new List<string>();
		uint num6 = 0u;
		uint num7 = 0u;
		uint num8 = 0u;
		uint num9 = 0u;
		using (ManagementObjectSearcher managementObjectSearcher = new ManagementObjectSearcher("SELECT * From Win32_OperatingSystem"))
		{
			using ManagementObjectCollection.ManagementObjectEnumerator managementObjectEnumerator = managementObjectSearcher.Get().GetEnumerator();
			if (managementObjectEnumerator.MoveNext())
			{
				text = (string)((ManagementObject)managementObjectEnumerator.Current)["Caption"];
			}
		}
		using (ManagementObjectSearcher managementObjectSearcher2 = new ManagementObjectSearcher("SELECT * From Win32_PhysicalMemory"))
		{
			using ManagementObjectCollection.ManagementObjectEnumerator managementObjectEnumerator = managementObjectSearcher2.Get().GetEnumerator();
			if (managementObjectEnumerator.MoveNext())
			{
				num = (ulong)((ManagementObject)managementObjectEnumerator.Current)["Capacity"];
			}
		}
		using (ManagementObjectSearcher managementObjectSearcher3 = new ManagementObjectSearcher("SELECT * From Win32_PageFileUsage"))
		{
			using ManagementObjectCollection.ManagementObjectEnumerator managementObjectEnumerator = managementObjectSearcher3.Get().GetEnumerator();
			if (managementObjectEnumerator.MoveNext())
			{
				ManagementObject managementObject = (ManagementObject)managementObjectEnumerator.Current;
				long num10 = Convert.ToInt64(managementObject["AllocatedBaseSize"]);
				long num11 = Convert.ToInt64(managementObject["CurrentUsage"]);
				num2 = (num10 - num11) * 1024 * 1024;
			}
		}
		using (ManagementObjectSearcher managementObjectSearcher4 = new ManagementObjectSearcher("SELECT * From Win32_Processor"))
		{
			using ManagementObjectCollection.ManagementObjectEnumerator managementObjectEnumerator = managementObjectSearcher4.Get().GetEnumerator();
			if (managementObjectEnumerator.MoveNext())
			{
				ManagementObject managementObject2 = (ManagementObject)managementObjectEnumerator.Current;
				text2 = (string)managementObject2["name"];
				num3 = (uint)managementObject2["NumberOfCores"];
				num4 = (uint)managementObject2["CurrentClockSpeed"];
			}
		}
		List<DisplayDeviceInfo> dxDiagInfo = GetDxDiagInfo();
		for (int i = 0; i < dxDiagInfo.Count; i++)
		{
			if (!list.Contains(dxDiagInfo[i].Description))
			{
				list.Add(dxDiagInfo[i].Description);
			}
		}
		num6 = (uint)dxDiagInfo[0].Width;
		num7 = (uint)dxDiagInfo[0].Height;
		num8 = (uint)dxDiagInfo[0].Bpp;
		num9 = (uint)dxDiagInfo[0].RefreshRate;
		_sysInfo.Append(text + "*");
		_sysInfo.Append(num + "*");
		_sysInfo.Append(num2 + "*");
		_sysInfo.Append(text2 + "(" + num3 + " CPUs), ~" + (double)num4 / 1000.0 + "GHz*");
		_sysInfo.Append(text3 + "?");
		num5 = (uint)list.Count;
		_sysInfo.Append(num5 + "*");
		foreach (string item in list)
		{
			_sysInfo.Append(item + "*");
		}
		_sysInfo.Append(num6 + "*");
		_sysInfo.Append(num7 + "*");
		_sysInfo.Append(num8 + "*");
		_sysInfo.Append(num9 + "*");
	}

	public static void Dll_UpdateFileChange(StringBuilder _sysInfo)
	{
		if (File.Exists("Launcher_update.exe") || File.Exists("websocket_update.dll") || File.Exists("login_update.exe"))
		{
			string text = DateTime.Now.ToString("MMMM", CultureInfo.InvariantCulture) + " " + DateTime.Today.Day + " " + DateTime.Today.Year;
			if (File.Exists("Launcher_update.exe"))
			{
				File.Move("launcher.exe", text + "launcher_dummyE");
				File.Move("launcher_update.exe", "launcher.exe");
			}
			if (File.Exists("websocket_update.dll"))
			{
				File.Move("websocket.dll", text + "launcher_dummyD");
				File.Move("websocket_update.dll", "websocket.dll");
			}
			if (File.Exists("login_update.exe"))
			{
				if (File.Exists("login.exe"))
				{
					File.Move("login.exe", text + "login_dummyE");
				}
				File.Move("login_update.exe", "login.exe");
			}
			_sysInfo.Append("change");
		}
		else
		{
			_sysInfo.Length = 0;
		}
	}

	public static void Dll_InitRegistry(StringBuilder _result)
	{
		RegistryKey registryKey = Registry.LocalMachine.OpenSubKey("Software\\ROW\\MP-Client", writable: true);
		if (registryKey != null)
		{
			if (registryKey.GetValue("Folder") != null)
			{
				registryKey.DeleteValue("Folder");
			}
			registryKey.SetValue("Folder", Directory.GetCurrentDirectory());
		}
		else
		{
			registryKey = Registry.LocalMachine.CreateSubKey("Software\\ROW\\MP-Client", RegistryKeyPermissionCheck.ReadWriteSubTree);
		}
		if (Convert.ToUInt32(registryKey.GetValue("FirstLaunchCheck")) == 0)
		{
			_result.Append("firstLaunch");
			registryKey.SetValue("FirstLaunchCheck", 1);
			StringBuilder stringBuilder = new StringBuilder(65536);
			try
			{
				Dll_GetSystemInfo(stringBuilder);
			}
			catch
			{
				MessageBox.Show("DLL 접근 안됬음");
			}
			string[] array = stringBuilder.ToString().Split('?');
			array[0].Split('*');
			string[] array2 = array[1].Split('*');
			int num = int.Parse(array2[0]);
			int num2 = int.Parse(array2[num + 1]);
			int num3 = int.Parse(array2[num + 2]);
			int num4 = int.Parse(array2[num + 3]);
			int num5 = int.Parse(array2[num + 4]);
			if (registryKey.GetValue("Adapter") != null)
			{
				registryKey.DeleteValue("Adapter");
			}
			registryKey.SetValue("Adapter", array2[1]);
			if (registryKey.GetValue("ChatDlgType") != null)
			{
				registryKey.DeleteValue("ChatDlgType");
			}
			registryKey.SetValue("ChatDlgType", 1);
			if (registryKey.GetValue("Depth") != null)
			{
				registryKey.DeleteValue("Depth");
			}
			registryKey.SetValue("Depth", num4);
			if (registryKey.GetValue("Height") != null)
			{
				registryKey.DeleteValue("Height");
			}
			registryKey.SetValue("Height", num3);
			byte[] value = new byte[64]
			{
				0, 5, 0, 0, 208, 2, 0, 0, 16, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				1, 0, 0, 0
			};
			if (registryKey.GetValue("InitValue") != null)
			{
				registryKey.DeleteValue("InitValue");
			}
			registryKey.SetValue("InitValue", value);
			if (registryKey.GetValue("Language") != null)
			{
				registryKey.DeleteValue("Language");
			}
			registryKey.SetValue("Language", 0);
			byte[] value2 = new byte[4] { 1, 0, 0, 0 };
			if (registryKey.GetValue("MLSupport") != null)
			{
				registryKey.DeleteValue("MLSupport");
			}
			registryKey.SetValue("MLSupport", value2);
			if (registryKey.GetValue("Refresh") != null)
			{
				registryKey.DeleteValue("Refresh");
			}
			registryKey.SetValue("Refresh", num5);
			byte[] value3 = new byte[92]
			{
				1, 0, 0, 0, 0, 0, 0, 0, 13, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 1, 0,
				0, 0, 1, 0, 0, 0, 7, 0, 0, 0,
				1, 0, 0, 0, 1, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 1, 0, 0, 0, 1, 0,
				0, 0, 3, 0, 0, 0, 1, 0, 0, 0,
				1, 0, 0, 0, 1, 0, 0, 0, 0, 0,
				0, 0
			};
			if (registryKey.GetValue("RenderOption") != null)
			{
				registryKey.DeleteValue("RenderOption");
			}
			registryKey.SetValue("RenderOption", value3);
			if (registryKey.GetValue("SiegeTime") != null)
			{
				registryKey.DeleteValue("SiegeTime");
			}
			registryKey.SetValue("SiegeTime", 8520704);
			if (registryKey.GetValue("Vertical") != null)
			{
				registryKey.DeleteValue("Vertical");
			}
			registryKey.SetValue("Vertical", 0);
			if (registryKey.GetValue("VisibleFlag") != null)
			{
				registryKey.DeleteValue("VisibleFlag");
			}
			registryKey.SetValue("VisibleFlag", 0);
			if (registryKey.GetValue("Width") != null)
			{
				registryKey.DeleteValue("Width");
			}
			registryKey.SetValue("Width", num2);
			if (registryKey.GetValue("WindowMode") != null)
			{
				registryKey.DeleteValue("WindowMode");
			}
			registryKey.SetValue("WindowMode", 0);
		}
	}

	public static string Dll_GetRegistry_Str(string _key)
	{
		using RegistryKey registryKey = Registry.LocalMachine.OpenSubKey("Software\\ROW\\MP-Client");
		return Convert.ToString(registryKey.GetValue(_key.ToString()));
	}

	public static int Dll_GetRegistry_Int(string _key)
	{
		using RegistryKey registryKey = Registry.LocalMachine.OpenSubKey("Software\\ROW\\MP-Client");
		return Convert.ToInt32(registryKey.GetValue(_key.ToString()));
	}

	public static byte[] Dll_GetRegistry_Bin(string _key, int _arrayLength)
	{
		using RegistryKey registryKey = Registry.LocalMachine.OpenSubKey("Software\\ROW\\MP-Client");
		return (byte[])registryKey.GetValue(_key.ToString());
	}

	public static void Dll_SetRegistry_Str(string _key, string _value)
	{
		using RegistryKey registryKey = Registry.LocalMachine.OpenSubKey("Software\\ROW\\MP-Client", writable: true);
		registryKey.DeleteValue(_key);
		registryKey.SetValue(_key, _value);
	}

	public static void Dll_SetRegistry_Int(string _key, int _value)
	{
		using RegistryKey registryKey = Registry.LocalMachine.OpenSubKey("Software\\ROW\\MP-Client", writable: true);
		registryKey.DeleteValue(_key);
		registryKey.SetValue(_key, _value);
	}

	public static void Dll_SetRegistry_Bin(string _key, byte[] _value)
	{
		using RegistryKey registryKey = Registry.LocalMachine.OpenSubKey("Software\\ROW\\MP-Client", writable: true);
		registryKey.DeleteValue(_key);
		registryKey.SetValue(_key, _value);
	}

	public static void Dll_SendInfo(StringBuilder _curUpdateVersion, StringBuilder _launcherInfo)
	{
	}

	public static bool Dll_CheckDuplicateExecution()
	{
		try
		{
			mutex = new Mutex(initiallyOwned: true, Process.GetCurrentProcess().ProcessName, out var createdNew);
			if (createdNew)
			{
				mutex.ReleaseMutex();
			}
			return !createdNew;
		}
		catch (Exception ex)
		{
			MessageBox.Show("Fail to check duplicate luancher \nCause : " + ex);
			return true;
		}
	}

	public static void Dll_ChkUpdateDummyFile()
	{
		string[] array = new string[3] { "*launcher_dummyE", "*launcher_dummyD", "*login_dummyE" }.SelectMany((string name) => Directory.GetFiles(Directory.GetCurrentDirectory(), name, SearchOption.AllDirectories)).ToArray();
		foreach (string text in array)
		{
			try
			{
				File.Delete(text);
			}
			catch (Exception ex)
			{
				MessageBox.Show("Fail to delete dummy File" + text + "\nCause : " + ex);
			}
		}
	}

	public static void Dll_SaveTopVersion(StringBuilder _programVersion, StringBuilder _topVersion)
	{
		StreamWriter streamWriter = new StreamWriter("version.csv");
		string value = _programVersion.ToString() + "," + _topVersion.ToString();
		streamWriter.Write(value);
		streamWriter.Close();
	}

	public static void Dll_GetTopVersion(StringBuilder _updateServer, int _svnVersion, int _updatePassVersion, StringBuilder _resultTopVersion)
	{
		StringBuilder url = new StringBuilder("http://" + _updateServer.ToString() + "/ROW/Proc/Process.jsp?vUser=RowLauncher&vFunction=Row_TopVersion");
		try
		{
			Dll_GetUrlChk(url, _resultTopVersion);
		}
		catch (Exception)
		{
			_resultTopVersion.Append(_svnVersion.ToString());
		}
		if (_resultTopVersion.Length == 0)
		{
			_resultTopVersion.Append(_svnVersion.ToString());
		}
	}

	public static void Dll_GetPrevVersion(StringBuilder _updateServer, int _svnVersion, int _updatePassVersion, StringBuilder _resultVersions)
	{
		StringBuilder url = new StringBuilder("http://" + _updateServer.ToString() + "/ROW/Proc/Process.jsp?vUser=RowLauncher&vFunction=Row_BeforeVersion&vValue0=" + _svnVersion);
		try
		{
			Dll_GetUrlChk(url, _resultVersions);
		}
		catch (Exception)
		{
			_resultVersions.Length = 0;
		}
	}

	public static void Dll_GetSvnVersion(StringBuilder _resultProgram, StringBuilder _resultSvnVersion, StringBuilder _resultDownloadCount)
	{
		StreamReader streamReader;
		try
		{
			streamReader = File.OpenText("version.csv");
		}
		catch (Exception)
		{
			throw new Exception("file empty!  [version.csv");
		}
		bool flag = true;
		while (!streamReader.EndOfStream)
		{
			string[] array = streamReader.ReadLine().Split(',');
			if (flag)
			{
				_resultProgram.Append(array[0]);
				_resultSvnVersion.Append(array[1]);
				continue;
			}
			_resultDownloadCount.Append(array[0]);
			break;
		}
		if (_resultDownloadCount.Length == 0)
		{
			_resultDownloadCount.Append("0");
		}
		streamReader.Close();
	}

	public static void Dll_ChkRenameFile(StringBuilder _filename, StringBuilder _result)
	{
		if (_filename.Equals("launcher.exe"))
		{
			_result.Append("launcher_update.exe");
		}
		else if (_filename.Equals("websocket.dll"))
		{
			_result.Append("websocket_update.exe");
		}
		else if (_filename.Equals("websocket.dll"))
		{
			_result.Append("login_update.exe");
		}
		else
		{
			_result.Append(_filename);
		}
	}

	public static void Dll_GetResolutions(StringBuilder _result)
	{
		DEVMODE lpDevMode = new DEVMODE
		{
			dmSize = (ushort)Marshal.SizeOf(typeof(DEVMODE))
		};
		Dictionary<string, CResolution> dictionary = new Dictionary<string, CResolution>();
		int num = 0;
		while (NativeMethods.EnumDisplaySettings(null, num, ref lpDevMode))
		{
			int dmPelsWidth = (int)lpDevMode.dmPelsWidth;
			int dmPelsHeight = (int)lpDevMode.dmPelsHeight;
			uint dmDisplayFrequency = lpDevMode.dmDisplayFrequency;
			if (dmPelsWidth < 800 || dmPelsHeight < 600)
			{
				num++;
				continue;
			}
			string key = $"{dmPelsWidth}x{dmPelsHeight}";
			if (!dictionary.TryGetValue(key, out var value))
			{
				value = (dictionary[key] = new CResolution(dmPelsWidth, dmPelsHeight));
			}
			if (!value.RefreshRates.Contains(dmDisplayFrequency))
			{
				value.RefreshRates.Add(dmDisplayFrequency);
			}
			num++;
		}
		foreach (CResolution value2 in dictionary.Values)
		{
			_result.Append(value2.To_String());
			_result.Append("?");
		}
	}

	public static void Dll_ClientChk(StringBuilder _result)
	{
		_result.Length = 0;
	}

	public static void Dll_StringTable_Get(int _offset, StringBuilder _result)
	{
		_result.Append(CServerTable.g_strTable[_offset]);
	}

	public static string Get_StringTable(int _offset)
	{
		StringBuilder stringBuilder = new StringBuilder(65536);
		Dll_StringTable_Get(_offset, stringBuilder);
		return stringBuilder.ToString();
	}

	[DllImport("kernel32.dll")]
	public static extern bool CreateProcess(string lpApplicationName, string lpCommandLine, IntPtr lpProcessAttributes, IntPtr lpThreadAttributes, bool bInheritHandles, uint dwCreationFlags, IntPtr lpEnvironment, string lpCurrentDirectory, ref STARTUPINFO lpStartupInfo, out PROCESS_INFORMATION lpProcessInformation);

	[DllImport("winmm.dll", SetLastError = true)]
	public static extern uint waveOutGetNumDevs();
}
