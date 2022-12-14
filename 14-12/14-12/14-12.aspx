<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="14-12.aspx.cs" Inherits="_14_12._14_12" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
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
        <label> Image: </label>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="btnUpload" Text="Submit" runat="server" OnClick="UploadFile" />

    </form>
    <label id="Label1" runat="server"></label>
</body>
</html>
