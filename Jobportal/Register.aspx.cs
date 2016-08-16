using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();

        conn.ConnectionString = ConfigurationManager.ConnectionStrings["INVENTORYSALESConnectionString"].ToString();
        try
        {
            conn.Open();
            cmd.Connection = conn;

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "usp_Insert_CUSTOMER";

            // Add the input parameter and set its value 

            SqlParameter param_CUSTOMER_NAME = new SqlParameter("@CUSTOMER_NAME", SqlDbType.VarChar, 100);
            SqlParameter param_EMAIL_ID = new SqlParameter("@EMAIL_ID", SqlDbType.VarChar, 50);
            SqlParameter param_COUNTRY_ID = new SqlParameter("@COUNTRY_ID", SqlDbType.Int, 10);
            SqlParameter param_CITY_ID = new SqlParameter("@CITY_ID", SqlDbType.Int, 10);
            SqlParameter param_PIN_CODE = new SqlParameter("@PIN_CODE", SqlDbType.VarChar, 50);
            SqlParameter param_KEYWORD = new SqlParameter("@KEYWORD", SqlDbType.VarChar, 50);
            SqlParameter param_ADDRESS = new SqlParameter("@ADDRESS", SqlDbType.VarChar, 10);
            SqlParameter param_USER_NAME = new SqlParameter("@USER_NAME", SqlDbType.VarChar, 50);
            SqlParameter param_PASSWORD = new SqlParameter("@PASSWORD", SqlDbType.VarChar, 50);
            SqlParameter param_MEM_TYPE = new SqlParameter("@MEM_TYPE", SqlDbType.VarChar, 50);
            SqlParameter param_ACTIVE = new SqlParameter("@ACTIVE", SqlDbType.VarChar, 50);
            SqlParameter param_CUSTOMER_ID = new SqlParameter("@CUSTOMER_ID", SqlDbType.Int, 10);
            SqlParameter param_UNEMAIL_ID = new SqlParameter("@UNEMAIL_ID", SqlDbType.VarChar, 100);

            param_CUSTOMER_NAME.Value = this.txtName.Text;
            param_EMAIL_ID.Value = txtUserID.Text;
            param_COUNTRY_ID.Value = DropDownList1.SelectedValue;
            param_CITY_ID.Value = DropDownList2.SelectedValue;
            param_PIN_CODE.Value = this.txtPIN.Text;
            param_KEYWORD.Value = this.txtNIC.Text;
            param_ADDRESS.Value = this.txtAddress.Text;
            param_USER_NAME.Value = this.txtUserID.Text;
            param_PASSWORD.Value = this.txtPassword.Text;

            param_MEM_TYPE.Value = "M".ToString();
            param_ACTIVE.Value = "Inactive".ToString();
            //param_DOB.Value = this.txtDOB.Text + " 00:00:00 AM".ToString();
            // Add the output parameter and set its direction 
            param_CUSTOMER_ID.Direction = ParameterDirection.Output;
            param_UNEMAIL_ID.Direction = ParameterDirection.Output;

            //add paramaemter in command
            cmd.Parameters.Add(param_CUSTOMER_NAME);
            cmd.Parameters.Add(param_EMAIL_ID);
            cmd.Parameters.Add(param_COUNTRY_ID);
            cmd.Parameters.Add(param_CITY_ID);
            cmd.Parameters.Add(param_PIN_CODE);
            cmd.Parameters.Add(param_KEYWORD);
            cmd.Parameters.Add(param_ADDRESS);
            cmd.Parameters.Add(param_USER_NAME);
            cmd.Parameters.Add(param_PASSWORD);

            cmd.Parameters.Add(param_MEM_TYPE);
            cmd.Parameters.Add(param_ACTIVE);
            cmd.Parameters.Add(param_CUSTOMER_ID);
            cmd.Parameters.Add(param_UNEMAIL_ID);
            if (cmd.ExecuteNonQuery() > 0)
            {
                this.pnlinfo.Visible = true;
                lblErrorMsg.Visible = true;
                lblErrorMsg.Text = "User Created Successfully..!";
                //  mail(txtUserID.Text, txtUserID.Text, txtUserID.Text, txtUserID.Text, txtUserID.Text, txtUserID.Text);
            }

        }
        catch (Exception ex)
        {
            lblErrorMsg.Visible = true;
            lblErrorMsg.Text = ex.Message;

        }
        finally
        {
            conn.Close();
        }
    }
}