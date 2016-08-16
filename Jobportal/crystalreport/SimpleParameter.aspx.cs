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

using System.Security.Cryptography;
using System.Text;
public partial class Crystal_Report_and_URL_Tempering_Parameter : System.Web.UI.Page
{
  
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       Response.Redirect("../CrystalReport/SimpleReport.aspx?cat_id="+this.DropDownList1.SelectedValue.ToString());
         
    }

  }
