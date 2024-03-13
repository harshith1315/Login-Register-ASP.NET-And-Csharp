<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="login_register.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <style>
        #btn {
            background-color: #007bff; /* Blue background color */
            color: #fff; /* White text color */
            padding: 10px 20px; /* Padding around the text */
            border: none; /* No border */
            border-radius: 5px; /* Rounded corners */
            cursor: pointer; /* Cursor style */
            text-decoration: none; /* Remove default underline */
            font-size: 16px; /* Font size */
        }
        /* Hover effect for the logout button */
        #btn:hover {
            background-color: #0056b3; /* Darker blue background color on hover */
        }
    </style>
    <form id="form1" runat="server">
        <div>
            <h1>HELLO</h1>
            <asp:Button ID="btn" runat="server" Text="Submit" OnClick="Logout" />
        </div>
    </form>
</body>
</html>
