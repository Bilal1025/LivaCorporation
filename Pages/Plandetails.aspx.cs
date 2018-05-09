using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class Plandetails : System.Web.UI.Page
    {
        private string planno;
        protected void Page_Load(object sender, EventArgs e)
        {
            planno = Request.QueryString["id"];
            if (planno == null)
            {
                try
                {
                    planno = Session["planno"].ToString();
                }
                catch (Exception exc)
                {
                    Response.Redirect("Error.html");
                }
            }
            string name = "", price="", descrp="";
            myDAL obj = new myDAL();
            string temp = "";
            obj.getplansd(Convert.ToInt32(planno), ref name, ref price, ref descrp);
            if (name == "" && price == "" && descrp == "")
                Response.Redirect("Error.html");
            Label4.Text = "Plan Description";
            Label5.Text = descrp;
            for (int i = 0; i < Label5.Text.Length; i++)
            {
                if (Label5.Text[i] != '\n'&& Label5.Text[i]!='\t')
                    temp += Label5.Text[i];
                else if(Label5.Text[i]=='\n')
                {
                    temp += '<';
                    temp += 'b';
                    temp += 'r';
                    temp += ' ';
                    temp += '/';
                    temp += '>';
                }
                else
                {
                    for (int j = 0; j < 8; j++)
                    {
                        temp += '&';
                        temp += 'n';
                        temp += 'b';
                        temp += 's';
                        temp += 'p';
                        temp += ';';
                    }
                }
            }
            Label5.Text = temp;
            Label6.Text = price;
            Label7.Text = name;
            HiddenField1.Value = planno;
            Image1.ImageUrl ="/imagedata/"+ obj.getimg(Convert.ToInt32(planno));
        }
        [WebMethod]
        public static string comm(int pid, int start, int end)
        {
            return getp(pid, start, end).GetXml();
        }
        private static DataSet getp(int postid, int start, int end)
        {
            myDAL obj = new myDAL();
            return obj.getplan(postid, start, end);
        }
        [WebMethod]
        public static string comm3(int pid)
        {
            return getp1(pid).GetXml();
        }
        private static DataSet getp1(int pid)
        {
            myDAL obj = new myDAL();
            return obj.populatetable(pid);
        }
        [WebMethod]
        public static string comm4(int pid)
        {
            return getp4(pid).GetXml();
        }
        private static DataSet getp4(int pid)
        {
            myDAL obj = new myDAL();
            return obj.getplansal(pid);
        }
        [WebMethod]
        public static int comm1(int pid)
        {
            myDAL obj = new myDAL();
            return obj.getcount(pid);
        }
        [WebMethod]
        public static void comm2(string name, string email, string mobile, string comment, int pid)
        {
            myDAL obj = new myDAL();
            obj.insertreview(email, name, pid, comment, mobile);
        }
    }
}