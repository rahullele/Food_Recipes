using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class preview : System.Web.UI.Page
{
    string img, username;
    protected void Page_Load(object sender, EventArgs e)
    {
        username = Request.QueryString["recipename"];
        Label2.Visible = false;

        if (Session["User"] != null)
        {
            Label1.Text = "Welcome " + Session["User"].ToString();
            Label2.Text = Session["User"].ToString();

            SqlConnection con = new SqlConnection("Data Source=KARAN\\SQLEXPRESS; Database=foodrecipe; Integrated Security=True");
            con.Open();
            SqlCommand com = new SqlCommand("select name,ptime,images,ing,prepmethod from recipe where name='" + username + "'", con);

            using (SqlDataReader rdr = com.ExecuteReader())
            {

                while (rdr.Read())
                {
                    img = rdr["images"].ToString();
                    Label3.Text = @"<asp:Image ID='Image1' runat='server' ImageUrl=''/>
                    <br/>
                    <img src='" + img + "'";
                    // Label3.Text = rdr["images"].ToString();
                    Label4.Text = rdr["ptime"].ToString();
                    Label5.Text = rdr["ing"].ToString();
                    Label6.Text = rdr["prepmethod"].ToString();
                    Label7.Text = rdr["name"].ToString();
                }
            }            
        }
        else
        {
            //Label1.Text = "Not Created";
            btnlogout.Visible = false;
            Response.Redirect("login.aspx");
        }
        Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetNoStore();
    }
    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.Remove("User");
        Session.RemoveAll();
        Response.Redirect("Login.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("dashboard.aspx?name=" + username);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=KARAN\\SQLEXPRESS; Database=foodrecipe; Integrated Security=True");
        String query = "delete from recipe where name = '"+username+"'";
        SqlCommand cmd = new SqlCommand(query, con);
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Redirect("add.aspx");
        }
        catch
        {
                Label8.Text = "Error deleting Recipe";
        }
        finally
        {
            con.Close();
        }
    }
}