using System;
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
            SqlConnection connection = new SqlConnection("data source = DESKTOP-8NTQ6AN\\SQLEXPRESS; database = LibraryStore ; integrated security=SSPI");
            connection.Open();
            string table = "<table class='table table-striped'> <tr><th>ID</th> <th>Category Name</th><th>Image</th></tr>";
            SqlCommand comand = new SqlCommand("select * from category", connection);
            SqlDataReader sdr = comand.ExecuteReader();
            while (sdr.Read())
            {
                table +=
                    $"<tr><td>{sdr[0]}</td><td>{sdr[1]}</td><td><img width='200px' height='200px' src='Images/{sdr[2]}'/>"
                    +
                    $"<td><a href='edit.aspx?id={sdr[0]}'>Edit</a><a href='Delete.aspx?id={sdr[0]}'>Delete</a></td></tr>";
            }
            table += "</table>";
           Label1.Text = table;
        }
    }
}