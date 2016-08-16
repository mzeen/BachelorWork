using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            HyperLink HYP = (HyperLink)(row.FindControl("NAME"));
            Label ID = (Label)(row.FindControl("ID"));

            HYP.NavigateUrl += "?cat_id=" + ID.Text;

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Search2.aspx?PROD_NAME="+TextBox2.Text);
    }
    //protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
    //{
    //    if (Repeater1.Items.Count < 1)
    //    {
    //        if (e.Item.ItemType == ListItemType.Footer)
    //        {
    //            Label lblFooter = (Label)e.Item.FindControl("lblEmptyDataD");
    //            lblFooter.Visible = true;
    //        }
    //    }
    //}
}