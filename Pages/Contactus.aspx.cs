using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mail;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class Contactus : System.Web.UI.Page
    {
        string[] emails;
        protected void Page_Load(object sender, EventArgs e)
        {
            myDAL obj = new myDAL();
            List<string> strDetailIDList = new List<string>();

            foreach (DataRow row in obj.getemails().Tables[0].Rows)
            {
                strDetailIDList.Add(row["email"].ToString());
            }

            emails = strDetailIDList.ToArray();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            myDAL obj = new myDAL();
            const string SERVER = "relay-hosting.secureserver.net";
            MailMessage oMail = new MailMessage();
            oMail.From = "no-reply@livacorporations.com";
            SmtpMail.SmtpServer = SERVER;
            oMail.Subject = "A Query has been Recieved At Livacorporations.con";
            oMail.Body = "From: "+TextBox3.Text+"\nEmail: "+TextBox2.Text+"\nQuery Or Suggestion: "+TextBox4.Text;
            for (int i = 0; i < emails.Length; i++)
            {
                oMail.To = emails[i];
                SmtpMail.Send(oMail);
            }
            oMail = null;   // free up resources
            Label2.Visible = true;
        }
    }
}