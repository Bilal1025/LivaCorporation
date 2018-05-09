<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication6.Login" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="cache-control" content="max-age=43200" />
    <title>Login Form</title>
    <link rel="stylesheet" href="css/style1.css">
    <link rel="icon" href="img/icon.png"/>
</head>
<body>
    <form runat="server">
        <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro' rel='stylesheet' type='text/css'>
        <h4>Login Information </h4>
        <asp:TextBox AutoCompleteType="Disabled" ID="TextBox1" placeholder="Enter Username" runat="server"></asp:TextBox>
        <asp:TextBox type="password" ID="TextBox2" placeholder="Enter Password" runat="server"></asp:TextBox>
        <a href="#">Forgot your password?</a>
        <asp:Button ID="Button1" OnClick="Button1_Click" CssClass="button" runat="server" Text="Login" />
    </form>
</body>
</html>
