using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web.Services;


public partial class index : System.Web.UI.Page
{


    


    protected void Page_Load(object sender, EventArgs e)
    {

    }



    [WebMethod]
    public static string Send(string contact_name, string phone, string email)
    {
        string date = DateTime.Now.ToShortTimeString() + " " + DateTime.Now.ToShortDateString();


        try
        {
            string from = email;
            MailMessage msg = new MailMessage();
            msg.IsBodyHtml = true;
            msg.From = new MailAddress(from);
            msg.To.Add("alex@tmgroup.co.il");
            msg.Subject = "Lead from Run Page";
            msg.Body = "lead from Run Page :<br/> Contact name: "
                + contact_name + ",<br/> Phone: "
                + phone + ",<br/> Email: "
                + email + ",<br/> Sent :"
                + date ;



            SmtpClient sc = new SmtpClient("smtp.gmail.com");
            sc.Port = 25;

            sc.Credentials = new NetworkCredential("email", "pass");

            sc.EnableSsl = true;
            sc.Send(msg);

            string str = string.Format("תודה " + contact_name + ", ניצור איתך קשר בהקדם!");
            return str;
        }
        catch (Exception ex)
        {
            return "Not sent";
        }
    }
}