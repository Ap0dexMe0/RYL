using System;
using System.IO;
using NAudio.Vorbis;
using NAudio.Wave;

namespace NorthpoleLauncher;

public sealed class BgmPlayer : IDisposable
{
	private readonly VorbisWaveReader _reader;

	private readonly WaveOutEvent _out;

	private bool _disposed;

	public bool IsPlaying
	{
		get
		{
			//IL_000e: Unknown result type (might be due to invalid IL or missing references)
			//IL_0014: Invalid comparison between Unknown and I4
			if (!_disposed)
			{
				return (int)_out.PlaybackState == 1;
			}
			return false;
		}
	}

	public BgmPlayer(string oggPath, float volume = 0.45f)
	{
		//IL_0008: Unknown result type (might be due to invalid IL or missing references)
		//IL_0012: Expected Obj, but got Unknown
		//IL_0013: Unknown result type (might be due to invalid IL or missing references)
		//IL_0018: Unknown result type (might be due to invalid IL or missing references)
		//IL_0028: Expected Obj, but got Unknown
		_reader = new VorbisWaveReader(oggPath);
		_out = new WaveOutEvent
		{
			DesiredLatency = 200
		};
		_out.Init((IWaveProvider)(object)_reader);
		_out.Volume = Math.Clamp(volume, 0f, 1f);
		_out.PlaybackStopped += (object? _, StoppedEventArgs _) =>
		{
			if (_disposed)
			{
				return;
			}
			try
			{
				((Stream)(object)_reader).Position = 0L;
				_out.Play();
			}
			catch
			{
			}
		};
	}

	public void Play()
	{
		_out.Play();
	}

	public void Pause()
	{
		_out.Pause();
	}

	public void Resume()
	{
		_out.Play();
	}

	public void Dispose()
	{
		if (!_disposed)
		{
			_disposed = true;
			try
			{
				_out.Stop();
			}
			catch
			{
			}
			_out.Dispose();
			((Stream)(object)_reader).Dispose();
		}
	}
}
