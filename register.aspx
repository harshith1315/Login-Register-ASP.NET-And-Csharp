<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="login_register.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        /* Center align the form */
        form {
            text-align: center;
        }

        /* Style for labels */
        label {
            display: inline-block;
            width: 100px; /* Adjust width as needed */
            text-align: right;
            margin-right: 10px; /* Add margin for spacing */
        }

        /* Style for textboxes */
        input[type="text"] {
            width: 200px; /* Adjust width as needed */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Register</h1>
            <label for="user">Username:</label>
            <asp:TextBox ID="user" runat="server"></asp:TextBox><br /><br />
            <label for="pass">Password:</label>
            <asp:TextBox ID="pass" runat="server"></asp:TextBox><br /><br />
            <label for="fn">First Name:</label>
            <asp:TextBox ID="fn" runat="server"></asp:TextBox><br /><br />
            <label for="ln">Last Name:</label>
            <asp:TextBox ID="ln" runat="server"></asp:TextBox><br /><br />
            <asp:Button ID="Submitbtn" runat="server" Text="Submit" OnClick="Register" />
        </div>
    </form>
</body>
</html>
