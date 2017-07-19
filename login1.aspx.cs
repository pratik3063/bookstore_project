using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;


public partial class login1 : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["bookcartConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        
       /* if (IsPostBack)
        {
            if (Session["new"] ==null)
            {
                Response.Redirect("login1.aspx");

            }
            else
            {
                Response.Redirect("welcome.aspx");
            }

        }*/
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            con.Open();
            SqlCommand checkusername = new SqlCommand("select count (*) from register where (username=@username)", con);
            checkusername.Parameters.AddWithValue("@username", TextBox1.Text);
            int userexist = (int)checkusername.ExecuteScalar();
            string login = TextBox1.Text;

            if (userexist > 0)
            {
                SqlCommand cmdpass = new SqlCommand("select Password from register where (Password=@password)", con);
                cmdpass.Parameters.AddWithValue("@password", TextBox2.Text);
                string password = (string)cmdpass.ExecuteScalar();
                //Response.Write(password);
                //Response.Write(TextBox2.Text);
                
                if (password == "prk6")
           {
               Session["new1"] = login;
               Response.Redirect("admin_viewbook.aspx");
           }

                if (password == TextBox2.Text)
                {
                    Session["new"] = login;
                    Response.Redirect("welcome.aspx?name=" + TextBox1.Text);


                }


                else
                {
                    Label3.Text = "Userid or password is incorrrect";

                }
            }
            else
            {
                Response.Write("username is not exist");
            }

        }
        catch (Exception ex)
        {
            Response.Write("Error is " + ex.ToString());
        }
        con.Close();
    }
}