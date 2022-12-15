using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Input;

namespace _14_12
{
    public partial class _14_12 : System.Web.UI.Page
    {
        public void print() 
        
        {
            SqlConnection connection = new SqlConnection("data source = DESKTOP-8NTQ6AN\\SQLEXPRESS; database = 14-12 ; integrated security=SSPI");
            connection.Open();
            string table = "<table class='table table-striped'> <tr><th>ID</th> <th>first name</th> <th>last name</th> <th>Phone</th> <th>Email</th> <th>Image</th> <th>City</th> </tr>";
            SqlCommand comand = new SqlCommand("select customer_id,first_name,last_name,phone,email,user_image,city.city_name from customers inner join city on customers.city_id = city.city_id;", connection);
            SqlDataReader sdr = comand.ExecuteReader();
            while (sdr.Read())
            {
                table +=
                    $"<tr><td>{sdr[0]}</td><td>{sdr[1]}</td><td>{sdr[2]}</td>" +
                    $"<td>{sdr[3]}</td><td>{sdr[4]}</td>" +
                    $"<td><img width='200px' height='200px' src='Images/{sdr[5]}'/>" +
                    $"</td> <td>{sdr[6]}</td>" +
                    $"<td><a href='edit.aspx?id={sdr[0]}'>Edit/Delete</a></td></tr>";
            }
            table += "</table>";
            Label label = new Label();
            label.Text = table;
            this.Controls.Add(label);
            connection.Close();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            print();
            if (!IsPostBack) { 
            SqlConnection connection = new SqlConnection("data source = DESKTOP-8NTQ6AN\\SQLEXPRESS; database = 14-12 ; integrated security=SSPI");
            connection.Open();
            SqlCommand command = new SqlCommand("select * from city", connection);
            SqlDataAdapter adapt = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            adapt.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField= "city_name";
            DropDownList1.DataValueField = "city_id";
            DropDownList1.DataBind();
            connection.Close();
            }
        }
        protected void UploadFile(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("~/Images/");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }

            //Save the File to the Directory (Folder).
            FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));

            SqlConnection connection = 
            new SqlConnection("data source = DESKTOP-8NTQ6AN\\SQLEXPRESS; database = 14-12 ; integrated security=SSPI");
            connection.Open();
            SqlCommand command = new SqlCommand
            ($"insert into customers values('{Text1.Value}', '{Text2.Value}' , '{Text3.Value}','{Text4.Value}','{FileUpload1.FileName}',{DropDownList1.SelectedValue})", connection);
            command.ExecuteNonQuery();
          
            connection.Close();
        }
    }
}