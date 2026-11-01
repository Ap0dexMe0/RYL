using System;
using System.Buffers.Binary;
using System.Collections.Generic;
using System.IO;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace NorthpoleLauncher.Core.Net;

public static class LoginServerClient
{
	public const byte CmdLoginServerList = 86;

	public const int DefaultPort = 10101;

	private const int PatchAddressLength = 100;

	private const int ServerGroupSize = 28;

	private const int MaxServers = 10;

	public static async Task<ServerListResult> GetServerListAsync(string host, int port, uint clientVersion, TimeSpan timeout, CancellationToken ct = default(CancellationToken))
	{
		using CancellationTokenSource cts = CancellationTokenSource.CreateLinkedTokenSource(ct);
		cts.CancelAfter(timeout);
		using TcpClient tcp = new TcpClient();
		await tcp.ConnectAsync(host, port, cts.Token).ConfigureAwait(continueOnCapturedContext: false);
		using NetworkStream stream = tcp.GetStream();
		byte[] array = new byte[4];
		BinaryPrimitives.WriteUInt32LittleEndian(array, clientVersion);
		byte[] array2 = RylPacket.Build(86, array, 0, 1, 1);
		await stream.WriteAsync(array2, cts.Token).ConfigureAwait(continueOnCapturedContext: false);
		byte[] header = await ReadExactAsync(stream, 12, cts.Token).ConfigureAwait(continueOnCapturedContext: false);
		int total = RylPacket.PeekLength(header, out var _);
		if (total < 12)
		{
			throw new InvalidDataException("Login server sent a malformed reply.");
		}
		byte[] array3 = await ReadExactAsync(stream, total - 12, cts.Token).ConfigureAwait(continueOnCapturedContext: false);
		byte[] array4 = new byte[total];
		header.CopyTo(array4, 0);
		array3.CopyTo(array4, 12);
		ParsedPacket parsedPacket = RylPacket.Parse(array4);
		if (parsedPacket.Cmd != 86)
		{
			throw new InvalidDataException($"Unexpected reply command 0x{parsedPacket.Cmd:X2}.");
		}
		if (parsedPacket.Error != 0)
		{
			throw new InvalidDataException($"Login server returned error {parsedPacket.Error}.");
		}
		return ParseServerList(parsedPacket.Body);
	}

	public static ServerListResult ParseServerList(ReadOnlySpan<byte> b)
	{
		if (b.Length < 106)
		{
			throw new InvalidDataException("Server list body too short.");
		}
		uint clientVersion = BinaryPrimitives.ReadUInt32LittleEndian(b);
		string patchUrl = ReadCString(b.Slice(4, 100));
		int val = BinaryPrimitives.ReadUInt16LittleEndian(b.Slice(104));
		val = Math.Min(val, 10);
		List<GameServer> list = new List<GameServer>(val);
		int num = 106;
		int num2 = 0;
		while (num2 < val && num + 28 <= b.Length)
		{
			int num3 = b[num];
			string name = ReadCString(b.Slice(num + 1, 15));
			int clients = BinaryPrimitives.ReadInt32LittleEndian(b.Slice(num + 16));
			int clients2 = BinaryPrimitives.ReadInt32LittleEndian(b.Slice(num + 20));
			IPAddress address = new IPAddress(b.Slice(num + 24, 4).ToArray());
			list.Add(new GameServer(num3, name, clients, clients2, address));
			num2++;
			num += 28;
		}
		return new ServerListResult(clientVersion, patchUrl, list);
	}

	private static string ReadCString(ReadOnlySpan<byte> s)
	{
		int num = s.IndexOf((byte)0);
		if (num >= 0)
		{
			s = s.Slice(0, num);
		}
		return Encoding.Latin1.GetString(s).Trim();
	}

	private static async Task<byte[]> ReadExactAsync(NetworkStream s, int n, CancellationToken ct)
	{
		byte[] buf = new byte[n];
		int num;
		for (int got = 0; got < n; got += num)
		{
			num = await s.ReadAsync(buf.AsMemory(got, n - got), ct).ConfigureAwait(continueOnCapturedContext: false);
			if (num <= 0)
			{
				throw new EndOfStreamException("Login server closed the connection.");
			}
		}
		return buf;
	}
}
