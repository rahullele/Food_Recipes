using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=KARAN\\SQLEXPRESS; Database=foodrecipe; Integrated Security=True");
        con.Open();
        SqlCommand com = new SqlCommand("select password from login where username='" + txtusername.Text + "'", con);
        SqlDataReader dr = com.ExecuteReader();

        if (!dr.Read())
        {
            Label1.Text = "Invalid User";
        }
        else
        {
            if (dr[0].ToString() == txtpassword.Text)
            {
                Session["User"] = txtusername.Text;
                Response.Redirect("home.aspx");
            }

            else
            {
                Label1.Text = "Wrong Password";
                txtpassword.Focus();
            }
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        txtpassword.Visible = false;
        lblpassword.Visible = false;
    }
}