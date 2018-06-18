using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class home : System.Web.UI.Page
{
    string[] img = new string[10];
    string[] name = new string[10];
    int i;
    string name1,naam;
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.Text == "Snacks")
        {
            name1 = "Snacks";
        }
        else if (DropDownList1.Text == "Winter")
            name1 = "Winter";
        else if (DropDownList1.Text == "Summer")
            name1 = "Summer";
        else
            name1 = "Low Calorie";
        //Label3.Text = name1;
    }
    //naam = (string)(Session["User"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        btnsignup.Visible = false;
        btnlogin.Visible = false;
        btnlogout.Visible = false;
        btnchange.Visible = false;
        if(Session["User"] != null)
        {
            //naam = (string)(Session["User"]);
            Label1.Text = "Welcome " + Session["User"].ToString();
            btnlogout.Visible = true;
            btnchange.Visible = true;
        }
        else
        {
            btnlogin.Visible = true;
            btnsignup.Visible = true;
        }
        naam = (string)(Session["User"]);
        //name1 = "Summer";
        name1 = DropDownList1.Text;
        SqlConnection con = new SqlConnection("Data Source=KARAN\\SQLEXPRESS; Database=foodrecipe; Integrated Security=True");
        con.Open();
        SqlCommand com = new SqlCommand("select images,name from recipe where category ='"+name1+"'", con);
        SqlCommand com1 = new SqlCommand("select images,name from recipe",con);
        if (name1 != "Recipes")
        {
            using (SqlDataReader rdr = com.ExecuteReader())
            {
                i = 1;
                while (rdr.Read() && i != 5)
                {

                    img[i] = rdr["images"].ToString();
                    name[i] = rdr["name"].ToString();
                    i++;
                }
                lbl1.Text = @"<asp:Image ID='Image1' runat='server' ImageUrl=''/>
                    <br/>
                    <img src='" + img[1] + "'";

                lbl2.Text = @"<asp:Image ID='Image1' runat='server' ImageUrl=''/>
                    <br/>
                    <img src='" + img[2] + "'";
                lbl3.Text = @"<asp:Image ID='Image1' runat='server' ImageUrl=''/>
                    <br/>
                    <img src='" + img[3] + "'";
                lbl4.Text = @"<asp:Image ID='Image1' runat='server' ImageUrl=''/>
                    <br/>
                    <img src='" + img[4] + "'";
                // Label3.Text = rdr["images"].ToString();                            
            }
        }
        else
        {
            using (SqlDataReader rdr = com1.ExecuteReader())
            {
                i = 1;
                while (rdr.Read() && i != 5)
                {

                    img[i] = rdr["images"].ToString();
                    name[i] = rdr["name"].ToString();
                    i++;
                }
                lbl1.Text = @"<asp:Image ID='Image1' runat='server' ImageUrl=''/>
                    <br/>
                    <img src='" + img[1] + "'";

                lbl2.Text = @"<asp:Image ID='Image1' runat='server' ImageUrl=''/>
                    <br/>
                    <img src='" + img[2] + "'";
                lbl3.Text = @"<asp:Image ID='Image1' runat='server' ImageUrl=''/>
                    <br/>
                    <img src='" + img[3] + "'";
                lbl4.Text = @"<asp:Image ID='Image1' runat='server' ImageUrl=''/>
                    <br/>
                    <img src='" + img[4] + "'";
            }
        }
    }
    public string enabled1
    {
        get
        {
            return name[1];
        }
        /*  set 
          {
              name1=name[1];}*/
    }

        public string enabled2
        {
            get
            {
                return name[2];
            }            
        }

        public string enabled3
        {
            get
            {
                return name[3];
            }
        }

        public string enabled4
        {
            get
            {
                return name[4];
            }
        }
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session.Remove("User");
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }
        protected void btnsignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
        protected void btnhome_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
        protected void btnadd_Click(object sender, EventArgs e)
        {
            Response.Redirect("add.aspx");
        }
        protected void btnchange_Click(object sender, EventArgs e)
        {
            Response.Redirect("changepassword.aspx?uname="+naam);
        }
}