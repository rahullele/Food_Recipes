using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class changepassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    string name;
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        name = Request.QueryString["uname"];
        SqlConnection con = new SqlConnection("Data Source=KARAN\\SQLEXPRESS; Database=foodrecipe; Integrated Security=True");
        con.Open();
        SqlCommand com = new SqlCommand("select password from login where username='" + name + "'", con);
        SqlDataReader dr = com.ExecuteReader();
        if (!dr.Read())
        {
            Label1.Text = "Invalid User";
        }
        else
        {
            if (dr[0].ToString() == txtopass.Text)
            {
                SqlConnection conn = new SqlConnection("Data Source=KARAN\\SQLEXPRESS; Database=foodrecipe; Integrated Security=True");
                string query = "update login set password ='" + txtnpass.Text + "' where username='" + name + "'";
                SqlCommand cmd = new SqlCommand(query, conn);
                try
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    Label1.Text = "Password Changed Successfully";
                }
                catch
                {
                    Label1.Text = "Error changing Password";
                }
                finally
                {
                    conn.Close();
                }
            }
            else
            {
                Label1.Text = "Wrong Password";
            }
        }
    }
}