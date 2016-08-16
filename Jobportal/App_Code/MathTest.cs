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
/// Summary description for MathTest
/// </summary>
public class MathTest
{
    public double value;
    private double val1;
    private double val2;
    private string opr;

    //for read only values that is assign at runtime by calculation
    public static readonly int num2;

    //constant variable
    public const float PIn = (float)3.14;

    //public int NUM;
    private int NUM;

    //static variable
    public static float PI;
    public static int count = 0;

    public MathTest()
    {
        opr="+";
        val1 = 0;
        val2 = 0;

        //for counting object
        count++;
    }

    public MathTest(double a,double b,string op)
    {
        val1 = a;
        val2 = b;
        opr = op;
    }

    public double Value1
    {
        get
        {
            return val1;
        }
        set
        {
            val1 = value;
        }
    }

    public double Value2
    {
        get
        {
            return val2;
        }
        set
        {
            val2 = value;
        }
    }

    public string Operator
    {
        get
        {
            return opr;
        }
        set
        {
            opr = value;
        }
    }

    public double GetSquare()
    {
        return value * value;
    }

    public static double GetSquareOf(double x)
    {
        return x * x;
    }

    public static void GetSquareOf(double x,out double ans)
    {
        ans=x * x;
    }

    // Returning multiple output parameters.
    public static void FillTheseValues(out int a, out string b, out bool c)
    {
        a = 9;
        b = "Enjoy your string.";
        c = true;
    }

    public static double GetPi()
    {
        return 3.14159;
    }

    public double Calculate()
    {
        double A, B, C = 0;
        string O;

        A = val1;
        B = val2;
        O = opr;

        if (O == "+")
            C = A + B;

        else if (O == "-")
            C = A - B;

        else if (O == "*")
            C = A * B;

        else if (O == "/")
            C = A / B;
        else if (O == "sqaure")
            C = A * A;

        return C;
                
        }

    public double Calculate(double a,double b,string op)
    {
        double A, B, C = 0;
        string O;

        A = a;
        B = b;
        O = op;

        try
        {
            switch (O)
            {
                case "+":
                    C = A + B;
                    break;
                case "-":
                    C = A - B;
                    break;
                case "*":
                    C = A * B;
                    break;
                case "/":
                    C = A / B;
                    break;
                case "sin":
                    C = Math.Sin(A);
                    break;
                default:
                    C = 0;
                    break;
            }
        }
        catch (Exception ex)
        {
            return 0;
        }
       
            return C;
       

    }

    public static string BackSpace(string s)
    {
        int a;
        string b;
        a = s.Length;

        b= s.Substring(0, a - 1);

        return b;
    }
   
}
