﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
     <meta name="viewport" content="width=device-width, initial-scale=1"/>
  
    <title>Books in library</title>
   <link rel="stylesheet" href="../../vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="../../vendors/base/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- inject:css -->
  <link rel="stylesheet" href="../CSS/Product.css"/>
  <link rel="stylesheet" href="../../css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="../../images/favicon.png" />
  <script src="https://kit.fontawesome.com/e869edadc1.js" crossorigin="anonymous"></script>
    <style>
      
    </style>
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
    <div class="w3-container w3-center w3-animate-top">
  <h2>BOOKS IN LIBRARY</h2>
</div>
    <form id="form1" runat="server">
        
           <div class="divbtn">
               <a class="btn btn-primary" href="addproduct.aspx" role="button">Add New Book</a><br />
            </div>
            <div class="search">
                <div>
                    <asp:TextBox ID="TextBox1" runat="server" cssClass="form-control tbsearch"></asp:TextBox>
                </div>
                <div>
                    <asp:Button ID="Button1" runat="server" Text="search" class="btn btn-primary btnsearch" OnClick="Button1_Click "/>
                </div>
            </div>
<div class="searchbookname">
                <asp:Label ID="Label1" runat="server"></asp:Label>

</div>           
            <asp:Label ID="Product" runat="server"></asp:Label>
        
    </form>
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

