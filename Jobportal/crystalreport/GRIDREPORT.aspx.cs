using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class CRYSTALREPORT_GRIDREPORT : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        HyperLink hypProf = (HyperLink)e.Row.FindControl("HyperNAME");
        Label item_label = (Label)e.Row.FindControl("lblCat");


        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            hypProf.NavigateUrl = CreateTamperProofURL("../CrystalReport/Report.aspx", "cat_id=" + item_label.Text);
        }
    }

    public string CreateTamperProofURL(string url, string tamperProofParams)
    {

        string tpURL = url;
        if (tamperProofParams.Length > 0)
        {
            url += "?";
        }

        if (tamperProofParams.Length > 0)
            url += tamperProofParams;

        //Add on the tamper-proof digest, if needed
        if (tamperProofParams.Length > 0)
        {
            url += string.Concat("&Digest=", GetDigest(tamperProofParams));
        }

        return url;
    }

    public string GetDigest(string tamperProofParams)
    {
        string SecretSalt = "H3#@*ALMLLlk31q4l1ncL#@RFHF#N3fNM><#WH$O@#!FN#LNl33N#LNFl#J#Y$#IOHhnf;;3qrthl3q";

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

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
