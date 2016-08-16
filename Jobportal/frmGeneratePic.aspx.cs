using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Diagnostics;
using System.Text;
using System.Drawing.Imaging;
using System.Drawing.Text;
using System.Drawing.Drawing2D;

public partial class Forms_frmGeneratePic : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       try
        {
           Bitmap oBitmap = new Bitmap(170, 41);
           
           Graphics oGraphic = Graphics.FromImage(oBitmap);

            SolidBrush oBrush = new SolidBrush(Color.BlanchedAlmond);

            oGraphic.FillRectangle(oBrush, 0, 0, 170, 41);

            
          
            string sText = GetRandomText();
            sText = sText.ToUpper();
            Session["Rnumber"] = sText;
         
            Font oFont = new Font("Forte", 34);
            PointF oPoint1 = new PointF(0f, 0f);

            SolidBrush oBrushWrite = new SolidBrush(Color.BlueViolet);
            
            oGraphic.DrawString(sText, oFont, oBrushWrite, oPoint1);
            Response.ContentType = "image/jpeg";
            oBitmap.Save(Response.OutputStream, ImageFormat.Jpeg);
        }


        catch (Exception ex)
        {
        }

    }

    private string GetRandomText()
	{
		string uniqueID = Guid.NewGuid().ToString();
		string randString = "";
		        
		for (int j = 0; j <= 4; j++) 
        {
            randString += uniqueID.ToCharArray()[j];
         }
        
		return randString;

	}
   
}
