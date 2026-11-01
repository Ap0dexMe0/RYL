using System;
using System.Reflection;
using System.Runtime.InteropServices;

namespace launcher2;

public static class CFirewallTest
{
	public enum Protocol
	{
		TCPUDP = 256,
		TCP = 6,
		UDP = 17
	}

	public enum Direction
	{
		INBOUND = 1,
		OUTBOUND,
		MAX
	}

	public enum Action
	{
		BLOCK,
		ALLOW,
		MAX
	}

	public static bool Add(string name, Protocol protocol, Direction direction, Action action)
	{
		object o = null;
		object obj = null;
		object obj2 = null;
		try
		{
			o = Activator.CreateInstance(Type.GetTypeFromProgID("HNetCfg.FwPolicy2"));
			obj = Get(o, "Rules");
			if (Exists(obj, name))
			{
				return true;
			}
			obj2 = Activator.CreateInstance(Type.GetTypeFromProgID("HNetCfg.FWRule"));
			Set(obj2, "Name", name);
			Set(obj2, "Protocol", (int)protocol);
			Set(obj2, "Direction", (int)direction);
			Set(obj2, "Enabled", true);
			Set(obj2, "Action", (int)action);
			Invoke(obj, "Add", obj2);
			return Exists(obj, name);
		}
		catch
		{
			return false;
		}
		finally
		{
			Release(obj2);
			Release(obj);
			Release(o);
		}
	}

	private static bool Exists(object rules, string name)
	{
		try
		{
			Release(Invoke(rules, "Item", name));
			return true;
		}
		catch
		{
			return false;
		}
	}

	private static object Get(object o, string prop)
	{
		return o.GetType().InvokeMember(prop, BindingFlags.GetProperty, null, o, null);
	}

	private static void Set(object o, string prop, object value)
	{
		o.GetType().InvokeMember(prop, BindingFlags.SetProperty, null, o, new object[1] { value });
	}

	private static object Invoke(object o, string method, params object[] args)
	{
		return o.GetType().InvokeMember(method, BindingFlags.InvokeMethod, null, o, args);
	}

	private static void Release(object o)
	{
		if (o != null && Marshal.IsComObject(o))
		{
			Marshal.ReleaseComObject(o);
		}
	}
}
