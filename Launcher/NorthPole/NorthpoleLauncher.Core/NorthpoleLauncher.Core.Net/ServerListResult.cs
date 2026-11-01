using System.Collections.Generic;

namespace NorthpoleLauncher.Core.Net;

public sealed record ServerListResult(uint ClientVersion, string PatchUrl, IReadOnlyList<GameServer> Servers);
