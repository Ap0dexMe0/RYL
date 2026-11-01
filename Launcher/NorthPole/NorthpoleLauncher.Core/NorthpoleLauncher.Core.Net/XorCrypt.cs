using System;

namespace NorthpoleLauncher.Core.Net;

public static class XorCrypt
{
	public const int Versions = 4;

	public const int Pages = 10;

	public const int Bits = 40;

	private static readonly byte[,,] Table = BuildTable();

	private static byte[,,] BuildTable()
	{
		byte[] raw = XorTableData.Raw;
		byte[,,] array = new byte[4, 10, 40];
		for (int i = 0; i < 4; i++)
		{
			for (int j = 0; j < 10; j++)
			{
				for (int k = 0; k < 40; k++)
				{
					array[i, j, k] = raw[(i * 10 + j) * 40 + k];
				}
			}
		}
		for (int l = 2; l < 4; l++)
		{
			for (int m = 0; m < 10; m++)
			{
				for (int n = 0; n < 40; n++)
				{
					array[l, m, n] ^= array[0, m, n];
				}
			}
		}
		return array;
	}

	public static void EncodeHeader(Span<byte> header)
	{
		for (int i = 0; i < header.Length; i++)
		{
			int num = header[i] ^ Table[0, 0, i % 40];
			header[i] = (byte)(((num & 0x80) >> 7) | ((num << 1) & 0xFE));
		}
	}

	public static void DecodeHeader(Span<byte> header)
	{
		for (int i = 0; i < header.Length; i++)
		{
			int num = ((header[i] & 1) << 7) | ((header[i] >> 1) & 0x7F);
			header[i] = (byte)(num ^ Table[0, 0, i % 40]);
		}
	}

	public static bool XorBody(Span<byte> body, uint codePage)
	{
		int num = (int)((codePage >> 16) & 0xFFFF);
		int num2 = (int)((codePage >> 8) & 0xFF);
		int num3 = (int)(codePage & 0xFF);
		if (num < 0 || num >= 4 || num2 >= 10 || num3 >= 10)
		{
			return false;
		}
		for (int i = 0; i < body.Length; i++)
		{
			body[i] ^= (byte)(Table[num, num2, i % 40] ^ Table[num, num3, i % 40]);
		}
		return true;
	}

	public static uint MakeCodePage(ushort pageVersion, byte page1, byte page2)
	{
		return (uint)((pageVersion << 16) | (page1 << 8) | page2);
	}

	public static uint RandomCodePage(ushort pageVersion)
	{
		Random shared = Random.Shared;
		byte b = (byte)shared.Next(10);
		byte b2;
		do
		{
			b2 = (byte)shared.Next(10);
		}
		while (b2 == b);
		return MakeCodePage(pageVersion, b, b2);
	}
}
