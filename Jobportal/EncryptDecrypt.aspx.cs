using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EncryptDecrypt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strMsg = null;
        string jScript = null;

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        clsEncryptDecrypt encode = new clsEncryptDecrypt();
        txtRes.Text = encode.Encrypt(this.txtID.Text.ToString(), true, "ItSeCZaIGhAm610654025810097284009!");

    }

    public void ShowDialog(Page sender, string sMsg, string iName)
    {
        string jScript = null;
        jScript = "<script language='JavaScript'>alert('" + sMsg + "');</script>";
        sender.RegisterClientScriptBlock(iName, jScript);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        clsEncryptDecrypt encode = new clsEncryptDecrypt();
        txtRes.Text = encode.Decrypt("ItSeCZaIGhAm610654025810097284009!", this.txtID.Text.ToString(),true);

    }
}