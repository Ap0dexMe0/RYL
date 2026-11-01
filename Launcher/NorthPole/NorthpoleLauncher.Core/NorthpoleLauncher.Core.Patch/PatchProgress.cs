using System;

namespace NorthpoleLauncher.Core.Patch;

public sealed record PatchProgress(double OverallPercent, string Status, string? FileName = null, long BytesDone = 0L, long BytesTotal = 0L)
{
	public double FilePercent
	{
		get
		{
			if (BytesTotal <= 0)
			{
				return 100.0;
			}
			return Math.Min(100.0, (double)BytesDone * 100.0 / (double)BytesTotal);
		}
	}
}
