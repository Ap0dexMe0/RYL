using System;
using System.IO;
using System.Net;
using System.Text;

namespace launcher2;

internal class CHttpLoader : Singleton<CHttpLoader>
{
	private void removeSpace(StringBuilder _result)
	{
		_result.Replace("\n", "");
		_result.Replace("\r", "");
		_result.Replace(" ", "");
	}

	private bool IsSuccessStatusCode(HttpWebResponse resp)
	{
		HttpStatusCode statusCode = resp.StatusCode;
		if (statusCode >= HttpStatusCode.OK)
		{
			return statusCode <= (HttpStatusCode)299;
		}
		return false;
	}

	public void GetStringFromUrl(StringBuilder _url, StringBuilder _result)
	{
		try
		{
			HttpWebRequest httpWebRequest = (HttpWebRequest)WebRequest.Create(_url.ToString());
			httpWebRequest.Method = "GET";
			httpWebRequest.Proxy = null;
			httpWebRequest.Accept = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";
			httpWebRequest.UserAgent = "Mozilla/5.0 (Windows NT 6.1; rv:37.0) Gecko/20100101 Firefox/37.0";
			httpWebRequest.KeepAlive = true;
			httpWebRequest.Headers.Add("Accept-Language: ko-KR,ko;q=0.8,en-US;q=0.5,en;q=0.3");
			using HttpWebResponse httpWebResponse = (HttpWebResponse)httpWebRequest.GetResponse();
			if (IsSuccessStatusCode(httpWebResponse))
			{
				using (Stream stream = httpWebResponse.GetResponseStream())
				{
					using StreamReader streamReader = new StreamReader(stream);
					_result.Append(streamReader.ReadToEnd());
					removeSpace(_result);
					return;
				}
			}
			throw new Exception($"Error retrieving data: {httpWebResponse.StatusCode}");
		}
		catch (Exception ex)
		{
			Console.WriteLine("Error retrieving data: " + ex.Message);
		}
	}
}
