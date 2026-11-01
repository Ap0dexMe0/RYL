using System.Net;

namespace NorthpoleLauncher.Core.Net;

public sealed record GameServer(int Group, string Name, int Clients1, int Clients2, IPAddress Address)
{
	public int Online => Clients1 + Clients2;
}
