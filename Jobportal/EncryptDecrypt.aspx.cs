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

       //--------------------------Authorization-----------------------------

        //if (Session["LoginID"] == null)
        //{
        //    strMsg = "Your session has been expired. Please Re-Login";
        //    ShowDialog(Page, strMsg, "alert");
        //    jScript = "<script>window.parent.navigate('../main.aspx');</script>";
        //    Page.RegisterClientScriptBlock("clientScript", jScript);
        //}

        //else if (!(Session["MemberType"] == "S"))
        //{

        //    strMsg = "You are not authorized to view this page.";
        //    ShowDialog(Page, strMsg, "alert");
        //    jScript = "<script>window.parent.navigate('../main.aspx');</script>";
        //    Page.RegisterClientScriptBlock("clientScript", jScript);
        //    return;
        //}
        //--------------------------END Authorization-----------------------------

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        clsEncryptDecrypt encode = new clsEncryptDecrypt();
        //FOR TRACING USER NAME AND PASSWORD
        txtRes.Text = encode.Encrypt(this.txtID.Text.ToString(), true, "ItSeCZaIGhAm610654025810097284009!");

    }

    public void ShowDialog(Page sender, string sMsg, string iName)
    {
        string jScript = null;
        //MsgBosMsg, MsgBoxStyle.Information, "PAMS")
        jScript = "<script language='JavaScript'>alert('" + sMsg + "');</script>";
        sender.RegisterClientScriptBlock(iName, jScript);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        clsEncryptDecrypt encode = new clsEncryptDecrypt();
        //FOR TRACING USER NAME AND PASSWORD
        
        txtRes.Text = encode.Decrypt("ItSeCZaIGhAm610654025810097284009!", this.txtID.Text.ToString(),true);

    }
}