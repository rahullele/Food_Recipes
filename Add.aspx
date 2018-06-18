<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
    <div>
    <html>
    <head>
        <meta charset="UTF-8">
          <link rel="stylesheet" type="text/css" href="Styles/inrecipe.css" />
        <title></title>
    </head>
    <body>
        <div id="wrapper">
            <div style="margin-left: 480px">
                  <h3><asp:Label ID="Label3" runat="server">
                                  <hr color="white">
                  </asp:Label></h3>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
             
            </div>
            <div id="navigation">
               <asp:TextBox ID="txtname" runat="server" TextMode="MultiLine" BackColor="#FFCE9D" placeholder="Enter Name"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Recipe Name" ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
                <asp:Label ID="Label2" runat="server"></asp:Label>
                <asp:Button ID="btnpreview" runat="server" Text="Preview" OnClick="btnpreview_Click"/>
                <a href="home.aspx">Home</a>

            </div>
            <br>
            <div id="banner">
                <div id="img" class="image">
                    <asp:FileUpload ID="FileUpload1" runat="server" ForeColor="White" />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click" />
                    <asp:Label ID="lblmessage" runat="server"></asp:Label>
                    <br />
                    <asp:Button ID="btncheck" runat="server" Text="Check" OnClick="btncheck_Click" />

                </div>
                <div id="tiche">
                    
               
                <div id="title">
                    <h3>Preparation Time & Serving Suggestions</h3> 
                    <hr color="white">
                </div>
            <div id="chef">
                  <asp:TextBox ID="txtptime" runat="server" TextMode="MultiLine" BackColor="#FFCE9D" placeholder="Enter Preparation time and Serving Suggestions"></asp:TextBox>

                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Prearation and Serving Time" ControlToValidate="txtptime" ForeColor="Red"></asp:RequiredFieldValidator>

            </div>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="category" DataValueField="category"></asp:DropDownList>
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:foodrecipeConnectionString %>" SelectCommand="SELECT DISTINCT [category] FROM [recipe] ORDER BY [category]"></asp:SqlDataSource>
                     </div>
            </div>
            
            <h3>Ingredients</h3>
            <hr color="white">
            <div id="ingredients">
                <asp:TextBox ID="txting" runat="server" TextMode="MultiLine" BackColor="#FFCE9D" placeholder="Enter Ingredients"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Ingredients" ControlToValidate="txting" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            
            <h3>Preparation Method&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 
            </h3>
            <hr color="white">
            <div id="preparation">
                <asp:TextBox ID="txtprepmethod" runat="server" TextMode="MultiLine" BackColor="#FFCE9D" placeholder="Enter Preparation Method"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Preparation Method" ControlToValidate="txtprepmethod" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div id="comments">
                
            </div>
        </div>
    </body>
</html>
        
        
    </div>
    </form>
</body>
</html>
