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
            if (!this.IsPostBack)
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ToString();
                conn.Open();


                DataTable aDataTable;
                SqlDataAdapter aAdapter;
                DataSet aDataSet;
                aAdapter = new SqlDataAdapter("SELECT SupplierID, CompanyName FROM Suppliers", conn);
                aDataSet = new DataSet();

                aAdapter.Fill(aDataSet, "Suppliers");
                aDataTable = aDataSet.Tables["Suppliers"];

                int totalRec = aDataTable.Rows.Count;

                if (totalRec > 0)
                {
                    for (int i = 0; i <= totalRec - 1; i++)
                    {

                        // Create the new node. 

                        MenuItem newNode = new MenuItem();

                      
                        newNode.Text = (aDataTable.Rows[i]["CompanyName"]).ToString();
                        newNode.Value = (aDataTable.Rows[i]["SupplierID"]).ToString();
                        newNode.NavigateUrl = "~/PRODUCT.aspx?SUP_ID=" + (aDataTable.Rows[i]["SupplierID"]).ToString();

                        // Add the new node to the parent and ChildNodes collection of the parent node.

                        PartsMenu.Items.Add(newNode);

                    }
                }
                conn.Close();

            }
        }
    }
}