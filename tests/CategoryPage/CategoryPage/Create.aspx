﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="CategoryPage.Create" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      <label> Category Name : </label>
        <asp:TextBox ID="Category_Name" runat="server"></asp:TextBox>
         <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="btnUpload" Text="Submit" runat="server" OnClick="CreateNew" />
        
    </form>
</body>
</html>
