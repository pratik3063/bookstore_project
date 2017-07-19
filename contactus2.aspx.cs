using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;


public partial class contactus2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["bookcartConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        string insertquery = ("insert into contact (name,emailid,contactno) values (@name,@emailid,@contactno)");

        SqlCommand com = new SqlCommand(insertquery, con);
        com.Parameters.AddWithValue("@name", TextBox1.Text);
        com.Parameters.AddWithValue("@emailid", TextBox2.Text);
        com.Parameters.AddWithValue("@contactno", TextBox5.Text);
        com.ExecuteNonQuery();
        con.Close();
        Response.Redirect("contact_confirm.aspx");
    }
}