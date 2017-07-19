using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;


public partial class welcome : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["bookcartConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text = "Welcome "+Request.QueryString["name"];

        if (!IsPostBack)
        {
            if (Session["new"] == null)
                Response.Redirect("login1.aspx");
            else
            {
                Response.ClearHeaders();
                Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
                Response.AddHeader("Pragma", "no-cache");
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session["new"] = null;

        con.Open();
        string deletequery = "truncate table bookcart4";
        SqlCommand com = new SqlCommand(deletequery, con);
        com.ExecuteNonQuery();
        con.Close();
       
        Response.Redirect("login1.aspx");
    }
}