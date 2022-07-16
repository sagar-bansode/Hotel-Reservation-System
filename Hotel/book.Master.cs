using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.Adapters;
using System.Web.UI.WebControls.Adapters;
using System.Web.UI.WebControls.WebParts;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1.Hotel
{
    public partial class book : System.Web.UI.MasterPage
    {

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\hotel.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox10.Text = DropDownList3.SelectedValue;
            TextBox6.Text = DropDownList3.SelectedItem.Text;
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(DropDownList2.SelectedItem.Text);
            int b = Convert.ToInt32(TextBox10.Text);
            int c = a * b;
            TextBox9.Text = c.ToString();
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            int f = Convert.ToInt32(DropDownList4.SelectedItem.Value);
            int d = Convert.ToInt32(TextBox9.Text);
            int g = d * f * 1 / 100;
            int h = d - g;
            TextBox9.Text = h.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into booking values('" + TextBox1.Text + "','" + DropDownList3.SelectedValue + "', '" + TextBox10.Text + "' ,'" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + DropDownList4.SelectedValue + "','" + TextBox8.Text + "','" + TextBox9.Text + "')";
                cmd.ExecuteNonQuery();


                TextBox1.Text = "";
                DropDownList3.SelectedValue = "";
                TextBox10.Text = "";
                DropDownList1.SelectedValue = "";
                DropDownList2.SelectedValue = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                DropDownList4.SelectedValue = "";
                TextBox8.Text = "";
                TextBox9.Text = "";
                Response.Write("<script>alert('Booking Successfull....')</script>");

            }

            catch
            {

                Response.Write("<script>alert('Enter the valid data')</script>");

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button2.Attributes.Add("onclick", "window.print();");
        }
    }
}