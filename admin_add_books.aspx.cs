using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class add_books : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["bookcartConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "//images//" + str);
            string path = "~//images/" + str.ToString();

            con.Open();
            SqlCommand cmd = new SqlCommand("insert into bookadd (Name,Image,Price,ISBN) values(@name,@image,@price,@isbn )", con);
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@image", path);
            cmd.Parameters.AddWithValue("@price",TextBox2.Text);
            cmd.Parameters.AddWithValue("@isbn", TextBox3.Text);

            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("admin_viewbook.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "//images//" + str);
            string path = "~//images/" + str.ToString();

            con.Open();
            SqlCommand cmd = new SqlCommand("insert into bookadd5 (name,image,price,ISBN) values(@name,@image,@price,@isbn )", con);
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@image", path);
            cmd.Parameters.AddWithValue("@price", TextBox2.Text);
            cmd.Parameters.AddWithValue("@isbn", TextBox3.Text);

            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("admin_viewbook1.aspx");
        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "//images//" + str);
            string path = "~//images/" + str.ToString();

            con.Open();
            SqlCommand cmd = new SqlCommand("insert into bookadd4 (name,image,price,ISBN) values(@name,@image,@price,@isbn )", con);
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@image", path);
            cmd.Parameters.AddWithValue("@price", TextBox2.Text);
            cmd.Parameters.AddWithValue("@isbn", TextBox3.Text);

            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("admin_viewbook2.aspx");
        }

    }
}