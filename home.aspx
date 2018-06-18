<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

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
            <div id="top">            
                <asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label>
                <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" class="btn btn-primary btn-lg"/>
                <asp:Button ID="btnsignup" runat="server" Text="Sign Up" OnClick="btnsignup_Click" class="btn btn-primary btn-lg"/>
                <asp:Button ID="btnlogout" runat="server" Text="Log Out" OnClick="btnlogout_Click" class="btn btn-primary btn-lg"/>
                <asp:Button ID="btnchange" runat="server" Text="Change Password" class="btn btn-primary btn-lg" OnClick="btnchange_Click" />
            </div>
                <div id="title">
                <h1><p align="center" style="color:black;">World Recipe</p></h1></div><br/>
            <div id="banner">
                
        </div>
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                <nav id="navigation">
                
                <div class="bs-example">
                    <div class="btn-group">
                        <asp:Button ID="btnhome" runat="server" CssClass="btn btn-primary btn-lg" Text="Home" OnClick="btnhome_Click" />
                        <asp:Button ID="btnadd" runat="server" CssClass="btn btn-primary btn-lg" Text="Add a Recipe" OnClick="btnadd_Click"/>

                        </div>
                    
               
                
                    
                            <div class="btn-group">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="btn btn-primary btn-lg dropdown-toggle" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>Recipes</asp:ListItem>
                        <asp:ListItem>Snacks</asp:ListItem>
                        <asp:ListItem>Winter</asp:ListItem>
                        <asp:ListItem>Summer</asp:ListItem>
                        <asp:ListItem>Low Calorie</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="btn-group">
  <button class="btn btn-primary btn-lg dropdown-toggle" type="button" data-toggle="dropdown">Tips & Tricks
  <span class="caret"></span></button>
  <ul class="dropdown-menu">
    <li><a href="health.aspx">Health Tips</a></li>
    <li class="divider"><a href="#"></a></li>
    <li><a href="faq.aspx">FAQs</a></li>
  
  </ul>
</div>
                   
              </div>  
        
                        
                
            </nav>
            <div id="search">
                
                    
                    <div class="col-xs-6" >
                 <div class="input-group" >
                     
                    <input type="text" class="form-control" placeholder="Search&hellip;">
                    <span class="input-group-btn">
                        <button type="button" class="btn btn-default">Go</button>
                    </span>
                </div>
                
</div>
            </div>
            
            <br/>
            <br/>
            <br/>
            <div id="partition1" class="bs-example">
    <div class="container">
        <div class="row">
            
            <div id="i1" class="col-xs-5">               
                <div class="thumbnail">
                    <p>                        
                        <a class="hovertext" href="Dashboard.aspx?name=<%= enabled1 %>" title="<%= enabled1 %>">
                            <asp:Label ID="lbl1" runat="server"></asp:Label></a></p>
                     </div>
            </div>               
               
            <div id="i2" class="col-xs-5">
                <div class="thumbnail">
                    <p>
                    <a class="hovertext" href="Dashboard.aspx?name=<%= enabled2 %>" title="<%= enabled2 %>"><asp:Label ID="lbl2" runat="server"></asp:Label></a></p>
                </div>
            </div>
            
        </div>
      </div>
            </div>
   
           <div id="partition2" class="bs-example">
        <div class="container">
        <div class="row">
            
            <div id="i1" class="col-xs-5">
                <div class="thumbnail">
                    <p>
                <a class="hovertext" href="Dashboard.aspx?name=<%= enabled3 %>" title="<%= enabled3 %>"><asp:Label ID="lbl3" runat="server"></asp:Label></a></p> 
            </div>
                </div>

            <div id="i2" class="col-xs-5">
                <div class="thumbnail">
                    <p>
                <a class="hovertext" href="Dashboard.aspx?name=<%= enabled4 %>" title="<%= enabled4 %>"><asp:Label ID="lbl4" runat="server"></asp:Label></a></p>                
                </div>
            </div>
            
        </div>
    </div>
</div>
                </ContentTemplate>
                        </asp:UpdatePanel>  
        
        <footer>
            <p>© 2015 <a href="#" class="link">World Food Recipe</a> Website Designed by Karan</></p>
  <p>Phone: +91 8839 657 888 &nbsp; Email: <a href="#" class="link">worldfoodrecipe@worldfoodrecipe.com</a></p>
            All Rights are Reserved</footer>
                </div></div>
    </form>
</body>
</html>
