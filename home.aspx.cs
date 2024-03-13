using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace login_register
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect($"Default.aspx");
            }
        }
        protected void Logout(object sender, EventArgs e)
        {
            Session["username"] = null;
            if(Session["username"] == null)
            {
                Response.Redirect($"Default.aspx");
            }
            
        }
    }
}