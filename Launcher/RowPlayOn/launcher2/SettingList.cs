using System.Runtime.InteropServices;

namespace launcher2;

[StructLayout(LayoutKind.Sequential, Size = 1)]
public struct SettingList
{
	public static string[] AdtList = null;

	public static int[] DptList = new int[2] { 16, 32 };

	public static string[] LangList = new string[7] { "English", "Chinese", "Japanese", "Korean", "Portuguese", "Spanish", "Polish" };

	public static string[] NYList = new string[2] { "No", "Yes" };

	public static string[] LMHList = new string[3] { "Low", "Medium", "High" };

	public static string[] LHList = new string[2] { "Low", "High" };
}
