using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;



/// <summary>
/// Summary description for viewcart
/// </summary>
public class viewcart 
{
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["bookcartConnectionString"].ConnectionString);
    int cart1;
	public viewcart()
	{
		//
		// TODO: Add constructor logic here
		//
	}

  public int cart()
    {
      
        con.Open();
         SqlCommand sum = new SqlCommand("select count(*) from bookcart4", con);
        cart1 = (int)sum.ExecuteScalar();
        con.Close();
        return cart1;
      
       
      
    
    }
}