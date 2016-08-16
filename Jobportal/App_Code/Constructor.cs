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
/// Summary description for Constructor
/// </summary>
public class Constructor
{
       //for read only values that is assign at runtime by calculation
        public static readonly int num2;

        //constant variable
        public const float PIn = (float)3.14;

        //public int NUM;
        private int NUM;

        //static variable
        public static float PI;
        public static int count = 0;

        //constructor
        public Constructor(int n)
        {
            Console.WriteLine("I am Construtor no={0}", n);
            this.NUM = n;

            //for counting object
            count++;
        }

        // function/method

        //for private var
        public int get()
        {
            return (this.NUM);
        }

        //for static constant value
        public float area(float r)
        {
            return (PI * r * r);
        }
    }


