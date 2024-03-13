<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="login_register._Default" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <style>
        #hyperlinkExample{
            text-decoration: none;
            font-size:15px;
        }
    </style>
    <form id="form1" runat="server">
        <center>
        <div>
            <h1>Login</h1>
            <label for="user">Username:</label>
            <asp:TextBox ID="user" runat="server"></asp:TextBox><br /><br />
            <label for="pass">Password:</label>
            <asp:TextBox ID="pass" runat="server" TextMode="Password"></asp:TextBox><br /><br />
            <asp:HyperLink ID="hyperlinkExample" runat="server" NavigateUrl="register.aspx" Text="SIGN UP"></asp:HyperLink><br /><br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="Test" /><br />
            <label ID="error" runat="server" Visible="false"></label>
        </div>
        </center>
    </form>
</body>
</html>

