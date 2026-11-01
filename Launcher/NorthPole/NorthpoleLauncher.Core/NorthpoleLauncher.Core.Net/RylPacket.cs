using System;
using System.Buffers.Binary;
using System.IO;

namespace NorthpoleLauncher.Core.Net;

public static class RylPacket
{
	public const int HeaderSize = 12;

	public const byte StartByte = byte.MaxValue;

	public const ushort CryptFlag = 32768;

	public const ushort LengthMask = 16383;

	public const ushort PatcherModel = 1;

	public static byte[] Build(byte cmd, ReadOnlySpan<byte> body, ushort state, ushort error, ushort pageVersion)
	{
		int num = 12 + body.Length;
		byte[] array = new byte[num];
		uint num2 = XorCrypt.RandomCodePage(pageVersion);
		array[0] = byte.MaxValue;
		array[1] = cmd;
		BinaryPrimitives.WriteUInt16LittleEndian(array.AsSpan(2), (ushort)(num | 0x8000));
		BinaryPrimitives.WriteUInt32LittleEndian(array.AsSpan(4), num2);
		BinaryPrimitives.WriteUInt16LittleEndian(array.AsSpan(8), error);
		BinaryPrimitives.WriteUInt16LittleEndian(array.AsSpan(10), state);
		body.CopyTo(array.AsSpan(12));
		XorCrypt.XorBody(array.AsSpan(12), num2);
		XorCrypt.EncodeHeader(array.AsSpan(1, 11));
		return array;
	}

	public static int PeekLength(ReadOnlySpan<byte> first12, out byte cmd)
	{
		Span<byte> destination = stackalloc byte[12];
		first12.Slice(0, 12).CopyTo(destination);
		XorCrypt.DecodeHeader(destination.Slice(1, 11));
		cmd = destination[1];
		return BinaryPrimitives.ReadUInt16LittleEndian(destination.Slice(2)) & 0x3FFF;
	}

	public static ParsedPacket Parse(ReadOnlySpan<byte> raw)
	{
		byte[] array = raw.ToArray();
		if (array.Length < 12 || array[0] != byte.MaxValue)
		{
			throw new InvalidDataException("Bad packet start byte.");
		}
		XorCrypt.DecodeHeader(array.AsSpan(1, 11));
		ushort num = BinaryPrimitives.ReadUInt16LittleEndian(array.AsSpan(2));
		int num2 = num & 0x3FFF;
		if (num2 > array.Length)
		{
			throw new InvalidDataException($"Packet length {num2} exceeds buffer {array.Length}.");
		}
		uint num3 = BinaryPrimitives.ReadUInt32LittleEndian(array.AsSpan(4));
		ushort error = BinaryPrimitives.ReadUInt16LittleEndian(array.AsSpan(8));
		ushort state = BinaryPrimitives.ReadUInt16LittleEndian(array.AsSpan(10));
		Span<byte> body = array.AsSpan(12, num2 - 12);
		if ((num & 0x8000) != 0 && !XorCrypt.XorBody(body, num3))
		{
			throw new InvalidDataException($"Unsupported code page 0x{num3:X8}.");
		}
		return new ParsedPacket(array[1], error, state, body.ToArray());
	}
}
