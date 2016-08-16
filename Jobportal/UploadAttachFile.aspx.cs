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

            //if (ValidateInput() == false)
            //{
            //    pnlinfo.Visible = true;
            //}
            SaveFileName(fileToRead.PostedFile);
	 	}

		catch (Exception ex) 
        {
			// Otherwise set failure.
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
			// Get the name of the file to upload.
			string fileName = fileToRead.FileName;

			//get the file extension
            //get the file extension
            fileName = "File-" + "-" + System.DateTime.Now.ToLongDateString() + "." + fileName.Substring(fileName.LastIndexOf(".") + 1);
          
			// Append the name of the file to upload to the path.
          
			ViewState["FileName"] = fileName;

			try 
            {
				SaveFileName(fileToRead.PostedFile);
			 }

			catch (Exception ex) 
            {
				// Otherwise set failure.
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
			string[] allowedExtensions = { ".txt", ".doc", ".pdf", ".jpeg" };
		
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
       
  
		// Get the name of the file to upload.
		string fileName = fileToRead.FileName;

		// Create the path and file name to check for duplicates.
		string pathToCheck = savePath + fileName;

		// Create a temporary file name to use for checking duplicates.
		string tempfileName = null;

		// Check to see if a file already exists with the
		// same name as the file to upload.        
		if ((System.IO.File.Exists(pathToCheck))) 
        {
			int counter = 2;
			while ((System.IO.File.Exists(pathToCheck)))
            {
				// If a file with this name already exists,
				// prefix the filename with a number.
				tempfileName = counter.ToString() + fileName;
				pathToCheck = savePath + tempfileName;
				counter = counter + 1;
			}


			// Notify the user that the file name was changed.

			bSuccess = false;
		}
		else 
        {

			//' Notify the user that the file was saved successfully.
			//UploadStatusLabel.Text = "Your file was uploaded successfully."
			bSuccess = true;
		}

		return bSuccess;

	}

	public void SaveFileName(HttpPostedFile file)
	{

		// Get the name of the file to upload.
		string fileName = fileToRead.FileName;


		//------------------------
		//get the file extension

        //get the file extension
        fileName = "File-" + "-" + System.DateTime.Now.ToLongDateString() + "." + fileName.Substring(fileName.LastIndexOf(".") + 1);
          
		// Append the name of the file to upload to the path.
        //savePath += fileName

		savePath += fileName;

		// Call the SaveAs method to save the uploaded
		// file to the specified directory.
		fileToRead.SaveAs(savePath);

	}
	
}