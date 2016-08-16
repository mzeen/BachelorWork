using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class TREEWITHCOMMAND : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void PopulateNode(object sender, TreeNodeEventArgs e)
    {

        // Call the appropriate method to populate a node at a particular level.
        switch (e.Node.Depth)
        {
            case 0:
                // Populate the first-level nodes.
                PopulateCategories(e.Node);
                break;


            case 1:
                // Populate the second-level nodes.
                PopulateProducts(e.Node);
                break;

            default:
                break;
            // Do nothing.

        }

    }

    public void PopulateCategories(TreeNode node)
    {
        // Declare the connection string. This example uses Microsoft SQL Server 
        // and connects to the Northwind sample database.
        SqlConnection aConnection = new SqlConnection();
        aConnection.ConnectionString = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ToString();
        aConnection.Open();

        DataTable aDataTable;
        SqlDataAdapter aAdapter;
        DataSet aDataSet;
        aAdapter = new SqlDataAdapter("Select CategoryID, CategoryName From Categories", aConnection);
        aDataSet = new DataSet();

        aAdapter.Fill(aDataSet, "Categories");
        aDataTable = aDataSet.Tables["Categories"];

        int currRec = 0;
        int totalRec = aDataTable.Rows.Count;

        if (totalRec > 0)
        {
            for (int i = 0; i <= totalRec - 1; i++)
            {

                // Create the new node. Notice that the CategoryId is stored in the Value property 
                // of the node. This will make querying for items in a specific category easier when
                // the third-level nodes are created. 
                TreeNode newNode = new TreeNode();
                newNode.Text = (aDataTable.Rows[i]["CategoryName"]).ToString();
                newNode.Value = (aDataTable.Rows[i]["CategoryID"]).ToString();

                // Set the PopulateOnDemand property to true so that the child nodes can be 
                // dynamically populated.
                newNode.PopulateOnDemand = true;

                // Set additional properties for the node.
                newNode.SelectAction = TreeNodeSelectAction.Expand;

                // Add the new node to the ChildNodes collection of the parent node.
                node.ChildNodes.Add(newNode);

            }
        }
        aConnection.Close();


    }

    public void PopulateProducts(TreeNode node)
    {
        // Declare the connection string. This example uses Microsoft SQL Server 
        // and connects to the Northwind sample database.
        SqlConnection aConnection = new SqlConnection();
        aConnection.ConnectionString = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ToString();
        aConnection.Open();

        DataTable aDataTable;
        SqlDataAdapter aAdapter;
        DataSet aDataSet;
        aAdapter = new SqlDataAdapter("Select ProductName From Products Where CategoryID=" + node.Value, aConnection);
        aDataSet = new DataSet();

        aAdapter.Fill(aDataSet, "Categories");
        aDataTable = aDataSet.Tables["Categories"];

        int currRec = 0;
        int totalRec = aDataTable.Rows.Count;

        if (totalRec > 0)
        {
            for (int i = 0; i <= totalRec - 1; i++)
            {

                // Create the new node.
                TreeNode NewNode = new TreeNode((aDataTable.Rows[i]["ProductName"]).ToString());

                // Set the PopulateOnDemand property to false, because these are leaf nodes and
                // do not need to be populated.
                NewNode.PopulateOnDemand = false;

                // Set additional properties for the node.
                NewNode.SelectAction = TreeNodeSelectAction.None;

                // Add the new node to the ChildNodes collection of the parent node.
                node.ChildNodes.Add(NewNode);
            }

        }
        aConnection.Close();

    }
}