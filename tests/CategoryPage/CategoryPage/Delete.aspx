<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="CategoryPage.Delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="CategoryName" runat="server" Text="Category name : "></asp:Label>
        <br />
         <asp:Label ID="Label1" runat="server" Text="Image "></asp:Label>
        <br />
         <img runat="server" src="#" id="image1">
        <br />
         <asp:Button ID="Button1" runat="server" Text="Delete" OnClick="Delete_button" />
    </form>
</body>
</html>
