using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data;
using System.Data.SqlClient;
public partial class MENU_WITHCOMMAND : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            SqlConnection conn = new SqlConnection();
            SqlCommand cmd = new SqlCommand();

            conn.ConnectionString = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ToString();
            conn.Open();

            cmd.Connection = conn;

            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "Select CategoryID, CategoryName From Categories";

            SqlDataReader re = cmd.ExecuteReader();

            if (re.HasRows)
            {
                while (re.Read())
                {
                    MenuItem newNode = new MenuItem();

                    newNode.Text = re["CategoryName"].ToString();
                    newNode.Value = re["CategoryID"].ToString();
                    newNode.NavigateUrl = "~/PRODUCT/" + re["CategoryName"].ToString();

                    PartsMenu.Items.Add(newNode);
                }
            }


        }
    }
}