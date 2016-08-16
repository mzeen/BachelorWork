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

            //Next, we create two brushes, which will help us to draw our image. 
            //The first one, oBrush, will be used to draw the background of the image:

            SolidBrush oBrush = new SolidBrush(Color.BlanchedAlmond);

            //We're going to use the first brush to fill the image rectangle, 
            
            oGraphic.FillRectangle(oBrush, 0, 0, 170, 41);

            //So far, we've changed the background color of our image, 
            //but we haven't written any text. 
            
          
            string sText = GetRandomText();
            sText = sText.ToUpper();
            Session["Rnumber"] = sText;
         
            Font oFont = new Font("Forte", 34);
            PointF oPoint1 = new PointF(0f, 0f);
           
            //we hardcode the brush color as Black.

            SolidBrush oBrushWrite = new SolidBrush(Color.BlueViolet);

            //so now we created instances of Font and PointF and now DrawString parameters are ready:
            
            oGraphic.DrawString(sText, oFont, oBrushWrite, oPoint1);

            //Now the last thing is we have to send the image to browser for that.
            //That's all we generated a Text image dynamically at run time.
            //The below image shows the sample output:
           
            Response.ContentType = "image/jpeg";
            oBitmap.Save(Response.OutputStream, ImageFormat.Jpeg);
        }


        catch (Exception ex)
        {
            //lblErrorMsg.Text = ex.Message
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
