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

            cmd.CommandText = "SELECT SupplierID, CompanyName FROM Suppliers";

            SqlDataReader re = cmd.ExecuteReader();

            if (re.HasRows)
            {
                while (re.Read())
                {
                    MenuItem newNode = new MenuItem();

                    newNode.Text = re["CompanyName"].ToString();
                    newNode.Value = re["SupplierID"].ToString();
                    newNode.NavigateUrl = "~/PRODUCT.aspx?SUP_ID=" + re["SupplierID"].ToString();

                    PartsMenu.Items.Add(newNode);
                }
            }


        }
    }
}