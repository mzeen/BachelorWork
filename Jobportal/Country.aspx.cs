using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Country : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();

        conn.ConnectionString = ConfigurationManager.ConnectionStrings["INVENTORYSALESConnectionString"].ToString();
        conn.Open();
        cmd.Connection = conn;

        cmd.CommandType = CommandType.Text;
        cmd.CommandText = " Insert into COUNTRY (Country_Name) values( '" + txtCountry.Text + "') ";
        cmd.ExecuteNonQuery();

        Response.Redirect("Country.aspx");
        
    }
}