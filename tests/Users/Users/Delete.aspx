<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="Users.Delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="email" runat="server" Text="CEmail : "></asp:Label>
        <br />
        <asp:Label ID="firstName" runat="server" Text="First name : "></asp:Label>
        <br />
        <asp:Label ID="lastName" runat="server" Text="Last Name : "></asp:Label>
        <br />
        <asp:Label ID="phone" runat="server" Text="Phone : "></asp:Label>
        <br />
        <asp:Label ID="City" runat="server" Text="city : "></asp:Label>
        <br />
        <asp:Label ID="Role" runat="server" Text="role : "></asp:Label>
        <br />
        <img runat="server" src="#" id="image1"/>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Delete" OnClick="Delete_button" />

    </form>
</body>
</html>
