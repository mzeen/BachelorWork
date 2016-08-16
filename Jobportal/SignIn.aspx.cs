using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//sql
using System.Data;
//sql conn
using System.Data.SqlClient;
//hasing
using System.Web.Security;
//system config from web
using System.Configuration;

public partial class SignIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();

        conn.ConnectionString = ConfigurationManager.ConnectionStrings["INVENTORYSALESConnectionString"].ToString();
        conn.Open();

        cmd.Connection = conn;

        cmd.CommandType = CommandType.Text;

        string Hashpass = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "sha1");

        cmd.CommandText = "Select * from LOGIN where USER_NAME='" + this.txtUserID.Text + "' and password = '" + Hashpass + "'";

        SqlDataReader re = cmd.ExecuteReader();

        if (re.HasRows)
        {
            while (re.Read())
            {
                Session["email_id"] = re["USER_NAME"].ToString();
                Session["MemberType"] = re["MEM_TYPE"].ToString();
                Session["ISLOGIN"] = "TRUE";

                if (Session["MemberType"].ToString() == "A".ToString())
                {
                    Response.Redirect("frmAdminWelcome.aspx");
                }
                else if (Session["MemberType"].ToString() == "M".ToString())
                {
                    Response.Redirect("frmMemberWelcome.aspx");
                }
                else
                {
                    Response.Redirect("INVALID.aspx");
                }
            }
        }
        else
        {

            lblMessage.Text = "INVALID ID";

        }
    }
}