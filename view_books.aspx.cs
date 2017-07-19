using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;


    public partial class view_books : System.Web.UI.Page
    {
       
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["bookcartConnectionString"].ConnectionString);
        int temp, cart1;
        viewcart obj = new viewcart();
        void sum()
        {
            SqlCommand sum = new SqlCommand("select sum(price) from bookcart4", con);
            temp = (int)sum.ExecuteScalar();
        }




        protected void Page_Load(object sender, EventArgs e)
        {

            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from bookadd", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            DataBind();

            cart1 = obj.cart();
            Label2.Text = "(" + cart1.ToString() + ")";
            con.Close();
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            // Button1.Visible = false;
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string insertquery = "insert into bookcart4 (id,bookname,image,price) select ID,Name,Image,Price from bookadd where id=1";
            SqlCommand com = new SqlCommand(insertquery, con);
            com.ExecuteNonQuery();
            sum();

            cart1 = obj.cart();

            Label2.Text = "(" + cart1.ToString() + ")";
            // Response.Redirect("bookcart1.aspx?sum1="+temp);
            //Response.Redirect("bookcart1.aspx");
            con.Close();

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            string insertquery = "insert into bookcart4 (id,bookname,image,price) select ID,Name,Image,Price from bookadd where id=2";
            SqlCommand com = new SqlCommand(insertquery, con);
            com.ExecuteNonQuery();
            //sum();
            cart1 = obj.cart();

            Label2.Text = "(" + cart1.ToString() + ")";
            // Response.Redirect("bookcart1.aspx?sum1="+temp);
            //Response.Redirect("bookcart1.aspx");
            con.Close();
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            string insertquery = "insert into bookcart4 (id,bookname,image,price) select id, Name,Image,Price from bookadd where id=1003";
            SqlCommand com = new SqlCommand(insertquery, con);
            com.ExecuteNonQuery();
            cart1 = obj.cart();

            Label2.Text = "(" + cart1.ToString() + ")";
            //Response.Redirect("bookcart1.aspx");
            con.Close();
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            con.Open();
            string insertquery = "insert into bookcart4 (id,bookname,image,price) select id, Name,Image,Price from bookadd where id=1004";
            SqlCommand com = new SqlCommand(insertquery, con);
            com.ExecuteNonQuery();
            cart1 = obj.cart();

            Label2.Text = "(" + cart1.ToString() + ")";
            //Response.Redirect("bookcart1.aspx");
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
