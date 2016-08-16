using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data.SqlClient;

//FILE AND DIRECTORY
using System.IO;

//ARRAY LIST
using System.Collections;

//FOR DATA TABLE
using System.Data;

//FOR MESSEGE

using System.Windows.Forms;

public partial class dowloadData : System.Web.UI.Page
{
    string con2 = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ToString();
    
    StreamWriter OurStream;
    string tr_type = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        string date = System.DateTime.Now.ToString();
        Session["date"] = date;

        Directory.CreateDirectory("c:\\SCRIPTS\\SQL");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        MessageBox.Show("Do you want to update this record", "hdf_1");

        //first all previous scripts will be deleted
        File.Delete("c:\\SCRIPTS\\SQL\\PRODUCT_INSERT.sql");
       
        File.Delete("c:\\SCRIPTS\\SQL\\PRODUCT_UPDATE.sql");

        //------------------------------------------------------


        string CAT_ID = "";

        CAT_ID = DropDownList1.SelectedValue;

        ArrayList CAT_LIST = new ArrayList();

        SqlConnection con = new SqlConnection(con2);

        string query = @"select * from Products where CategoryID='"+CAT_ID+"'";

            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();

            SqlDataReader sdr = cmd.ExecuteReader();

            DataTable dt = new DataTable();
     
        dt.Load(sdr);

                foreach (DataRow item in dt.Rows)
                {
                    string id = item["ProductID"].ToString();
                    CAT_LIST.Add(id);
                 }

                for (int i = 0; i <= CAT_LIST.Count - 1; i++)
                {
                     Products(CAT_LIST[i].ToString());
                 }
    }

    public void Products(string id)
    { 

        string query3 = "";

        SqlConnection con = new SqlConnection(con2);

        query3 = @"select * from Products where ProductID ='"+id+"'";

        SqlCommand cmd2 = new SqlCommand(query3, con);
        con.Open();

        SqlDataReader sdr = cmd2.ExecuteReader();

        DataTable dt = new DataTable();
        dt.Load(sdr);


        foreach (DataRow item in dt.Rows)
        {
          
            OurStream = File.AppendText("c:\\SCRIPTS\\SQL\\PRODUCT_INSERT.sql");
            
            OurStream.WriteLine("INSERT INTO Products ([ProductName])");
            OurStream.WriteLine("values('" +item["PRODUCTNAME"].ToString()+ "')");
                
            OurStream.Close();
        }
        
        con.Close();
    }
     
       
   
}
