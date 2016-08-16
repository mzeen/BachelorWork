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
public partial class login : System.Web.UI.Page
{
   
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();

       conn.ConnectionString = ConfigurationManager.ConnectionStrings["INVENTORYSALESConnectionString"].ToString();
       conn.Open();

        cmd.Connection = conn;

        cmd.CommandType = CommandType.Text;
        
        string Hashpass;

        if (Request.Cookies["UserInfo"] != null)
           Hashpass = FormsAuthentication.HashPasswordForStoringInConfigFile(this.Label1.Text, "sha1");
        else
           Hashpass = FormsAuthentication.HashPasswordForStoringInConfigFile(password.Text, "sha1");

        cmd.CommandText = "Select * from LOGIN where USER_NAME='" + this.email.Text + "' and password = '" + Hashpass + "'"; 
       
        SqlDataReader re = cmd.ExecuteReader();

        if (Request.Cookies["UserInfo"] == null)
        {
            if (this.chkCook.Checked)
            {
                // Create a cookie.
                HttpCookie cookUserInfo = new HttpCookie("UserInfo");
                // Fill in the keys from the form data.
                cookUserInfo["UserName"] = this.email.Text;
                cookUserInfo["Password"] = this.password.Text;

                // Set the expiration.
                cookUserInfo.Expires = DateTime.Now.AddDays(30);
                // Add the cookie.
                Response.Cookies.Add(cookUserInfo);
            }
        }

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

          litMessage.Text= "INVALID ID";
           }

       
        
        }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["UserInfo"] != null)
        {
            // Get the cookie.
            HttpCookie cookUserInfo = Request.Cookies["UserInfo"];
            // Display a message showing time of last visit.
           // litMessage.Text = "user name, pwd: " +
             //   cookUserInfo.Values;
            this.email.Text = cookUserInfo["UserName"];
            this.password.Text = cookUserInfo["Password"];
            this.Label1.Text = cookUserInfo["Password"];

        }

    }
}

   

