using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;


public partial class bookcart1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["bookcartConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        int temp;
       // selectstat();
        /*SqlCommand sum = new SqlCommand("select sum(price) from bookcart4", con);
        temp = (int)sum.ExecuteScalar();*/
        //Label4.Text = Request.QueryString["sum1"];
        con.Close();
        /*if (Label4.Text == "")
        {
            con.Open();
            string deletequery = "truncate table bookcart4";
            SqlCommand com = new SqlCommand(deletequery, con);
            com.ExecuteNonQuery();
            //selectstat();
            Response.Redirect("view_books.aspx");
        }*/

        SqlDataAdapter da = new SqlDataAdapter("select * from bookcart4", con);
        DataTable dt = new DataTable();

        da.Fill(dt);
        GridView1.DataSourceID = "SqlDataSource1";
        con.Close();
        


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();

        string deletequery = "truncate table bookcart4";
        SqlCommand com = new SqlCommand(deletequery, con);
        com.ExecuteNonQuery();

        SqlDataAdapter da = new SqlDataAdapter("select * from bookcart4", con);
        DataTable dt = new DataTable();

        da.Fill(dt);
        GridView1.DataSourceID = "SqlDataSource1";
        
        //DataBind();
        
        //Label4.Text = "";
        con.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        con.Open();
        clearcart();
        con.Close();
    }

    public void clearcart()
    {
        string deletequery = "truncate table bookcart4";
        SqlCommand com = new SqlCommand(deletequery, con);
        com.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter("select * from bookcart4", con);
        DataTable dt = new DataTable();

        da.Fill(dt);
        GridView1.DataSourceID = "SqlDataSource1";
        Response.Redirect("home6.aspx");
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Buy1.aspx");
    }
}