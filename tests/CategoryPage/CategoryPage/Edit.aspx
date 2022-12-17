<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="CategoryPage.Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Category Name"></asp:Label>
        <asp:TextBox ID="Category_Name" runat="server"></asp:TextBox>
        <br />
       <asp:Label ID="Label2" runat="server" Text="Image :"></asp:Label>
        <br />
        <img runat="server" src="#" id="image1">
        <br />
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
           <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Save" />
    </form>
</body>
</html>
