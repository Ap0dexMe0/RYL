using System;
using System.Buffers.Binary;
using System.Collections.Generic;
using System.IO;
using System.IO.Compression;
using System.Linq;
using System.Text;

namespace NorthpoleLauncher.Core.Patch;

public sealed class PatchInfo
{
	public const string Magic = "PAT2";

	public uint Version { get; set; }

	public List<PatchRecord> Records { get; } = new List<PatchRecord>();

	public static PatchInfo Parse(ReadOnlySpan<byte> d)
	{
		if (d.Length < 12 || Encoding.ASCII.GetString(d.Slice(0, 4)) != "PAT2")
		{
			throw new InvalidDataException("Not a PatchInfoV2 (PAT2) file.");
		}
		PatchInfo patchInfo = new PatchInfo
		{
			Version = BinaryPrimitives.ReadUInt32LittleEndian(d.Slice(4))
		};
		int num = BinaryPrimitives.ReadInt32LittleEndian(d.Slice(8));
		if (num < 0 || 12 + (long)num * 264L > d.Length)
		{
			throw new InvalidDataException("PatchInfoV2 record count does not match file size.");
		}
		int num2 = 12;
		int num3 = 0;
		while (num3 < num)
		{
			patchInfo.Records.Add(new PatchRecord
			{
				FileName = ReadCString(d.Slice(num2, 200)),
				PackageName = ReadCString(d.Slice(num2 + 200, 50)),
				FileSize = BinaryPrimitives.ReadUInt32LittleEndian(d.Slice(num2 + 252)),
				Crc32 = BinaryPrimitives.ReadUInt32LittleEndian(d.Slice(num2 + 256)),
				Version = BinaryPrimitives.ReadUInt32LittleEndian(d.Slice(num2 + 260))
			});
			num3++;
			num2 += 264;
		}
		return patchInfo;
	}

	public static PatchInfo ParseZip(Stream zipStream)
	{
		using ZipArchive zipArchive = new ZipArchive(zipStream, ZipArchiveMode.Read, leaveOpen: true);
		using Stream stream = (zipArchive.Entries.FirstOrDefault() ?? throw new InvalidDataException("PatchInfoV2.zip is empty.")).Open();
		using MemoryStream memoryStream = new MemoryStream();
		stream.CopyTo(memoryStream);
		return Parse(memoryStream.ToArray());
	}

	public byte[] ToBytes()
	{
		byte[] array = new byte[12 + Records.Count * 264];
		Encoding.ASCII.GetBytes("PAT2").CopyTo(array, 0);
		BinaryPrimitives.WriteUInt32LittleEndian(array.AsSpan(4), Version);
		BinaryPrimitives.WriteInt32LittleEndian(array.AsSpan(8), Records.Count);
		int num = 12;
		foreach (PatchRecord record in Records)
		{
			WriteCString(array.AsSpan(num, 200), record.FileName);
			WriteCString(array.AsSpan(num + 200, 50), record.PackageName);
			BinaryPrimitives.WriteUInt32LittleEndian(array.AsSpan(num + 252), record.FileSize);
			BinaryPrimitives.WriteUInt32LittleEndian(array.AsSpan(num + 256), record.Crc32);
			BinaryPrimitives.WriteUInt32LittleEndian(array.AsSpan(num + 260), record.Version);
			num += 264;
		}
		return array;
	}

	public void WriteZip(string zipPath)
	{
		using FileStream stream = File.Create(zipPath);
		using ZipArchive zipArchive = new ZipArchive(stream, ZipArchiveMode.Create);
		using Stream stream2 = zipArchive.CreateEntry("PatchInfoV2", CompressionLevel.Optimal).Open();
		stream2.Write(ToBytes());
	}

	private static string ReadCString(ReadOnlySpan<byte> s)
	{
		int num = s.IndexOf((byte)0);
		if (num >= 0)
		{
			s = s.Slice(0, num);
		}
		return Encoding.Latin1.GetString(s);
	}

	private static void WriteCString(Span<byte> dst, string s)
	{
		dst.Clear();
		byte[] bytes = Encoding.Latin1.GetBytes(s);
		int length = Math.Min(bytes.Length, dst.Length - 1);
		bytes.AsSpan(0, length).CopyTo(dst);
	}
}
