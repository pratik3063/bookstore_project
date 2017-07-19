using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class buy_welcome : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["bookcartConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        string deletequery = "truncate table bookcart4";
        SqlCommand com = new SqlCommand(deletequery, con);
        com.ExecuteNonQuery();
        con.Close();
        Response.Redirect("login1.aspx");
            
    }
}