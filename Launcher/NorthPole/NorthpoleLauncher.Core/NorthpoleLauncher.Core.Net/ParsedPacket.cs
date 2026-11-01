namespace NorthpoleLauncher.Core.Net;

public sealed record ParsedPacket(byte Cmd, ushort Error, ushort State, byte[] Body);
