using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["new"] == null)
        {
            Response.Redirect("login1.aspx");
        
        }
        else
        {
            Response.Redirect("welcome.aspx");
        }
    }
    
}