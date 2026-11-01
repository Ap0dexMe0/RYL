using System;
using System.Reflection;

namespace launcher2;

public class Singleton<T> where T : class
{
	private static object _syncobj = new object();

	private static volatile T _instance = null;

	public static T Inst
	{
		get
		{
			if (_instance == null)
			{
				CreateInstance();
			}
			return _instance;
		}
	}

	private static void CreateInstance()
	{
		lock (_syncobj)
		{
			Type typeFromHandle = typeof(T);
			ConstructorInfo[] constructors = typeFromHandle.GetConstructors();
			if (constructors.Length < 1)
			{
				throw new Exception("Error : " + typeFromHandle.Name + "에 생성자가 없음");
			}
			bool flag = false;
			ConstructorInfo[] array = constructors;
			for (int i = 0; i < array.Length; i++)
			{
				if (array[i].ToString() == "Void .ctor()")
				{
					flag = true;
				}
			}
			if (!flag)
			{
				throw new Exception("Error : " + typeFromHandle.Name + "에 기본 생성자{Void .ctor()}가 없음");
			}
			_instance = (T)Activator.CreateInstance(typeFromHandle, nonPublic: true);
		}
	}
}
