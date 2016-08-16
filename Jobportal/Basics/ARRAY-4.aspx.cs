using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class BASICS_ARRAY : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string[] daysOfWeek = { "Mon", "Tue", "Wed", "Thu", "Fri", "Sat" };
        string[] productNames = {"Blue Pen","Red Pen","Blue Eraser","Red Eraser"};

        Response.Write("All Products:");

        foreach (string product in productNames)
        {
            Response.Write("<BR>"+product);
        }

        Response.Write("All Products in Upper Case:");

        foreach (string product in productNames)
        {
            Response.Write("<BR>" + product.ToUpper());
        }

             
    }

  }
