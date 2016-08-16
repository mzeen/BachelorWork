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
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ToString();
        conn.Open();

        DataTable aDataTable;
        SqlDataAdapter aAdapter;
        DataSet aDataSet;
        aAdapter = new SqlDataAdapter("Select CategoryID, CategoryName From Categories", conn);
        aDataSet = new DataSet();

        aAdapter.Fill(aDataSet, "Categories");
        aDataTable = aDataSet.Tables["Categories"];

        int totalRec = aDataTable.Rows.Count;

        if (totalRec > 0)
        {
            for (int i = 0; i <= totalRec - 1; i++)
            {

                // Create the new node. Notice that the CategoryId is stored in the Value property 
                // of the node. This will make querying for items in a specific category easier when
                           
                MenuItem newNode = new MenuItem();

                newNode.Text = (aDataTable.Rows[i]["CategoryName"]).ToString();
                newNode.Value = (aDataTable.Rows[i]["CategoryID"]).ToString();
               
               // // Create the child node. Notice that the CategoryId is stored in the Value property 

                DataTable bDataTable;
                SqlDataAdapter bAdapter;
                DataSet bDataSet;
                bAdapter = new SqlDataAdapter("Select ProductID,ProductName From Products Where CategoryID=" + (aDataTable.Rows[i]["CategoryID"]).ToString(), conn);
                bDataSet = new DataSet();

                bAdapter.Fill(bDataSet, "Products");
                bDataTable = bDataSet.Tables["Products"];

                int btotalRec = bDataTable.Rows.Count;

                if (btotalRec > 0)
                {
                    for (int j = 0; j <= btotalRec - 1; j++)
                    {
                  // Create the child node.
                    
                        MenuItem childNode = new MenuItem();

                        childNode.Text = (bDataTable.Rows[j]["ProductName"]).ToString();
                        childNode.Value = (bDataTable.Rows[j]["ProductID"]).ToString();
                       
                        newNode.ChildItems.Add(childNode);
                    }

                }
                // Add the new node to the parent and ChildNodes collection of the parent node.
            
                PartsMenu.Items.Add(newNode);
                
            }
        }
        conn.Close();
        }
    }
}