<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <head>
                <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
        <title>Recipes</title>
        <link rel="stylesheet" type="text/css" href="Styles/Stylesheet.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
            </head>

        <div id="wrapper">
            <div id="title">
                <h1><p align="center" style="color:black;">World Recipe</p></h1></div>
            <br/>
            <div id="banner">                
        </div>
<div id="title" align="center">
    <br />
    <br />
    <h3>
    <asp:Label ID="lblusername" runat="server" Text="Enter Original password : "></asp:Label>
        
        <asp:TextBox ID="txtopass" runat="server" TextMode="Password"></asp:TextBox></h3>    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter original password" ControlToValidate="txtopass" ForeColor="Red"></asp:RequiredFieldValidator>
    <h3><asp:Label ID="lblpass" runat="server" Text="Enter new Password : "></asp:Label>
        <asp:TextBox ID="txtnpass" runat="server" TextMode="Password"></asp:TextBox></h3>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnpass" ErrorMessage="Enter new password" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
    </div>
                <div align="center">
        <asp:Button ID="btnlogin" runat="server" Text="Change Password" CssClass="btn btn-primary btn-lg" OnClick="btnlogin_Click" />
                    <asp:Label ID="Label2" runat="server" Text="Label"><a href="Login.aspx">Login</a></asp:Label>
    <br /><br />
        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label></div><br /><br /><br /><br />

                      
        
        <footer>
            <p>© 2015 <a href="home.aspx" class="link">World Food Recipe</a> Website Designed by Karan and Rahul</></p>
  <p>Phone: +91 8839 657 888 &nbsp; Email: <a href="#" class="link">worldfoodrecipe@worldfoodrecipe.com</a></p>
            </footer>
                </div>

    </div>
    </form>
</body>
</html>
