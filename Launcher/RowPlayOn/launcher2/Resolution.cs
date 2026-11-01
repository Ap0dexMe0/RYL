using System.Collections.Generic;

namespace launcher2;

public class Resolution
{
	public int width;

	public int height;

	public List<int> refreshRate = new List<int>();

	public string resString => width + " x " + height;

	public Resolution(string _resStr)
	{
		string[] array = _resStr.Split('*');
		for (int i = 0; i < array.Length; i++)
		{
			switch (i)
			{
			case 0:
				width = int.Parse(array[i]);
				break;
			case 1:
				height = int.Parse(array[i]);
				break;
			default:
				refreshRate.Add(int.Parse(array[i]));
				break;
			}
		}
	}
}
