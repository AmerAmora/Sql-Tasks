<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="_14_12.Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       
       <label> First Name : </label>
        <input id="Text1" type="text" runat="server" />
        <br />
        <label> Last Name : </label>
        <input id="Text2" type="text" runat="server" />
         <br />
        <label> Phone : </label>
        <input id="Text3" type="text" runat="server" />
         <br />
        <label> Email : </label>
        <input id="Text4" type="text" runat="server" />
         <br />
        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
        <br />
        <label> Image: </label>
             
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="Button1" runat="server" Text="Edit" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Delete" OnClick="Button2_Click" />
        <label runat="server" id="test"></label>
    </form>
</body>
</html>
