using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            myDAL obj = new myDAL();
            Repeater1.DataSource = obj.getplansdrop();
            Repeater1.DataBind();
        }
        [WebMethod(EnableSession = true)]
        public static void addSession(String plan)
        {
            HttpContext.Current.Session["planno"] = plan;
        }
    }
}