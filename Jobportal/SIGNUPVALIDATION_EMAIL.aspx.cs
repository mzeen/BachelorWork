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
using System.Data.SqlClient;
//for email
using System.Net.Mail;
using System.Net;
//sql
using System.Data;
//sql conn
using System.Data.SqlClient;
//hasing
using System.Web.Security;
//system config from web
using System.Configuration;

using System.Windows.Forms;

public partial class SIGNUP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            imgToVerify.ImageUrl = "~/frmGeneratePic.aspx";
            pnlinfo.Visible = false;
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
       
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();

        conn.ConnectionString = ConfigurationManager.ConnectionStrings["INVENTORYSALESConnectionString"].ToString();
        try
        {
            conn.Open();
            cmd.Connection = conn;

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "usp_Insert_CUSTOMER";

            // Add the input parameter and set its value 

            SqlParameter param_CUSTOMER_NAME = new SqlParameter("@CUSTOMER_NAME", SqlDbType.VarChar, 100);
            SqlParameter param_EMAIL_ID = new SqlParameter("@EMAIL_ID", SqlDbType.VarChar, 50);
            SqlParameter param_COUNTRY_ID = new SqlParameter("@COUNTRY_ID", SqlDbType.Int, 10);
            SqlParameter param_CITY_ID = new SqlParameter("@CITY_ID", SqlDbType.Int, 10);
            SqlParameter param_PIN_CODE = new SqlParameter("@PIN_CODE", SqlDbType.VarChar, 50);
            SqlParameter param_KEYWORD = new SqlParameter("@KEYWORD", SqlDbType.VarChar, 50);
            SqlParameter param_ADDRESS = new SqlParameter("@ADDRESS", SqlDbType.VarChar, 10);
            SqlParameter param_USER_NAME = new SqlParameter("@USER_NAME", SqlDbType.VarChar, 50);
            SqlParameter param_PASSWORD = new SqlParameter("@PASSWORD", SqlDbType.VarChar, 50);
            SqlParameter param_MEM_TYPE = new SqlParameter("@MEM_TYPE", SqlDbType.VarChar, 50);
            SqlParameter param_ACTIVE = new SqlParameter("@ACTIVE", SqlDbType.VarChar, 50);
            SqlParameter param_CUSTOMER_ID = new SqlParameter("@CUSTOMER_ID", SqlDbType.Int, 10);
            SqlParameter param_UNEMAIL_ID = new SqlParameter("@UNEMAIL_ID", SqlDbType.VarChar, 100);

            param_CUSTOMER_NAME.Value = this.txtName.Text;
            param_EMAIL_ID.Value = txtUserID.Text;
            param_COUNTRY_ID.Value = DropDownList1.SelectedValue;
            param_CITY_ID.Value = DropDownList2.SelectedValue;
            param_PIN_CODE.Value = this.txtPIN.Text;
            param_KEYWORD.Value = this.txtNIC.Text;
            param_ADDRESS.Value = this.txtAddress.Text;
            param_USER_NAME.Value = this.txtUserID.Text;

            string Hashpass = FormsAuthentication.HashPasswordForStoringInConfigFile(
                               this.txtPassword.Text, "sha1");

            param_PASSWORD.Value = Hashpass;

            param_MEM_TYPE.Value = "M".ToString();
            param_ACTIVE.Value = "Inactive".ToString();
            //param_DOB.Value = this.txtDOB.Text + " 00:00:00 AM".ToString();
            // Add the output parameter and set its direction 
            param_CUSTOMER_ID.Direction = ParameterDirection.Output;
            param_UNEMAIL_ID.Direction = ParameterDirection.Output;

            //add paramaemter in command
            cmd.Parameters.Add(param_CUSTOMER_NAME);
            cmd.Parameters.Add(param_EMAIL_ID);
            cmd.Parameters.Add(param_COUNTRY_ID);
            cmd.Parameters.Add(param_CITY_ID);
            cmd.Parameters.Add(param_PIN_CODE);
            cmd.Parameters.Add(param_KEYWORD);
            cmd.Parameters.Add(param_ADDRESS);
            cmd.Parameters.Add(param_USER_NAME);
            cmd.Parameters.Add(param_PASSWORD);

            cmd.Parameters.Add(param_MEM_TYPE);
            cmd.Parameters.Add(param_ACTIVE);
            cmd.Parameters.Add(param_CUSTOMER_ID);
            cmd.Parameters.Add(param_UNEMAIL_ID);
            if (Session["Rnumber"].ToString() == this.txtToVerify.Text)
            {
                if (cmd.ExecuteNonQuery() > 0)
                {
                    this.pnlinfo.Visible = true;
                    lblErrorMsg.Visible = true;
                    lblErrorMsg.Text = "User Created Successfully..!";
                    mail(txtName.Text, txtNIC.Text, txtAddress.Text, txtHint.Text, this.txtPIN.Text, txtUserID.Text);
                }
                else
                {
                    this.pnlinfo.Visible = true;
                    lblErrorMsg.Visible = true;
                    lblErrorMsg.Text = "User NOT Created Successfully..!";
                    mail(txtName.Text, txtNIC.Text, txtAddress.Text, txtHint.Text, this.txtPIN.Text, txtUserID.Text);
                }
            }
            else
            {
                this.pnlinfo.Visible = true;
                lblErrorMsg.Visible = true;
                lblErrorMsg.Text = "PLZ TYPE CORRECT CODE..!";
             
            }

        }
        catch (Exception ex)
        {
            lblErrorMsg.Visible = true;
            lblErrorMsg.Text = ex.Message;

        }
        finally
        {
            conn.Close();
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void AdRotator1_AdCreated(object sender, AdCreatedEventArgs e)
    {
        // Synchronize the Hyperlink control.
        lnkBanner.NavigateUrl = e.NavigateUrl;
        // Synchronize the text of the link.
        lnkBanner.Text = "Click here for information about our sponsor: ";
        lnkBanner.Text += e.AlternateText;
    }
    public void mail(string name, string nic, string address, string hint, string pin, string email)
    {
        string strHtml = "";

        Mail mn = new Mail();
        string mail_email = mn.Mail_email();
        string mail_pass = mn.Mail_password();
        string mail_smtp = mn.Mail_smtp();
        int mail_smtpport = mn.Mail_smtpport();

        string webadd="www.abc.com";
        /////////////////////////////////////////////////SMTP Settings///////////////////////
        SmtpClient client = new SmtpClient(mail_smtp, mail_smtpport);

        client.EnableSsl = true;

        MailAddress from = new MailAddress(mail_email, "Abdul Majid");

        MailAddress to = new MailAddress(email, name);

        MailMessage message = new MailMessage(from, to);

        message.IsBodyHtml = true;
       
        strHtml = "<div >" +
                    "<center>"+
                      "<font size='3'>"+
                        "<b><u>Registration Information</u></b>"+
                      "</font>"+                   
                    "</center>" +
                  
                  "<br><br><br>" + 
                  
                  "Dear " + name + ","+
                  
                  "<br><br>We are pleased to inform you that ABC intends to register following information from their bio data<br><br>" +
                  "<b>NIC No. : </b>" + nic + "<br>" + 
                  "<b>Address : </b>" + address + "<br>"+
                  "<br>" +
                  "<center>"+
                    "<a href='"+webadd+"'>"+
                        "Kindly visit our website for activation"+
                     "</a>"+
                   "</center>"+
                   
                  "</li>"+
                  "<br>Regards," +
                  "<br>Registration System," +
                  "<br><br>"+
                    "<I>Please do not reply to this email. This is a computer generated message and hence requires no signature</I>" +
               "</div>";

        message.Body = strHtml;
        
        message.Subject = "Online Activation Letter";

        NetworkCredential myCreds = new NetworkCredential(mail_email, mail_pass, "");
        
        client.Credentials = myCreds;
        /////////////////////////////////////////////////////////////////////////////////////
        try
        {
            client.Send(message);

        }

        catch (Exception ex)
        {

            //Response.Write("Problem with Mail Server");

            this.pnlinfo.Visible = true;
            lblErrorMsg.Visible = true;
            lblErrorMsg.Text = ex.Message;
        }

    }

}
