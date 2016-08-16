using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ButtonPallet : System.Web.UI.UserControl
{
   
    private int RefValue;

    public int Style
    {
        // Return the containing Panel control's style attribute.
        get 
        { 
            return 1; 
        }

        set
        {
            // Set the containing Panel control's style attribute.
            switch (value)
            {
                case 1:
                    //For step button
                    RefValue = 1;
                    btnNext.Enabled = true;
                    btnPrev.Enabled = false;
                    btnLast.Enabled = true;
                    btnFirst.Enabled =false;
                    break;

                case 2:
                    //For step button
                    RefValue = 2;
                    btnNext.Enabled = true;
                    btnPrev.Enabled = true;
                    btnLast.Enabled = false;
                    btnFirst.Enabled = true;
                    break;
                case 3:
                    //For step button
                    RefValue = 3;
                    btnNext.Enabled = true;
                    btnPrev.Enabled = true;
                    btnLast.Enabled = true;
                    btnFirst.Enabled = true;
                    break;
            }
        }
    }

    
    protected void btnNext_Click1(object sender, EventArgs e)
    {
        switch (RefValue)
        {
            case 1:
                Response.Redirect("frmForm1_2.aspx");
                break;
            case 2:
                Response.Redirect("frmForm1_3.aspx");
                break;
        }
    }
    protected void btnPrev_Click1(object sender, EventArgs e)
    {
        switch (RefValue)
        {
            case 2:
                Response.Redirect("frmForm1_1.aspx");
                break;
            case 3:
                Response.Redirect("frmForm1_2.aspx");
                break;


        }
    }
    protected void btnFirst_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmForm1_1.aspx");
    }
    protected void btnLast_Click1(object sender, EventArgs e)
    {
        Response.Redirect("frmForm1_3.aspx");
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}
