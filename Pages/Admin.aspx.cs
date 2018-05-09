using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Net;
using System.Web.Mail;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class Admin : System.Web.UI.Page
    {
        string username;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                username = Session["username"].ToString();
            }
            catch (Exception ex)
            {
                Response.Redirect(String.Format("Login.aspx"));
            }
            if (username != "paracha")
            {
                Response.Redirect(String.Format("Login.aspx"));
            }
        }
        [WebMethod]
        public static string comm(int id)
        {
            return getp(id).GetXml();
        }
        private static DataSet getp(int id)
        {
            myDAL obj = new myDAL();
            return obj.getplans(id);
        }
        [WebMethod]
        public static string comm1(int plan)
        {
            return getp1(plan).GetXml();
        }
        private static DataSet getp1(int plan)
        {
            myDAL obj = new myDAL();
            return obj.allplans(plan);
        }
        [WebMethod]
        public static string comm9()
        {
            return getp9().GetXml();
        }
        private static DataSet getp9()
        {
            myDAL obj = new myDAL();
            return obj.getplansdrop();
        }
        [WebMethod]
        public static string comm81(int orderid)
        {
            return getp81(orderid).GetXml();
        }
        private static DataSet getp81(int orderid)
        {
            myDAL obj = new myDAL();
            return obj.getcustomorderdetails(orderid);
        }
        [WebMethod]
        public static void comm2(string type, int plan, int quant)
        {
            myDAL obj = new myDAL();
            obj.insertdetais(type, plan, quant);
        }
        [WebMethod]
        public static void comm45(int watt, float hybrid, float batteryd, float batteryw, float wireh, float wiren, float stand, int othersh, int othersn, int solar, int nonhybrid, int batterycount, float solarrate, float inverter, float charger, float chargecontroller)
        {
            myDAL obj = new myDAL();
            obj.insertcustomin(watt, hybrid, batteryd, batteryw, wireh, wiren, stand, othersh, othersn, solar, nonhybrid, batterycount, solarrate, inverter, charger, chargecontroller);
        }
        [WebMethod]
        public static int comm46()
        {
            myDAL obj = new myDAL();
            return obj.chepi3();
        }
        [WebMethod]
        public static void comm48(int watt, float hybrid, float batteryd, float batteryw, float wireh, float wiren, float stand, int othersh, int othersn, int solar, int nonhybrid, int batterycount, float solarrate, float inverter, float charger, float chargecontroller, int cid)
        {
            myDAL obj = new myDAL();
            obj.editcustomin(watt, hybrid, batteryd, batteryw, wireh, wiren, stand, othersh, othersn, solar, nonhybrid, batterycount, solarrate, inverter, charger, chargecontroller, cid);
        }
        [WebMethod]
        public static int comm49(string name, int normalload, int maxload)
        {
            myDAL obj = new myDAL();
            return obj.insertcustomdetails(name, normalload, maxload);
        }

        [WebMethod]
        public static void comm70(string name, int normalload, int maxload, int cid)
        {
            myDAL obj = new myDAL();
            obj.editcustomdetails(name, normalload, maxload, cid);
        }
        [WebMethod]
        public static void standhandle(int rate)
        {
            myDAL obj = new myDAL();
            obj.insertstand(rate);
        }
        [WebMethod]
        public static void comm51(string type, int plan, int quant)
        {
            myDAL obj = new myDAL();
            obj.insertdetaisal(type, plan, quant);
        }
        [WebMethod]
        public static void comm62(string email)
        {
            myDAL obj = new myDAL();
            obj.addemail(email);
        }
        [WebMethod]
        public static int comm63()
        {
            myDAL obj = new myDAL();
            return obj.chepi2();
        }
        [WebMethod]
        public static int getstandhandle()
        {
            myDAL obj = new myDAL();
            return obj.getstandhandle();
        }
        [WebMethod]
        public static int comm3(int plan)
        {
            myDAL obj = new myDAL();
            return obj.chepi(plan);
        }
        [WebMethod]
        public static int comm52(int plan)
        {
            myDAL obj = new myDAL();
            return obj.chepi1(plan);
        }
        [WebMethod]
        public static void comm4(int id)
        {
            myDAL obj = new myDAL();
            obj.deletedetails(id);
        }
        [WebMethod]
        public static void deletec(string name)
        {
            myDAL obj = new myDAL();
            obj.deletecustomdetails(name);
        }
        [WebMethod]
        public static void comm47(int cid)
        {
            myDAL obj = new myDAL();
            obj.deletecustom(cid);
        }
        [WebMethod]
        public static void comm65(int eid)
        {
            myDAL obj = new myDAL();
            obj.deleteemail(eid);
        }
        [WebMethod]
        public static void comm53(int id)
        {
            myDAL obj = new myDAL();
            obj.deletedetailsal(id);
        }
        [WebMethod]
        public static void comm5(int quant, int id, string type)
        {
            myDAL obj = new myDAL();
            obj.updatedetails(quant, id, type);
        }
        [WebMethod]
        public static void comm54(int quant, int id, string type)
        {
            myDAL obj = new myDAL();
            obj.updatedetailsal(quant, id, type);
        }
        [WebMethod]
        public static void comm6(string name, int plan, string descrp, string price)
        {
            myDAL obj = new myDAL();
            obj.updateplans(name, plan, descrp, price);
        }
        [WebMethod]
        public static void com61(string email, int eid)
        {
            myDAL obj = new myDAL();
            obj.updateemail(email, eid);
        }
        [WebMethod]
        public static void comm7()
        {
            myDAL obj = new myDAL();
            obj.dummyplan();
        }
        [WebMethod]
        public static void comm8(int id)
        {
            myDAL obj = new myDAL();
            obj.deleteplan(id);
        }
        [WebMethod]
        public static void comm10(int rid)
        {
            myDAL obj = new myDAL();
            obj.deletereview(rid);
        }
        [WebMethod]
        public static string comm11()
        {
            return getp11().GetXml();
        }
        private static DataSet getp11()
        {
            myDAL obj = new myDAL();
            return obj.getorders();
        }
        [WebMethod]
        public static string comm50(int id)
        {
            return getp50(id).GetXml();
        }
        private static DataSet getp50(int id)
        {
            myDAL obj = new myDAL();
            return obj.getplansal(id);
        }
        [WebMethod]
        public static void comm55(int plan)
        {
            myDAL obj = new myDAL();
            obj.deleteorder(plan);
        }
        [WebMethod]
        public static string comm60()
        {
            return getp60().GetXml();
        }
        private static DataSet getp60()
        {
            myDAL obj = new myDAL();
            return obj.getemails();
        }
        [WebMethod]
        public static void sendconf(string email, string plan, string name, string price, int orderid, string address, string phone)
        {
            myDAL obj = new myDAL();
            const string SERVER = "relay-hosting.secureserver.net";
            MailMessage oMail = new MailMessage();
            oMail.From = "no-reply@livacorporations.com";
            oMail.To = email;
            oMail.Subject = "Your Order Has Been Confirmed.";
            oMail.Body = "Order Id: " + orderid.ToString() + "\nYour Order has been Confirmed. You'll be Contacted soon enough for Placement on your provided address.\nPlease Verify the Details. If you find Something incorrect or missing please contact us at 03340468846 \nDetails: " + name + "\nPrice: " + price + "\nAddress: " + address + "\nPhone: " + phone + "\nStatus: Confirmed.";
            oMail.Priority = MailPriority.High; // enumeration
            SmtpMail.SmtpServer = SERVER;
            SmtpMail.Send(oMail);
            oMail = null;	// free up resources
            obj.updateorderst(orderid, 2);
        }
        [WebMethod]
        public static void sendcanc(string email, string plan, string name, string price, int orderid)
        {
            myDAL obj = new myDAL();
            const string SERVER = "relay-hosting.secureserver.net";
            MailMessage oMail = new MailMessage();
            oMail.From = "no-reply@livacorporations.com";
            oMail.To = email;
            oMail.Subject = "Your Order Has Been Cancelled.";
            oMail.Body = "Order Id: " + orderid.ToString() + "\nYour Order has been Cancelled.\nWe're sorry for any inconvenience we've caused. Please feel free to order again. If you have any suggestion or you want to reopen this order you can contact us at 03340468846.\nDetails: " + name + "\nPrice: " + price + "\nStatus: Cancelled.";
            oMail.Priority = MailPriority.High; // enumeration
            SmtpMail.SmtpServer = SERVER;
            SmtpMail.Send(oMail);
            oMail = null;	// free up resources
            obj.updateorderst(orderid, 3);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            myDAL obj = new myDAL();
            string a = "";
            string result = "";
            string k = DateTime.UtcNow.ToString("yyyy-MM-dd HH:mm:ss.fff", CultureInfo.InvariantCulture);
            string k1 = "";
            for (int i = 0; i < k.Length; i++)
            {
                if (k[i] != ' ' && k[i] != ':' && k[i] != '.')
                {
                    k1 += k[i];
                }
            }
            if (FileUpload1.HasFile)
            {
                try
                {
                    bool check = false;
                    string filename = Path.GetFileName(FileUpload1.FileName);
                    for (int i = 0; i < filename.Length; i++)
                    {
                        if (filename[i] == '.')
                            check = true;
                        if (check)
                            a += filename[i];
                    }
                    result = k1 + a;
                    FileUpload1.SaveAs(Server.MapPath("~/imagedata/") + result);
                }
                catch (Exception ex)
                {
                    Console.WriteLine("SQL Error" + ex.Message.ToString());
                }
            }
            obj.insertplan(TextBox6.Text, TextBox7.Text, TextBox8.Text, result);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Session.RemoveAll();
            Response.Redirect(String.Format("Login.aspx"));
        }

        protected void pice_Click(object sender, EventArgs e)
        {
            myDAL obj = new myDAL();
            string a = "";
            string result = "";
            string k = DateTime.UtcNow.ToString("yyyy-MM-dd HH:mm:ss.fff", CultureInfo.InvariantCulture);
            string k1 = "";
            for (int i = 0; i < k.Length; i++)
            {
                if (k[i] != ' ' && k[i] != ':' && k[i] != '.')
                {
                    k1 += k[i];
                }
            }
            if (FileUpload2.HasFile)
            {
                try
                {
                    bool check = false;
                    string filename = Path.GetFileName(FileUpload2.FileName);
                    for (int i = 0; i < filename.Length; i++)
                    {
                        if (filename[i] == '.')
                            check = true;
                        if (check)
                            a += filename[i];
                    }
                    result = k1 + a;
                    FileUpload2.SaveAs(Server.MapPath("~/imagedata/") + result);
                }
                catch (Exception ex)
                {
                    Console.WriteLine("SQL Error" + ex.Message.ToString());
                }
            }
            obj.updatepic(Convert.ToInt32(HiddenField3.Value), result);
        }
    }
}