<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Users.Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <label> Email : </label>
          <asp:TextBox ID="email" runat="server"></asp:TextBox>
        <br />
         <label> Password : </label>
          <asp:TextBox ID="pass" runat="server"></asp:TextBox>
         <br />
         <label> First Name : </label>
          <asp:TextBox ID="firstName" runat="server"></asp:TextBox>
         <br />
         <label> Last Name : </label>
          <asp:TextBox ID="lastName" runat="server"></asp:TextBox>
         <br />
         <label> Phone : </label>
          <asp:TextBox ID="phone" runat="server"></asp:TextBox>
         <br />
         <asp:DropDownList ID="City" runat="server"></asp:DropDownList>
         <br />
         <asp:DropDownList ID="Role" runat="server"></asp:DropDownList>
         <br />
         <label> Image: </label>
        <br />
        <img id="image1" runat="server" src="#"/>

         <br />
         <asp:FileUpload ID="FileUpload1" runat="server" />
         <br />
        <asp:Button ID="btnUpload" Text="Save" runat="server" OnClick="Edituser" />
    </form>
</body>
</html>
