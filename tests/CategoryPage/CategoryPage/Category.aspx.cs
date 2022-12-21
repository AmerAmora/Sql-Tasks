﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CategoryPage
{
    public partial class Category : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection("data source = DESKTOP-VTV6FAK\\SQLEXPRESS; database = LibraryStore ; integrated security=SSPI");
            connection.Open();
            string table = "<table class='table table-striped'> <tr><th>ID</th> <th>Category Name</th><th>Image</th> <th>Actions</th></tr>";
            SqlCommand comand = new SqlCommand("select * from category", connection);
            SqlDataReader sdr = comand.ExecuteReader();
            while (sdr.Read())
            {
                table +=
                    $"<tr><td>{sdr[0]}</td><td>{sdr[1]}</td><td><img  src='Images/{sdr[2]}'/></td>"
                    +
                    $"<td><a href='edit.aspx?id={sdr[0]}'>Edit</a> &nbsp <a href='Delete.aspx?id={sdr[0]}'>Delete</a></td></tr>";
            }
            table += "</table>";
           Label1.Text = table;
            connection.Close();

        }
    }
}