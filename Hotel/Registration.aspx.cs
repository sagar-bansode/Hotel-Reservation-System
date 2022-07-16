using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1.Hotel
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\hotel.mdf;Integrated Security=True");


        protected void Page_Load(object sender, EventArgs e)
        {
            if(con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            
        }

        
        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into hres values('" + id.Text + "','" + name.Text + "','" + password.Text + "','" + gmail.Text + "','" + phone.Text + "','" + address.Text + "')";
                cmd.ExecuteNonQuery();
                

                id.Text = "";
                name.Text = "";
                password.Text = "";
                gmail.Text = "";
                phone.Text = "";
                address.Text = "";


                string message = "Registration Successfully..";
                string url = "hotel.aspx";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "');";
                script += "window.location = '";
                script += url;
                script += "'; }";
                ClientScript.RegisterStartupScript(this.GetType(), "Redirect", script, true);






            }

            catch {

                Response.Write("<script>alert('Enter the valid data')</script>");
            
            }
        }

       
    }
}