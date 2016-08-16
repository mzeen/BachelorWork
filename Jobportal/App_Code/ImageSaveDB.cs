using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;

using System.IO;
using System.Data;
using System.Data.SqlClient;

public class ImageSaveDB
{
    private SqlConnection NorthwindConnection;
 
    public ImageSaveDB()
    {
      NorthwindConnection = new SqlConnection("Data Source=.;Initial Catalog=Northwind;Integrated Security=True");
  
    }

    public void SaveFileName(HttpPostedFile file,string savePath)
    {

        // Get the name of the file to upload.
        string fileName = file.FileName;

        //------------------------
        //get the file extension

        fileName = "File-" + "-" + System.DateTime.Now.ToLongDateString() + "." + fileName.Substring(fileName.LastIndexOf(".") + 1);


        // Append the name of the file to upload to the path.
        //savePath += fileName

        savePath += fileName;

        // Call the SaveAs method to save the uploaded
        // file to the specified directory.
        file.SaveAs(savePath);


        // The BLOB holds the byte array to save.
        byte[] BLOB = null;

        // The FileStream is the stream of bytes
        // that represent the binary file.
        FileStream FileStream = new FileStream(savePath, FileMode.Open, FileAccess.Read);

        // The reader reads the binary data from the FileStream.
        BinaryReader reader = new BinaryReader(FileStream);

        // The BLOB is assigned the bytes from the reader.
        // The file length is passed to the ReadBytes method
        // telling it how many bytes to read.

        System.IO.FileInfo file2 = new FileInfo(savePath);

        BLOB = reader.ReadBytes((int)(file2.Length));

        FileStream.Close();

        reader.Close();

        // Create a command object to save
        // the BLOB value.
        SqlCommand SaveDocCommand = new SqlCommand();
        SaveDocCommand.Connection = NorthwindConnection;

        SaveDocCommand.CommandText = "INSERT INTO Categories" + "(CategoryName, Picture)" + "VALUES (@FileName, @DocumentFile)";
        //SaveDocCommand.CommandText = "INSERT INTO Categories" + "(CategoryName)" + "VALUES (@FileName)";

        // Create parameters to store the filename and BLOB data.
        SqlParameter FileNameParameter = new SqlParameter("@FileName", SqlDbType.NChar);
        SqlParameter DocumentFileParameter = new SqlParameter("@DocumentFile", SqlDbType.Binary);

        SaveDocCommand.Parameters.Add(FileNameParameter);
        SaveDocCommand.Parameters.Add(DocumentFileParameter);

        // Parse the filename out of the complete path
        // and assign it to the parameter.
        FileNameParameter.Value = "abc";

        // Set the DocumentFile parameter to the BLOB Value.
        DocumentFileParameter.Value = BLOB;

        // Execute the command and save the BLOB to the database.
        try
        {
            SaveDocCommand.Connection.Open();
            SaveDocCommand.ExecuteNonQuery();
          
        }
        catch (Exception ex)
        {
           
        }
        finally
        {
            SaveDocCommand.Connection.Close();
        }
    }
}
