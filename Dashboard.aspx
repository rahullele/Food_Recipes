<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <asp:Button ID="btnlogout" runat="server" Text="LogOut" OnClick="btnlogout_Click" />
        <br />
        <asp:Label ID="Label2" runat="server"></asp:Label>
    </div>
        <div>

            <html>
    <head>
        <meta charset="UTF-8">
          <link rel="stylesheet" type="text/css" href="Styles/inrecipe.css" />
        <title></title>
    </head>
    <body>
        <div id="wrapper">
            <div id="navigation">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Font-Bold="True"></asp:Label>
            </div>
            <br>
            <div id="banner">
                <div id="img" class="image">
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                    
                </div>
                <div id="tiche">
                    
               
                <div id="title">
                    <h3>Preparation Time & Serving Suggestions</h3> 
                    <hr color="white">
                </div>
            <div id="chef">
                <asp:Label ID="Label4" runat="server"></asp:Label>
                </div>
                     </div>
            </div>
            
            <h3>Ingredients</h3>
            <hr color="white">
            <div id="ingredients" style="overflow:auto">
                <asp:Label ID="Label5" runat="server"></asp:Label>
                </div>
            
            <h3>Preparation Method</h3>
            <hr color="white">
            <div id="preparation" style="overflow:auto">
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </div>
            
            <div id="comments"></div>
            
        </div>
    </body>
</html>

        </div>
    </form>

</body>
</html>
