using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            myDAL obj = new myDAL();
            int result = obj.login(TextBox1.Text, TextBox2.Text);
            if (result==1)
            {
                Session["username"] = TextBox1.Text;
                Response.Redirect(String.Format("Admin.aspx"));
            }
            else if(result==2)
            {
                string script = "alert('Invalid Username')";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            }
            else
            {
                string script = "alert('Invalid Password')";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            }
        }
    }
}