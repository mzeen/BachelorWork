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

        switch (e.Node.Depth)
        {
            case 0:
                PopulateCategories(e.Node);
                break;


            case 1:
                PopulateProducts(e.Node);
                break;

            default:
                break;
   
        }

    }

    public void PopulateCategories(TreeNode node)
    {
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

                TreeNode newNode = new TreeNode();
                newNode.Text = (aDataTable.Rows[i]["CategoryName"]).ToString();
                newNode.Value = (aDataTable.Rows[i]["CategoryID"]).ToString();

                newNode.PopulateOnDemand = true;

                newNode.SelectAction = TreeNodeSelectAction.Expand;

                node.ChildNodes.Add(newNode);

            }
        }
        aConnection.Close();


    }

    public void PopulateProducts(TreeNode node)
    {
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

                TreeNode NewNode = new TreeNode((aDataTable.Rows[i]["ProductName"]).ToString());

                NewNode.PopulateOnDemand = false;
             NewNode.SelectAction = TreeNodeSelectAction.None;
                node.ChildNodes.Add(NewNode);
            }

        }
        aConnection.Close();

    }
}