using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net.Sockets;
using System.IO;
using System.Text;


public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    string pass,name;
    protected void btnregister_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=KARAN\\SQLEXPRESS; Database=foodrecipe; Integrated Security=True");
        con.Open();
        SqlCommand com = new SqlCommand("select username from login where username='" + txtusername.Text + "'", con);
        SqlCommand comm = new SqlCommand("select email from login where username='" + txtemail.Text + "'", con);
        SqlDataReader dr = com.ExecuteReader();
        //SqlDataReader d = comm.ExecuteReader();
        name = txtusername.Text;
        if (!dr.Read())
        {
            string a;
            string _allowedChars = "abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNOPQRSTUVWXYZ0123456789";
            Random randNum = new Random();
            char[] chars = new char[10];
            int allowedCharCount = _allowedChars.Length;

            for (int i = 0; i < 10; i++)
            {
                chars[i] = _allowedChars[(int)((_allowedChars.Length) * randNum.NextDouble())];
            }
            pass = new String(chars);
            SqlConnection conn = new SqlConnection("Data Source=KARAN\\SQLEXPRESS; Database=foodrecipe; Integrated Security=True");
            SqlCommand insert = new SqlCommand("insert into login(fname,lname,username,password,email) values(@fname,@lname,@username,@password,@email)", conn);
            insert.Parameters.AddWithValue("@fname", txtfname.Text);
            insert.Parameters.AddWithValue("@lname", txtlname.Text);
            insert.Parameters.AddWithValue("@username", txtusername.Text);
            insert.Parameters.AddWithValue("@password", pass);
            insert.Parameters.AddWithValue("@email", txtemail.Text);
            try
            {
                conn.Open();
                insert.ExecuteNonQuery();
                Label2.Text = "Registered Successfully";
                SendMail();
                Label1.Visible = true;
                Label1.Text = "Your password has been sent to  " + txtemail.Text;
            }
            catch
            {
                Label2.Text = "Error while Registering...Please try again";
            }
            finally
            {
                conn.Close();
            }
        }
        else
        {
            Label2.Text = "Username or email already exists. Try again";
            Label1.Visible = false;
        }
    }
    public void SendMail()
    {
        MailMessage mail = new MailMessage();
        mail.To.Add(txtemail.Text);

        mail.From = new MailAddress("rkworldrecipes@gmail.com");
        mail.Subject = "Your Password for WorldRecipe";
        string Body = "Hello " +name+ ", your account has been registered successfully. Your password id is " + pass;
        mail.Body = Body;
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
        smtp.Port = 587;
        smtp.UseDefaultCredentials = false;
        smtp.Credentials = new System.Net.NetworkCredential
        ("rkworldrecipes", "rkworldrecipes123");

        //Or your Smtp Email ID and Password
        smtp.EnableSsl = true;
        smtp.Send(mail);
    }
}