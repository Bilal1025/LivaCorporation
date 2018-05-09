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
    public partial class DesignPlan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static string comm1()
        {
            return getp1().GetXml();
        }
        private static DataSet getp1()
        {
            myDAL obj = new myDAL();
            return obj.customload();
        }
        [WebMethod]
        public static string comm2()
        {
            return getp2().GetXml();
        }
        private static DataSet getp2()
        {
            myDAL obj = new myDAL();
            return obj.getcustomplanin();
        }
        [WebMethod(EnableSession = true)]
        public static void addSession(String query, string values, string price)
        {
            HttpContext.Current.Session["planno"] = "Custom Plan";
            HttpContext.Current.Session["query"] = query;
            HttpContext.Current.Session["values"] = values;
            HttpContext.Current.Session["price"] = price;
        }
    }
}