using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.IO.Compression;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Threading;

namespace Costura;

[CompilerGenerated]
internal static class AssemblyLoader
{
	private static object nullCacheLock = new object();

	private static Dictionary<string, bool> nullCache = new Dictionary<string, bool>();

	private static Dictionary<string, string> assemblyNames = new Dictionary<string, string>();

	private static Dictionary<string, string> symbolNames = new Dictionary<string, string>();

	private static int isAttached;

	private static string CultureToString(CultureInfo culture)
	{
		if (culture == null)
		{
			return "";
		}
		return culture.Name;
	}

	private static Assembly ReadExistingAssembly(AssemblyName name)
	{
		Assembly[] assemblies = AppDomain.CurrentDomain.GetAssemblies();
		foreach (Assembly assembly in assemblies)
		{
			AssemblyName name2 = assembly.GetName();
			if (string.Equals(name2.Name, name.Name, StringComparison.InvariantCultureIgnoreCase) && string.Equals(CultureToString(name2.CultureInfo), CultureToString(name.CultureInfo), StringComparison.InvariantCultureIgnoreCase))
			{
				return assembly;
			}
		}
		return null;
	}

	private static void CopyTo(Stream source, Stream destination)
	{
		byte[] array = new byte[81920];
		int count;
		while ((count = source.Read(array, 0, array.Length)) != 0)
		{
			destination.Write(array, 0, count);
		}
	}

	private static Stream LoadStream(string fullName)
	{
		Assembly executingAssembly = Assembly.GetExecutingAssembly();
		if (fullName.EndsWith(".compressed"))
		{
			using (Stream stream = executingAssembly.GetManifestResourceStream(fullName))
			{
				using DeflateStream source = new DeflateStream(stream, CompressionMode.Decompress);
				MemoryStream memoryStream = new MemoryStream();
				CopyTo(source, memoryStream);
				memoryStream.Position = 0L;
				return memoryStream;
			}
		}
		return executingAssembly.GetManifestResourceStream(fullName);
	}

	private static Stream LoadStream(Dictionary<string, string> resourceNames, string name)
	{
		if (resourceNames.TryGetValue(name, out var value))
		{
			return LoadStream(value);
		}
		return null;
	}

	private static byte[] ReadStream(Stream stream)
	{
		byte[] array = new byte[stream.Length];
		stream.Read(array, 0, array.Length);
		return array;
	}

	private static Assembly ReadFromEmbeddedResources(Dictionary<string, string> assemblyNames, Dictionary<string, string> symbolNames, AssemblyName requestedAssemblyName)
	{
		string text = requestedAssemblyName.Name.ToLowerInvariant();
		if (requestedAssemblyName.CultureInfo != null && !string.IsNullOrEmpty(requestedAssemblyName.CultureInfo.Name))
		{
			text = requestedAssemblyName.CultureInfo.Name + "." + text;
		}
		byte[] rawAssembly;
		using (Stream stream = LoadStream(assemblyNames, text))
		{
			if (stream == null)
			{
				return null;
			}
			rawAssembly = ReadStream(stream);
		}
		using (Stream stream2 = LoadStream(symbolNames, text))
		{
			if (stream2 != null)
			{
				byte[] rawSymbolStore = ReadStream(stream2);
				return Assembly.Load(rawAssembly, rawSymbolStore);
			}
		}
		return Assembly.Load(rawAssembly);
	}

	public static Assembly ResolveAssembly(object sender, ResolveEventArgs e)
	{
		lock (nullCacheLock)
		{
			if (nullCache.ContainsKey(e.Name))
			{
				return null;
			}
		}
		AssemblyName assemblyName = new AssemblyName(e.Name);
		Assembly assembly = ReadExistingAssembly(assemblyName);
		if (assembly != null)
		{
			return assembly;
		}
		assembly = ReadFromEmbeddedResources(assemblyNames, symbolNames, assemblyName);
		if (assembly == null)
		{
			lock (nullCacheLock)
			{
				nullCache[e.Name] = true;
			}
			if ((assemblyName.Flags & AssemblyNameFlags.Retargetable) != 0)
			{
				assembly = Assembly.Load(assemblyName);
			}
		}
		return assembly;
	}

	static AssemblyLoader()
	{
		assemblyNames.Add("bouncycastle.crypto", "costura.bouncycastle.crypto.dll.compressed");
		assemblyNames.Add("costura", "costura.costura.dll.compressed");
		assemblyNames.Add("icsharpcode.sharpziplib", "costura.icsharpcode.sharpziplib.dll.compressed");
		assemblyNames.Add("microsoft.web.webview2.core", "costura.microsoft.web.webview2.core.dll.compressed");
		assemblyNames.Add("microsoft.web.webview2.winforms", "costura.microsoft.web.webview2.winforms.dll.compressed");
		assemblyNames.Add("microsoft.web.webview2.wpf", "costura.microsoft.web.webview2.wpf.dll.compressed");
		assemblyNames.Add("microsoft.win32.primitives", "costura.microsoft.win32.primitives.dll.compressed");
		assemblyNames.Add("system.appcontext", "costura.system.appcontext.dll.compressed");
		assemblyNames.Add("system.console", "costura.system.console.dll.compressed");
		assemblyNames.Add("system.diagnostics.diagnosticsource", "costura.system.diagnostics.diagnosticsource.dll.compressed");
		assemblyNames.Add("system.diagnostics.tracing", "costura.system.diagnostics.tracing.dll.compressed");
		assemblyNames.Add("system.globalization.calendars", "costura.system.globalization.calendars.dll.compressed");
		assemblyNames.Add("system.io.compression", "costura.system.io.compression.dll.compressed");
		assemblyNames.Add("system.io.compression.zipfile", "costura.system.io.compression.zipfile.dll.compressed");
		assemblyNames.Add("system.io", "costura.system.io.dll.compressed");
		assemblyNames.Add("system.io.filesystem", "costura.system.io.filesystem.dll.compressed");
		assemblyNames.Add("system.io.filesystem.primitives", "costura.system.io.filesystem.primitives.dll.compressed");
		assemblyNames.Add("system.net.http", "costura.system.net.http.dll.compressed");
		assemblyNames.Add("system.net.sockets", "costura.system.net.sockets.dll.compressed");
		assemblyNames.Add("system.reflection", "costura.system.reflection.dll.compressed");
		assemblyNames.Add("system.runtime", "costura.system.runtime.dll.compressed");
		assemblyNames.Add("system.runtime.extensions", "costura.system.runtime.extensions.dll.compressed");
		assemblyNames.Add("system.runtime.interopservices", "costura.system.runtime.interopservices.dll.compressed");
		assemblyNames.Add("system.runtime.interopservices.runtimeinformation", "costura.system.runtime.interopservices.runtimeinformation.dll.compressed");
		assemblyNames.Add("system.security.cryptography.algorithms", "costura.system.security.cryptography.algorithms.dll.compressed");
		assemblyNames.Add("system.security.cryptography.encoding", "costura.system.security.cryptography.encoding.dll.compressed");
		assemblyNames.Add("system.security.cryptography.primitives", "costura.system.security.cryptography.primitives.dll.compressed");
		assemblyNames.Add("system.security.cryptography.x509certificates", "costura.system.security.cryptography.x509certificates.dll.compressed");
		assemblyNames.Add("system.xml.readerwriter", "costura.system.xml.readerwriter.dll.compressed");
	}

	public static void Attach()
	{
		if (Interlocked.Exchange(ref isAttached, 1) != 1)
		{
			AppDomain.CurrentDomain.AssemblyResolve += ResolveAssembly;
		}
	}
}
