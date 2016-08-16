using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

public partial class webpart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!this.IsPostBack)
        {
            MenuItem Root = new MenuItem("Select Mode");
            foreach (WebPartDisplayMode mode in this.MyPartManage.DisplayModes)
            {
                if (mode.IsEnabled(this.MyPartManage))
                {
                    Root.ChildItems.Add(new MenuItem(mode.Name));
                }
            }
            PartsMenu.Items.Add(Root);
        }
    }
    protected void PartsMenu_MenuItemClick(object sender, MenuEventArgs e)
    {
        this.MyPartManage.DisplayMode = this.MyPartManage.DisplayModes[e.Item.Text];
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

    }
}
