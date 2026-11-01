using System;
using System.Net;
using System.Security.Cryptography;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;

namespace launcher2;

public partial class LoginWindow : UserControl, IComponentConnector
{
	private bool _blockRetry;

	public event Action<bool> LoginCompleted;

	public LoginWindow()
	{
		InitializeComponent();
		if (string.IsNullOrEmpty(CMain.Get_StringTable(74)))
		{
			LoginCompleted?.Invoke(obj: false);
			return;
		}
		Loaded += (object s, RoutedEventArgs e) =>
		{
			Ctr_UserID.Focus();
		};
	}

	private void Grid_KeyDown(object sender, KeyEventArgs e)
	{
		if (e.Key == Key.Return && !_blockRetry)
		{
			TryLogin();
		}
	}

	private void Input_KeyDown(object sender, KeyEventArgs e)
	{
		if (e.Key == Key.Return && !_blockRetry)
		{
			TryLogin();
		}
	}

	private void Ctr_UserID_TextChanged(object sender, TextChangedEventArgs e)
	{
		_blockRetry = false;
	}

	private void Ctr_Password_PasswordChanged(object sender, RoutedEventArgs e)
	{
		_blockRetry = false;
	}

	private void loginBtn_Click(object sender, RoutedEventArgs e)
	{
		TryLogin();
	}

	private void TryLogin()
	{
		string text = Ctr_UserID.Text.Trim();
		string password = Ctr_Password.Password;
		if (string.IsNullOrEmpty(text))
		{
			MessageBox.Show("Please enter your User ID.", "Input Error", MessageBoxButton.OK, MessageBoxImage.Exclamation);
			Ctr_UserID.Focus();
			return;
		}
		if (string.IsNullOrEmpty(password))
		{
			MessageBox.Show("Please enter your Password.", "Input Error", MessageBoxButton.OK, MessageBoxImage.Exclamation);
			Ctr_Password.Focus();
			return;
		}
		string text2 = Authenticate(text, password);
		if (text2.Equals(""))
		{
			_blockRetry = true;
			LoginCompleted?.Invoke(obj: true);
		}
		else
		{
			_blockRetry = true;
			MessageBox.Show(text2, "Login Failed", MessageBoxButton.OK, MessageBoxImage.Hand);
			Ctr_Password.Focus();
		}
	}

	private string Encrypt(string password)
	{
		using (SHA256 sHA = SHA256.Create())
		{
			byte[] bytes = Encoding.UTF8.GetBytes(password);
			byte[] array = sHA.ComputeHash(bytes);
			StringBuilder stringBuilder = new StringBuilder(array.Length * 2);
			byte[] array2 = array;
			foreach (byte b in array2)
			{
				stringBuilder.Append(b.ToString("x2"));
			}
			password = stringBuilder.ToString();
		}
		password = password.Substring(0, password.Length / 2);
		return password;
	}

	private string Authenticate(string userId, string password)
	{
		string value = Encrypt(password);
		string text = WebUtility.UrlEncode(userId);
		string text2 = WebUtility.UrlEncode(value);
		string text3 = CMain.Get_StringTable(74);
		StringBuilder stringBuilder = new StringBuilder();
		CMain.Dll_GetUrlChk(new StringBuilder(text3 + "&vValue0=" + text + "&vValue1=" + text2), stringBuilder);
		return stringBuilder.ToString();
	}
}
