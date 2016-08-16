using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.UI.WebControls.WebParts;

public partial class WEBPART2010 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            MenuItem Root = new MenuItem("Select Mode");
            foreach (WebPartDisplayMode mode in this.WebPartManager1.DisplayModes)
            {
                if (mode.IsEnabled(this.WebPartManager1))
                {
                    Root.ChildItems.Add(new MenuItem(mode.Name));
                }
            }
            this.Menu2.Items.Add(Root);
        }
    }
    protected void Menu2_MenuItemClick(object sender, MenuEventArgs e)
    {
        this.WebPartManager1.DisplayMode = this.WebPartManager1.DisplayModes[e.Item.Text];
    }
}