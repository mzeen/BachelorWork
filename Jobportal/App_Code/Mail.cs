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
/// Summary description for Mail
/// </summary>
public class Mail
{
    string email = "";
    string password = "";
    string smtp = "";
    int smtp_port;

    /// <summary>
    /// ////////////////////////////////Change these values for e-mail settings////////////////
    /// </summary>

    public string Mail_smtp()
    {
        smtp = "smtp.gmail.com";
        return smtp;
    }
    public int Mail_smtpport()
    {
        smtp_port = 587;
        return smtp_port;
    }
    public string Mail_email()
    {
        email = "majidtahir79@gmail.com";
        return email;
    }
    public string Mail_password()
    {
        password = "yarehman";
        return password;
    }

}
