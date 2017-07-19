using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class view_books2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["bookcartConnectionString"].ConnectionString);
    viewcart obj = new viewcart();
    int cart3;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from bookadd4", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        DataBind();

        cart3 = obj.cart();
        Label2.Text = "(" + cart3.ToString() + ")";
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        string insertquery = "insert into bookcart4 (id,bookname,image,price) select id,Name,Image,Price from bookadd4 where id=100";
        SqlCommand com = new SqlCommand(insertquery, con);
        com.ExecuteNonQuery();
        cart3=obj.cart();

       

        Label2.Text = "(" + cart3.ToString() + ")";
        //sum();
        //Response.Redirect("book_cart.aspx?sum1="+temp);
       // Response.Redirect("book_cart.aspx");
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        string insertquery = "insert into bookcart4 (id,bookname,image,price) select id,Name,Image,Price from bookadd4 where id=101";
        SqlCommand com = new SqlCommand(insertquery, con);
        com.ExecuteNonQuery();

        cart3 = obj.cart();



        Label2.Text = "(" + cart3.ToString() + ")";
        //sum();


        //Response.Redirect("book_cart.aspx?sum1="+temp);
        //Response.Redirect("book_cart.aspx");
        con.Close();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();
        string insertquery = "insert into bookcart4 (id,bookname,image,price) select id,Name,Image,Price from bookadd4 where id=102";
        SqlCommand com = new SqlCommand(insertquery, con);
        com.ExecuteNonQuery();

        cart3 = obj.cart();



        Label2.Text = "(" + cart3.ToString() + ")";
        //sum();
        //Response.Redirect("book_cart.aspx?sum1="+temp);
        //Response.Redirect("book_cart.aspx");
        con.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        con.Open();
        string insertquery = "insert into bookcart4 (id,bookname,image,price) select id,Name,Image,Price from bookadd4 where id=103";
        SqlCommand com = new SqlCommand(insertquery, con);
        com.ExecuteNonQuery();

        cart3 = obj.cart();



        Label2.Text = "(" + cart3.ToString() + ")";
        //sum();
        //Response.Redirect("book_cart.aspx?sum1="+temp);
        //Response.Redirect("book_cart.aspx");
        con.Close();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        con.Open();
        string deletequery = "truncate table bookcart4";
        SqlCommand com = new SqlCommand(deletequery, con);
        com.ExecuteNonQuery();
        con.Close();
        Response.Redirect("login1.aspx");
    }
}