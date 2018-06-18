<%@ Page Language="C#" AutoEventWireup="true" CodeFile="preview.aspx.cs" Inherits="preview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
    <div>
        
        <br />
        <br />
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
                <asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server"></asp:Label>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Font-Bold="True"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Confirm Changes" OnClick="Button1_Click"/>
                <asp:Button ID="Button2" runat="server" Text="Cancel Changes" OnClick="Button2_Click" />
                <asp:Label ID="Label8" runat="server"></asp:Label>
                <asp:Button ID="btnlogout" runat="server" Text="LogOut" OnClick="btnlogout_Click" />
        

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
            <div id="ingredients">
                <asp:Label ID="Label5" runat="server"></asp:Label>
                </div>
            
            <h3>Preparation Method
                
            </h3>
            <hr color="white">
            <div id="preparation">
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
