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
    public partial class admin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\hotel.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            disp_data();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into booking values('" + TextBox1.Text + "','" + DropDownList1.SelectedItem + "', '" + TextBox2.Text + "' ,'" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + DropDownList4.SelectedItem + "','" + TextBox8.Text + "','" + TextBox9.Text + "')";
                cmd.ExecuteNonQuery();


                TextBox1.Text = "";
                DropDownList1.SelectedValue = "";
                TextBox2.Text = "";
                DropDownList2.SelectedValue = "";
                DropDownList3.SelectedValue = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                DropDownList4.SelectedValue = "";
                TextBox8.Text = "";
                TextBox9.Text = "";
              

                disp_data();
            }
            catch 
            {

                Response.Write("<script>alert('Add Record Successfully...')</script>");
            }
        }
        public void disp_data()
        {

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from booking";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                TextBox2.Text = DropDownList1.SelectedValue;
                TextBox7.Text = DropDownList1.SelectedItem.Text;
            }
            catch (Exception ex)
            {
                Console.WriteLine("{0} Exception caught ", ex);
            }
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                int a = Convert.ToInt32(DropDownList3.SelectedItem.Text);
                int b = Convert.ToInt32(TextBox2.Text);
                int c = a * b;
                TextBox9.Text = c.ToString();
            }
            catch (Exception ex)
            {
                Console.WriteLine("{0} Exception caught ", ex);
            }
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                int f = Convert.ToInt32(DropDownList4.SelectedItem.Value);
                int d = Convert.ToInt32(TextBox9.Text);
                int g = d * f * 1 / 100;
                int h = d - g;
                TextBox9.Text = h.ToString();
            }
            catch (Exception ex)
            {
                Console.WriteLine("{0} Exception caught ", ex);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "update booking set name = '" + TextBox1.Text + "', suite = '" + DropDownList1.SelectedItem + "', perday_rate = '" + TextBox2.Text + "', persons = '" + DropDownList2.SelectedValue + "', no_of_rooms = '" + DropDownList3.SelectedValue + "', in_date = '" + TextBox3.Text + "', out_date = '" + TextBox4.Text + "', email = '" + TextBox5.Text + "', mobile_no = '" + TextBox6.Text + "', room_type = '" + TextBox7.Text + "', discount = '" + DropDownList4.SelectedItem + "', village = '" + TextBox8.Text + "', amount = '" + TextBox9.Text + "' where id = " + TextBox10.Text + "";
                cmd.ExecuteNonQuery();


                TextBox1.Text = "";
                DropDownList1.SelectedValue = "";
                TextBox2.Text = "";
                DropDownList2.SelectedValue = "";
                DropDownList3.SelectedValue = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                DropDownList4.SelectedValue = "";
                TextBox8.Text = "";
                TextBox9.Text = "";
                TextBox10.Text = "";

                disp_data();
            }
            catch
            {
                Response.Write("<script>alert('Update Record Successfully...')</script>");
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "delete from booking where id = " + TextBox10.Text + "";
                cmd.ExecuteNonQuery();


                TextBox10.Text = "";
                Response.Write("<script>alert('Delete Record Successfully...')</script>");

            }
            catch 
            {
                Response.Write("<script>alert('Delete Record Successfully...')</script>");
            }

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Button5.Attributes.Add("onclick", "Gridview1.print();");
        }
    }
}