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
/// Summary description for student2
/// </summary>
public class student2
{
    private string fname;
    private string lname;
    private int id;
    private float marks;

    public student2(string f, string l, int i, float m)
    {
        this.fname = f;
        this.lname = l;
        this.id = i;
        this.marks = m;
    }
    
    public string Fname
    {
        get
        {
            return fname;
        }
        set
        {
            fname = value;
        }
    }

    public string Lname
    {
        get
        {
            return lname;
        }
        set
        {
            lname = value;
        }
    }

    public int Id
    {
        get
        {
            return id;
        }
        set
        {
            id = value;
        }
    }


    public float Marks
    {
        get
        {
            return marks;
        }
        set
        {
            marks = value;
        }
    }
  	
}
