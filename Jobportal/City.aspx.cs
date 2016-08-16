using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class City : System.Web.UI.Page
{
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();

        if (this.txtCITY.Text == "")
        {
            this.messege.Text = "City Name must be enter";
        }

        else
        {

            conn.ConnectionString = ConfigurationManager.ConnectionStrings["INVENTORYSALESConnectionString"].ToString();

            conn.Open();
            cmd.Connection = conn;

            cmd.CommandType = CommandType.Text;
            cmd.CommandText = " Insert into City (CITY_Name,COUNTRY_ID) values( '" + txtCITY.Text + "','" + drpCountry.SelectedValue + "') ";
            cmd.ExecuteNonQuery();

            Response.Redirect("CITY.aspx");
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label item_CITY = (Label)GridView1.SelectedRow.FindControl("LBLCITY");
        Label ITEM_COUNTRY = (Label)GridView1.SelectedRow.FindControl("LBLCOUNTRYID");

        drpCountry.SelectedValue = ITEM_COUNTRY.Text;
        this.txtCITY.Text = item_CITY.Text;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();

        conn.ConnectionString = ConfigurationManager.ConnectionStrings["INVENTORYSALESConnectionString"].ToString();

        conn.Open();
        cmd.Connection = conn;

        cmd.CommandType = CommandType.Text;
        cmd.CommandText = " Delete from city where city_id='" + GridView1.SelectedDataKey.Value + "' ";
        cmd.ExecuteNonQuery();
        Response.Redirect("CITY.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();

        conn.ConnectionString = ConfigurationManager.ConnectionStrings["INVENTORYSALESConnectionString"].ToString();

        conn.Open();
        cmd.Connection = conn;

        cmd.CommandType = CommandType.Text;
        cmd.CommandText = " Update city set city_name='" + txtCITY.Text + "' where city_id='" + GridView1.SelectedDataKey.Value + "' ";
        cmd.ExecuteNonQuery();
        Response.Redirect("CITY.aspx");
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        txtCITY.Text = ((Label)GridView1.SelectedRow.FindControl("LBLCITY")).Text;
        drpCountry.SelectedValue = ((Label)GridView1.SelectedRow.FindControl("COUNTRYID")).Text;
    }
    //protected void CBALL_CheckedChanged(object sender, EventArgs e)
    //{
    //    CheckBox showCheckBox = (CheckBox)sender;
    //    if (showCheckBox.Checked)
    //    {

    //        ShowCheck(true);
    //    }

    //    else
    //    {

    //        ShowCheck(false);

    //    }
    //}

    //public void ShowCheck(bool show)
    //{
    //    foreach (GridViewRow row in GridView1.Rows)
    //    {
    //        CheckBox cb = (CheckBox)row.FindControl("CB");

    //        cb.Checked = show;

    //    }
    //}

    protected void Button4_Click(object sender, EventArgs e)
    {

    }
    //protected void CB_CheckedChanged(object sender, EventArgs e)
    //{
    //    CheckBox chk =(CheckBox)sender;

    //    if (chk.Checked)
    //        show(true);
    //    else
    //        show(false);

    //}

    private void show(bool sh)
    {
        foreach(GridViewRow row in GridView1.Rows)
        {
            CheckBox ncheck = (CheckBox)row.FindControl("CB");
            ncheck.Checked = sh;
         }
     }
    protected void CBALL_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox chk = (CheckBox)sender;

        if (chk.Checked)
            show(true);
        else
            show(false);

    }
}