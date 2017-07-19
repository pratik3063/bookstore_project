using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Net;
using System.Net.Mail;
using System.Data.SqlClient;




public partial class forgetpassword3 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["bookcartConnectionString"].ConnectionString);
    SqlConnection con1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["bookcartConnectionString"].ConnectionString);
    string emailid1;
    string password;
    bool check = false;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        emailid1 = TextBox1.Text.ToString();

        SqlCommand cmd = new SqlCommand("select emailid from register", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            if (emailid1 == dr[0].ToString())
            {
                check = true;

                SqlCommand cmd1 = new SqlCommand("select * from register where emailid='" + emailid1 + "'", con1);

                con1.Open();
                SqlDataReader dr1 = cmd1.ExecuteReader();
                while (dr1.Read())
                {
                    password = dr1[2].ToString();

                }
                if (!string.IsNullOrEmpty(password))
                {

                    MailMessage msg = new MailMessage();
                    msg.From = new MailAddress("pratik30393@gmail.com");
                    msg.To.Add(emailid1);
                    msg.Subject = " Recover your Password";
                    msg.Body = ("Your Password is:" + password);
                    msg.IsBodyHtml = true;
                    SmtpClient smt = new SmtpClient();
                    smt.Host = "smtp.gmail.com";
                    System.Net.NetworkCredential ntwd = new NetworkCredential();
                    ntwd.UserName = "pratik30393@gmail.com"; //Your Email ID  
                    ntwd.Password = "vengurla"; // Your Password  
                    smt.UseDefaultCredentials = true;
                    smt.Credentials = ntwd;
                    smt.Port = 587;
                    smt.EnableSsl = true;
                    smt.Send(msg);
                    lblmsg.Text = "Password Sent Successfully check your mail";
                    lblmsg.ForeColor = System.Drawing.Color.ForestGreen;

                }
                con1.Close();

            }
            

        }
        if (check)
        { 
        }
        else
        {

            string msg1 = @"alert('your email id is incorrect');";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "MyScript", msg1, true);
        }
        
                        
        con.Close();
    }
}