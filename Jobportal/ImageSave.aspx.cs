using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;
using System.Data;
using System.Data.SqlClient;


public partial class UploadAttachFile : System.Web.UI.Page
{
    private SqlConnection NorthwindConnection = new SqlConnection("Data Source=.;Initial Catalog=Northwind;Integrated Security=True");
  
    string savePath;
    string savePathError;
  
    protected void Page_Load(object sender, EventArgs e)
    {

        savePath = Server.MapPath(".\\UploadedFiles\\File\\");
        savePathError = Server.MapPath(".\\UploadedFiles\\Logs\\");
    }

    protected void btnSave_Click(object sender, System.EventArgs e)
	{

	  try 
        {

            if (ValidateInput() == false)
            {
                pnlinfo.Visible = true;
            }
            else
            {
                Response.Redirect("ImageSave.aspx");
            }
        }

		catch (Exception ex) 
        {
			pnlinfo.Visible = true;
			lblMESSAGE.Text = "File could not be uploaded." + ex.Message;
		}

	}
    private bool ValidateInput()
	{
		bool bSuccess = false;
		bSuccess = true;

		if (fileToRead.HasFile == false) 
        {
			bSuccess = false;
			txtValid.Text = "FILE-NULL";
			lblMESSAGE.Text = "Please specify a file to upload.";
		}

		else if (chkFileEXT() == false) 
        {
			bSuccess = false;
			txtValid.Text = "FILE-EXT";
			lblMESSAGE.Text = "Please check your Extention of File .txt, .pdf, .doc, .jpeg";
		}

		else if (SaveFile(fileToRead.PostedFile) == false) 
        {
			bSuccess = false;
			txtValid.Text = "FILE-SAMENAME";
			lblMESSAGE.Text = "A file with the same name already exists." + "<br>" + "Please change the file name and upload again ";
		}

		else if (fileToRead.HasFile & chkFileEXT() & SaveFile(fileToRead.PostedFile))
        {
			string fileName = fileToRead.FileName;

			fileName = "File-" + "-" + System.DateTime.Now.ToLongDateString() + "." + fileName.Substring(fileName.LastIndexOf(".") + 1);
            
			ViewState["FileName"] = fileName;

			try 
            {
                SaveFileName(fileToRead.PostedFile);
			 }

			catch (Exception ex) 
            {
				pnlinfo.Visible = true;
				lblMESSAGE.Text = "File could not be uploaded." + "";
			}
		}

		return bSuccess;
	}

	private bool chkFileEXT()
	{
		bool chkFile = false;
		//   Dim path As String = Server.MapPath("~/Images/")
		bool fileOK = false;

		if (fileToRead.HasFile) 
        {
			string fileExtension = null;
			fileExtension = System.IO.Path.GetExtension(fileToRead.FileName).ToLower();
			
            string[] allowedExtensions = { ".txt", ".doc", ".pdf", ".JPEG",".jpg" };
		
            for (int i = 0; i <= allowedExtensions.Length - 1; i++) 
            {
				if (fileExtension == allowedExtensions[i])
                {
					fileOK = true;
				}
			}

			if (fileOK) 
            {

				chkFile = true;
			}

			else
            {
				chkFile = false;

			}
		}

		return chkFile;
	}

	private bool SaveFile(HttpPostedFile file)
	{
		bool bSuccess = false;
       
  
		string fileName = fileToRead.FileName;

		string pathToCheck = savePath + fileName;

		string tempfileName = null;

		if ((System.IO.File.Exists(pathToCheck))) 
        {
			int counter = 2;
			while ((System.IO.File.Exists(pathToCheck)))
            {
				tempfileName = counter.ToString() + fileName;
				pathToCheck = savePath + tempfileName;
				counter = counter + 1;
			}


		
			bSuccess = false;
		}
		else 
        {

			bSuccess = true;
		}

		return bSuccess;

	}

    public void SaveFileName(HttpPostedFile file)
	{
		string fileName = file.FileName;
        
        fileName = "File-" + "-" + System.DateTime.Now.ToLongDateString() + "." + fileName.Substring(fileName.LastIndexOf(".") + 1);

		savePath += fileName;

		file.SaveAs(savePath);


                    byte[] BLOB = null;

                    FileStream FileStream = new FileStream(savePath, FileMode.Open, FileAccess.Read);

                    BinaryReader reader = new BinaryReader(FileStream);

                    System.IO.FileInfo file2 = new FileInfo(savePath);

                    BLOB = reader.ReadBytes((int)(file2.Length));

                    FileStream.Close();

                    reader.Close();
        SqlCommand SaveDocCommand = new SqlCommand();
        SaveDocCommand.Connection = NorthwindConnection;

        SaveDocCommand.CommandText = "INSERT INTO Categories" + "(CategoryName, Picture)" + "VALUES (@FileName, @DocumentFile)";
        SqlParameter FileNameParameter = new SqlParameter("@FileName", SqlDbType.NChar);
        SqlParameter DocumentFileParameter = new SqlParameter("@DocumentFile", SqlDbType.Binary);

        SaveDocCommand.Parameters.Add(FileNameParameter);
        SaveDocCommand.Parameters.Add(DocumentFileParameter);
        FileNameParameter.Value = "abc";

        DocumentFileParameter.Value = BLOB;

        try
        {
            SaveDocCommand.Connection.Open();
            SaveDocCommand.ExecuteNonQuery();
            pnlinfo.Visible = true;
            lblMESSAGE.Text = "File Saved ";
        }
        catch (Exception ex)
        {
            pnlinfo.Visible = true;
            lblMESSAGE.Text = "File could not be uploaded." + ex.Message;
        }
        finally
        {
            SaveDocCommand.Connection.Close();
        }
    }

 
	
}