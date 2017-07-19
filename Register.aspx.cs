using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Register : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["bookcartConnectionString"].ConnectionString);
    int temp;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            con.Open();

            SqlCommand checkuser = new SqlCommand("select count(*) from register where (username=@username AND password=@password)", con);
            checkuser.Parameters.AddWithValue("@username", TextBox1.Text);
            checkuser.Parameters.AddWithValue("@password", TextBox3.Text);

            temp = (int)checkuser.ExecuteScalar();
        
        
            if (temp > 0)
            {
                Response.Write("User already exists");
                con.Close();
            }

            else 
            {
                try 
                {
                    string insertquery = ("insert into register (username,emailid,Password,contactno) values (@username,@emailid,@password,@contactno)");
                    SqlCommand com = new SqlCommand(insertquery, con);
                    com.Parameters.AddWithValue("@username",TextBox1.Text);
                    com.Parameters.AddWithValue("@emailid", TextBox2.Text);
                    com.Parameters.AddWithValue("@password", TextBox3.Text);
                    com.Parameters.AddWithValue("@contactno", TextBox5.Text);
                    com.ExecuteNonQuery();
                    Label8.Text = "Registration is successfull";

                }
                catch(Exception ex)
                {
                    Response.Write("error" + ex.ToString());
                }

                con.Close();
            
            }
        }
    }
}