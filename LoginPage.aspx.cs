using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace BarterSystem
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLog_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(local);Initial Catalog=BarterDB;Persist Security Info=True;User ID=sa;Password=***********");
            SqlCommand cmd = new SqlCommand("select * from LoginTable where UserName=@user and Password=@pass", con);
            cmd.Parameters.AddWithValue("@username", txtUser.Text);
            cmd.Parameters.AddWithValue("@pass", txtPass.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (dt.Rows.Count > 0)
            {
                Session["id"] = txtUser.Text;
                Response.Redirect("HomePage.aspx");
                Session.RemoveAll();
            }
            else
            {
                Label1.Text = "You're username and password is incorrect";
                Label1.ForeColor = System.Drawing.Color.Red;

            }
        }
    }
}