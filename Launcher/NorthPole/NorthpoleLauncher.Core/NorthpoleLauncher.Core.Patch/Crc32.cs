using System;
using System.IO;

namespace NorthpoleLauncher.Core.Patch;

public static class Crc32
{
	private static readonly uint[] Table = BuildTable();

	private static uint[] BuildTable()
	{
		uint[] array = new uint[256];
		for (uint num = 0u; num < 256; num++)
		{
			uint num2 = num;
			for (int i = 0; i < 8; i++)
			{
				num2 = (((num2 & 1) != 0) ? (0xEDB88320u ^ (num2 >> 1)) : (num2 >> 1));
			}
			array[num] = num2;
		}
		return array;
	}

	public static uint Compute(ReadOnlySpan<byte> data, uint crc = uint.MaxValue)
	{
		ReadOnlySpan<byte> readOnlySpan = data;
		for (int i = 0; i < readOnlySpan.Length; i++)
		{
			byte b = readOnlySpan[i];
			crc = Table[(crc ^ b) & 0xFF] ^ (crc >> 8);
		}
		return crc;
	}

	public static uint ComputeFile(string path)
	{
		using FileStream fileStream = new FileStream(path, FileMode.Open, FileAccess.Read, FileShare.Read, 65536);
		byte[] array = new byte[65536];
		uint num = uint.MaxValue;
		int length;
		while ((length = fileStream.Read(array, 0, array.Length)) > 0)
		{
			num = Compute(array.AsSpan(0, length), num);
		}
		return ~num;
	}
}
