using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class SelectableListControls : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		if (!Page.IsPostBack)
		{
			for (int i = 3; i <= 5; i++)
			{
				Listbox1.Items.Add("Option " + i.ToString());
				DropdownList1.Items.Add("Option " + i.ToString());
				CheckboxList1.Items.Add("Option " + i.ToString());
				RadiobuttonList1.Items.Add("Option " + i.ToString());
			}
		}
    }

   
    protected void Button1_Click(object sender, EventArgs e)
    {
        foreach (ListItem li in Listbox1.Items)
        {
            if (li.Selected) 
                Response.Write("- " + li.Text + "<br/>");
        }
    }
    protected void DropdownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Write("<b>Selected item for DropdownList1:</b><br/>");
        Response.Write("- " + DropdownList1.SelectedItem.Text + "<br/>");

    }
    protected void CheckboxList1_SelectedIndexChanged(object sender, EventArgs e)
    {
          foreach (ListItem li in CheckboxList1.Items)
          {
            if (li.Selected) 
                Response.Write("- " + li.Text + "<br/>");
           }

    }
    protected void RadiobuttonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Write("<b>Selected item for RadiobuttonList1:</b><br/>");
        Response.Write("- " + RadiobuttonList1.SelectedItem.Text + "<br/>");
   
    }
}
