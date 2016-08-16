using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Security.Cryptography;
using System.Text;
public class clsEncryptDecrypt
{
    private const string SecretSalt="H3#@*ALMLLlk31q4l1ncL#@RFHF#N3fNM><#WH$O@#!FN#LNl33N#LNFl#J#Y$#IOHhnf;;3qrthl3q";

	public string Decrypt(string strKey, string TextFrom,bool bEncryptDecrypt)
	{
		string functionReturnValue = null;
		string decrypted = null;
		
		TripleDESCryptoServiceProvider des = null;
		MD5CryptoServiceProvider hashmd5 = null;

		byte[] pwdhash = null;
		byte[] buff = null;

		//password = "ItSeCZaIGhAm610654025810097284009!"
		//original = TextFrom

		try {

			hashmd5 = new MD5CryptoServiceProvider();
			//pwdhash = hashmd5.ComputeHash(ASCIIEncoding.ASCII.GetBytes(password))

			pwdhash = hashmd5.ComputeHash(ASCIIEncoding.ASCII.GetBytes(strKey));

			hashmd5 = null;

			des = new TripleDESCryptoServiceProvider();

			des.Key = pwdhash;

			des.Mode = CipherMode.ECB;

			buff = Convert.FromBase64String(TextFrom);

			decrypted = ASCIIEncoding.ASCII.GetString(des.CreateDecryptor().TransformFinalBlock(buff, 0, buff.Length));

			des = null;

			functionReturnValue = decrypted;

			return functionReturnValue;
		}

		catch (Exception ex)
        {
			string strMessage = null;
			strMessage = ex.Message;
			//MsgBox(strMessage)
		}

		return functionReturnValue;
	}

	public string Encrypt(string TextFrom, bool bEncryptDecrypt, string strKey)
	{
		string functionReturnValue = null;
		string original = null;
		string encrypted = null;
	
		TripleDESCryptoServiceProvider des = null;
		MD5CryptoServiceProvider hashmd5 = null;

		byte[] pwdhash = null;
		byte[] buff = null;

		//password = "ItSeCZaIGhAm610654025810097284009!"
		original = TextFrom;

		try {
			hashmd5 = new MD5CryptoServiceProvider();
			//pwdhash = hashmd5.ComputeHash(ASCIIEncoding.ASCII.GetBytes(password))

			pwdhash = hashmd5.ComputeHash(ASCIIEncoding.ASCII.GetBytes(strKey));
			hashmd5 = null;

			des = new TripleDESCryptoServiceProvider();
			des.Key = pwdhash;

			des.Mode = CipherMode.ECB;
			//If bEncryptDecrypt Then

			buff = ASCIIEncoding.ASCII.GetBytes(original);
			encrypted = Convert.ToBase64String(des.CreateEncryptor().TransformFinalBlock(buff, 0, buff.Length));
			des = null;

			functionReturnValue = encrypted;
		}
		catch (Exception ex) 
        {
			string strMessage = null;
            strMessage = ex.Message;
			//MsgBox(strMessage)
		}
		return functionReturnValue;
	}

	public string CreateTamperProofURL(string url, string nonTamperProofParams, string tamperProofParams)
	{
		string tpURL = url;
		if (nonTamperProofParams.Length > 0 || tamperProofParams.Length > 0) 
        {
			url += "?";
		}

		//Add on the tamper & non-tamper proof parameters, if any
		if (nonTamperProofParams.Length > 0) {
			url += nonTamperProofParams;

			if (tamperProofParams.Length > 0) url += "&"; 
		}

		if (tamperProofParams.Length > 0) url += tamperProofParams; 

		//Add on the tamper-proof digest, if needed
		if (tamperProofParams.Length > 0) {
			url += string.Concat("&Digest=", GetDigest(tamperProofParams));
		}

		return url;
	}


	public string GetDigest(string tamperProofParams)
	{
		string Digest = string.Empty;
		string input = string.Concat(SecretSalt, tamperProofParams, SecretSalt);

		//The array of bytes that will contain the encrypted value of input
		byte[] hashedDataBytes = null;

		//The encoder class used to convert strPlainText to an array of bytes
		System.Text.UTF8Encoding encoder = new System.Text.UTF8Encoding();

		//Create an instance of the MD5CryptoServiceProvider class
		System.Security.Cryptography.MD5CryptoServiceProvider md5Hasher = new System.Security.Cryptography.MD5CryptoServiceProvider();

		//Call ComputeHash, passing in the plain-text string as an array of bytes
		//The return value is the encrypted value, as an array of bytes
		hashedDataBytes = md5Hasher.ComputeHash(encoder.GetBytes(input));

		//Base-64 Encode the results and strip off ending '==', if it exists
		Digest = Convert.ToBase64String(hashedDataBytes).TrimEnd("=".ToCharArray());

		return Digest;
	}



}
