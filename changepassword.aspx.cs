using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

 
public partial class changepassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["bookcartConnectionString"].ConnectionString);
    bool change = false;
    string login;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string oldpwd;
        oldpwd = TextBox1.Text.ToString();
        SqlCommand cmd = new SqlCommand("select Password from register where password='" + oldpwd + "'", con);
        con.Open();
       SqlDataReader dr= cmd.ExecuteReader();

       if (dr.Read())
       {
           if (oldpwd == dr[0].ToString())
           {
               if (TextBox2.Text.ToString() == TextBox3.Text.ToString())
               {
                   change = true;
               }
           }
           else
           {
               string msg = @"alert('your old Password is incorrect');";
               Page.ClientScript.RegisterStartupScript(this.GetType(), "MyScript", msg, true);

           }

       }
       else
       {
           string msg = @"alert('your old Password is incorrect');";
           Page.ClientScript.RegisterStartupScript(this.GetType(), "MyScript", msg, true);
       }
       con.Close();

        if(change==true)
        {
SqlCommand upd = new SqlCommand("update register set Password='"+TextBox2.Text.ToString()+"'where password='"+oldpwd+
    "'",con);
con.Open();
             upd.ExecuteNonQuery();
             con.Close();
             string msg = @"alert('your password is changed successfully');";
             Page.ClientScript.RegisterStartupScript(this.GetType(), "MyScript", msg, true);
             TextBox1.Enabled = false;
             TextBox2.Enabled = false;
             TextBox3.Enabled = false;
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
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