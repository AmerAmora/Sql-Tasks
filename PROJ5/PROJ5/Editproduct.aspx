﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Editproduct.aspx.cs" Inherits="WebApplication3.Editproduct"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
 <link rel="stylesheet"  href="../CSS/Editproduct.css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <title>Edit Book</title>
     <link rel="stylesheet" href="../../vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="../../vendors/base/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- inject:css -->
  <link rel="stylesheet" href="../../css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="../../images/favicon.png" />
  <script src="https://kit.fontawesome.com/e869edadc1.js" crossorigin="anonymous"></script>
</head>
<body>
    <div class="container-scroller">
    <!-- partial:../../partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo mr-5" href="../../index.html"><img src="../../images/Logo.png" class="mr-2" alt="logo" style="height: 65px; width: 65px;"/></a>
        <a class="navbar-brand brand-logo-mini" href="../../index.html"><img src="../../images/Logo.png" alt="logo"  style="height: 60px; width: 60px;"/></a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
          <span class="ti-view-list"></span>
        </button>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="ti-view-list"></span>
        </button>
      </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:../../partials/_sidebar.html -->
      
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
            <li class="nav-item">
            <a class="nav-link" href="Sales.aspx">
              <i class="fa-solid fa-clipboard-list" style="font-size: 20px;"></i>
              <span class="menu-title">&nbsp;Sales</span>
            </a>
          </li>
         
          <li class="nav-item">
            <a class="nav-link" href="AdminCategory.aspx">
              <i class="fa-solid fa-clipboard-list" style="font-size: 20px;"></i>
              <span class="menu-title">&nbsp;Category</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Product.aspx">
              <i class="fa-solid fa-book" style="font-size: 20px;"></i>
              <span class="menu-title">&nbsp; Product</span>
            </a>
          </li>
        
          <li class="nav-item">
            <a class="nav-link" href="Users.aspx">
              <i class="fa-solid fa-user" style="font-size: 20px;"></i>
              <span class="menu-title">&nbsp; Users</span>
            </a>
          </li>
        </ul>
      </nav>
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                    <br />
                  
                  <div class="table-responsive">
    <form id="form1" runat="server">

        <div class="w3-container w3-center w3-animate-right">
  <h1>EDIT BOOK</h1>
    </div>
                <div>
            <div class="containerdiv">
<div class="containertable form-group">
    <table>
        <tr>
            <td>
                            <asp:Label ID="lbproductname" runat="server" Text="Product Name"></asp:Label>

            </td>
            <td>
                             <asp:TextBox ID="tbproductname" CssClass="tb form-control input-lg" runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td>
                            <asp:Label ID="lbcategoryname" runat="server" Text="Category Name"></asp:Label>

            </td>
            <td>
                            <asp:DropDownList ID="drcategoryname" CssClass="tb mydropdownlist btn btn-default btn-sm" runat="server"></asp:DropDownList>

            </td>
        </tr>
        <tr>
            <td>
                            <asp:Label ID="Label1" runat="server" Text="Author"></asp:Label>

            </td>
            <td>
                            <asp:TextBox ID="tbauthor" CssClass="tb form-control input-lg" runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td>
                            <asp:Label ID="lbproductprice" runat="server" Text="Product Price"></asp:Label>

            </td>
            <td>
                            <asp:TextBox ID="tbproductprice" CssClass="tb form-control input-lg" runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td>
                            <asp:Label ID="lbquantity" runat="server" Text="Quantity"></asp:Label>

            </td>
            <td>
                            <asp:TextBox ID="tbquantity" CssClass="tb form-control input-lg" runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td>
                            <asp:Label ID="Lbdetails" runat="server" Text="Details"></asp:Label>

            </td>
            <td>
                            <asp:TextBox ID="tbdetails" CssClass="tb form-control input-lg" runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td>
                            <asp:Label ID="lbsale" runat="server" Text="Sale"></asp:Label>

            </td>
            <td>
                            <asp:TextBox ID="tbsale" CssClass="tb form-control input-lg" runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" />

            </td>
            <td>
                            <asp:Button ID="btnupload" cssclass="btn btn-primary" runat="server" Text="Upload" OnClick="btnupload_Click" />

            </td>
        </tr>
            <td>
                            <asp:Image ID="Image1" runat="server" width="200px" Height="200px"/>

            </td>
        </tr>

    </table>
    <div class="btnadd">
                    <asp:Button ID="addedit" cssclass="btn btn-primary"  runat="server" Text="Add Edit" OnClick="addedit_Click" />

    </div>
    </div>
    </div>
    </div>
            
            
          </form>
        </div>
                     </div>
                </div>
              </div>
            </div>
          </div>
        </div>
                  </div>

        <script src="../../vendors/base/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="../../js/off-canvas.js"></script>
  <script src="../../js/hoverable-collapse.js"></script>
  <script src="../../js/template.js"></script>
  <script src="../../js/todolist.js"></script>

</body>
</html>
