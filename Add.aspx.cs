using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Data;
using System.Data.SqlClient;
public partial class Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        btncheck.Visible = false;
        btnsave.Visible = false;
        if (Session["User"] != null)
        {
            Label3.Text = "Welcome " + Session["User"].ToString();
        }
        else
        {
            //btnlogout.Visible = false;
            Response.Redirect("login.aspx");
        }
        Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetNoStore();
        btnpreview.Visible = false;
        //Label1.Text = Server.MapPath(fileuploadimage.FileName);
        //Label1.Text = Convert.ToString(FileUpload1.PostedFile.FileName);
    }
    string img,img1;
protected void btnsave_Click(object sender, EventArgs e)
{
    StringBuilder sb = new StringBuilder();
    
    if (FileUpload1.HasFile)
    {
        
        try
        {
            sb.AppendFormat(" Uploading file: {0}", FileUpload1.FileName);

            //saving the file
            FileUpload1.SaveAs("d:/WT/foodrecipe/Images\\" + FileUpload1.FileName);
            //img = FileUpload1.FileName;            
            //Showing the file information
            sb.AppendFormat("<br/> Save As: {0}", FileUpload1.PostedFile.FileName);
            sb.AppendFormat("<br/> File type: {0}", FileUpload1.PostedFile.ContentType);
            sb.AppendFormat("<br/> File length: {0}", FileUpload1.PostedFile.ContentLength);
            sb.AppendFormat("<br/> File name: {0}", FileUpload1.PostedFile.FileName);
            
        }
        catch (Exception ex)
        {
            sb.Append("<br/> Error <br/>");
            sb.AppendFormat("Unable to save file <br/> {0}", ex.Message);
        }
    }
    else
    {
        //lblmessage.Text = "Error";
        lblmessage.Text = sb.ToString();
    }
}
protected void btncheck_Click(object sender, EventArgs e)
{    
    btncheck.Visible = false;
    btnsave.Visible = false;
    FileUpload1.Visible = false;
    SqlConnection con = new SqlConnection("Data Source=KARAN\\SQLEXPRESS; Database=foodrecipe; Integrated Security=True");
    con.Open();
    SqlCommand com = new SqlCommand("select images from recipe where name='" + img + "'", con);
    
    /*using (SqlDataReader rdr = com.ExecuteReader())
    {

        while (rdr.Read())
        {
            img = rdr["images"].ToString();
            Label1.Text = @"<asp:Image ID='Image1' runat='server' ImageUrl=''/>
                    <br/>
                    <img src='" + img + "'";
        }
    }*/
}
protected void btnsubmit_Click(object sender, EventArgs e)
{
    //Saving Image to directory start
    StringBuilder sb = new StringBuilder();

    if (FileUpload1.HasFile)
    {

        try
        {
            sb.AppendFormat(" Uploading file: {0}", FileUpload1.FileName);

            //saving the file
            FileUpload1.SaveAs("d:/WT/foodrecipe/Images\\" + FileUpload1.FileName);
            //img = FileUpload1.FileName;            
            //Showing the file information
            sb.AppendFormat("<br/> Save As: {0}", FileUpload1.PostedFile.FileName);
            sb.AppendFormat("<br/> File type: {0}", FileUpload1.PostedFile.ContentType);
            sb.AppendFormat("<br/> File length: {0}", FileUpload1.PostedFile.ContentLength);
            sb.AppendFormat("<br/> File name: {0}", FileUpload1.PostedFile.FileName);

        }
        catch (Exception ex)
        {
            sb.Append("<br/> Error <br/>");
            sb.AppendFormat("Unable to save file <br/> {0}", ex.Message);
        }
    }
    else
    {
        //lblmessage.Text = "Error";
        lblmessage.Text = sb.ToString();
    }
    //Image saving end

    img = FileUpload1.FileName;
    img1 = "Images/" + img;    
    SqlConnection conn = new SqlConnection("Data Source=KARAN\\SQLEXPRESS; Database=foodrecipe; Integrated Security=True");
    SqlCommand insert = new SqlCommand("insert into recipe(name,category,ptime,ing,prepmethod,images) values(@name,@category,@ptime,@ing,@prepmethod,@images)", conn);
    insert.Parameters.AddWithValue("@name", txtname.Text);
    insert.Parameters.AddWithValue("@category", DropDownList1.Text);
    insert.Parameters.AddWithValue("@ptime", txtptime.Text);
    insert.Parameters.AddWithValue("@ing", txting.Text);
    insert.Parameters.AddWithValue("@prepmethod", txtprepmethod.Text);
    insert.Parameters.AddWithValue("@images",img1);

    try
    {
        conn.Open();
        insert.ExecuteNonQuery();
        //Label1.Text = img1;
        Label2.Text = "Successfully created";
        btnpreview.Visible = true;
    }
    catch
    {
        Label2.Text = "Error...";
    }
    finally
    {
        conn.Close();
    }
}
protected void btnpreview_Click(object sender, EventArgs e)
{
    Response.Redirect("preview.aspx?recipename="+txtname.Text);
    
}

}
