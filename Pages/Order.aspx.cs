using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Mail;
using System.Data;

namespace WebApplication6
{
    public partial class Order : System.Web.UI.Page
    {
        string plan, name, price, descrp, query, values;
        string[] arr = { };
        bool is_custom = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            plan = Request.QueryString["id"];
            if (plan == null)
            {
                try
                {
                    plan = Session["planno"].ToString();
                }
                catch (Exception exc)
                {
                    Response.Redirect("Error.html");
                }
            }
            myDAL obj = new myDAL();
            if (plan == "Custom Plan")
            {
                name = "Custom Plan";
                price = Session["price"].ToString() + " PKR";
                query = Session["query"].ToString();
                values = Session["values"].ToString();
                is_custom = true;
            }
            else
            {
                obj.getplansd(Convert.ToInt32(plan), ref name, ref price, ref descrp);
            }
            if (name == "" && price == "" && descrp == "")
                Response.Redirect("Error.html");
            Label2.Text = name;
            Label3.Text = price;
            Label4.Text = price;
            Label5.Text = price;
            Label1.Visible = false;
            List<string> strDetailIDList = new List<string>();

            foreach (DataRow row in obj.getemails().Tables[0].Rows)
            {
                strDetailIDList.Add(row["email"].ToString());
            }

            arr = strDetailIDList.ToArray();
        }
        bool IsValidEmail(string email)
        {
            try
            {
                myDAL obj = new myDAL();
                const string SERVER = "relay-hosting.secureserver.net";
                MailMessage oMail = new MailMessage();
                oMail.From = "no-reply@livacorporations.com";
                oMail.To = email;
                oMail.Subject = "Your Order Has Been Recieved";
                oMail.Body = "Order Id: " + (obj.getorderid() + 1).ToString() + "\nThank You For Your Order.\nOur Representator will call you soon on the Provided Number.\nDetails: " + name + "\nPrice: " + price + "\nStatus: Not Confirmed.";
                oMail.Priority = MailPriority.High; // enumeration
                SmtpMail.SmtpServer = SERVER;
                SmtpMail.Send(oMail);
                oMail.Subject = "An Order Has Been Placed At Livacorporations.com";
                oMail.Body = "Order Id: " + (obj.getorderid() + 1).ToString() + "\nDetails: " + name + "\nPrice: " + price + "\nCustomer Details: \nName: " + TextBox1.Text + " " + TextBox2.Text + "\nCity: " + TextBox4.Text + "\nAddress: " + TextBox5.Text + "\nEmail: " + TextBox9.Text + "\nPhone: " + TextBox10.Text + "\nStatus: Not Confirmed.";
                for (int i = 0; i < arr.Length; i++)
                {
                    oMail.To = arr[i];
                    SmtpMail.Send(oMail);
                }
                oMail = null;	// free up resources
                return true;
            }
            catch
            {
                return false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValidEmail(TextBox9.Text))
            {
                myDAL obj = new myDAL();
                if (is_custom)
                    obj.insertordercustom(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text, TextBox7.Text, TextBox8.Text, TextBox9.Text, TextBox10.Text, name, price, 1, query, values);
                else
                    obj.insertorder(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text, TextBox7.Text, TextBox8.Text, TextBox9.Text, TextBox10.Text, name, price, 1);
                Response.Redirect(String.Format("OrderDetail.aspx"));
            }
            else
            {
                Label1.Visible = true;
            }
        }
    }
}