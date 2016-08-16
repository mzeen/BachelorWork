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
    
    protected void Page_Load(object sender, EventArgs e)
    {      
        string date = System.DateTime.Today.ToShortDateString();
       
        Session["date"] = date;

        // (1) Check if browser accepts cookies.
        if (Request.Browser.Cookies)
        {
            // (2) If the cookie does not exist...
            if (Request.Cookies["LastVisit"] == null)
            {
                // (3) Create the cookie.
                HttpCookie cookLastVisit = new HttpCookie("LastVisit",
                    DateTime.Now.ToString());
                // (4) Set the expiration to tommorrow.
                cookLastVisit.Expires = DateTime.Now.AddDays(1);
                // (5) Add to cookies collection.
                Response.Cookies.Add(cookLastVisit);
                // Display message.
                litMessage.Text = "This is your first visit.";
            }
            else
            {
                // Get the cookie.
                HttpCookie cookLastVisit = Request.Cookies["LastVisit"];
                // Display a message showing time of last visit.
                litMessage.Text = "You last visited this page: " +
                    cookLastVisit.Value;
                // Update the cookie on the client.
                Response.Cookies["LastVisit"].Value =
                    DateTime.Now.ToString();
                Response.Cookies["LastVisit"].Expires =
                    DateTime.Now.AddDays(1);
            }
        }
        else
        {
            litMessage.Text = "Your browser does not accept cookies.";
        }

        
    }
  

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Cookies["LastVisit"].Expires = DateTime.Now;
       
    }
}
