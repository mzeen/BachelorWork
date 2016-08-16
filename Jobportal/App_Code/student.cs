using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

/// <summary>
/// Summary description for student
/// </summary>
public class student
{
        public string fname;
        public string lname;
        private int id;
        public float marks;

        public void setfields(string f, string l, int i, float m)
        {
            this.fname = f;
            this.lname = l;
            this.id = i;
            this.marks = m;
        }

        public string getfname()
        {
            return fname;
        }

        public string getlname()
        {
            return lname;
        }

        public int getid()
        {
            return id;
        }

        public float getmarks()
        {
            return marks;
        }

   
}
