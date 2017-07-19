using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;


public partial class Buy1 : System.Web.UI.Page
{
    int temp;
    string a1;
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["bookcartConnectionString"].ConnectionString);
    static Random random = new Random();

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand sum = new SqlCommand("select sum(price) from bookcart4", con);
         temp = (int)sum.ExecuteScalar();
         Label1.Text = "total price is " + temp;

         for (int i = 0; i < 2; i++)
         {

             Label2.Text =  (Convert.ToString(random.Next(100, 1000))); // to specify range for random number
         }
         //string a =(ListItemCollection car)ListBox1.Items;
         // ListItemCollection c = ListBox1.Items;
        
         /*SqlCommand cmd = new SqlCommand("insert into buyprac (bookname) values(@bookname )", con);
      //object a= ListBox1.Items;
        foreach(ListItem item in ListBox1.Items)
        {
         cmd.Parameters.AddWithValue("@bookname",item.Value);
         cmd.ExecuteNonQuery();
        }*/
        

        con.Close();
    }

   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        con.Open();
        string deletequery = "truncate table bookcart4";
        SqlCommand com = new SqlCommand(deletequery, con);
        com.ExecuteNonQuery();
        con.Close();
        Response.Redirect("login1.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into buy (orderid,name,contactno,address,bookname,totalprice) values(@orderid,@name,@contactno,@address,@bookname,@totalprice)", con);

        cmd.Parameters.AddWithValue("@orderid", Label2.Text);
        cmd.Parameters.AddWithValue("@name", TextBox3.Text);
        cmd.Parameters.AddWithValue("@contactno", TextBox4.Text);
        cmd.Parameters.AddWithValue("@address", TextBox1.Text);
        cmd.Parameters.AddWithValue("bookname", "");
        cmd.Parameters.AddWithValue("@totalprice", temp);


        for (int i = 0; i < ListBox1.Items.Count; i++)
        {
            //a1 = ListBox1.Items.ToString();
            cmd.Parameters["bookname"].Value = ListBox1.Items[i].Text;
            cmd.ExecuteNonQuery();
        }

        //cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect("buy_welcome.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();
        string deletequery = "truncate table bookcart4";
        SqlCommand com = new SqlCommand(deletequery, con);
        com.ExecuteNonQuery();
        con.Close();
        Response.Redirect("login1.aspx");
    }
}