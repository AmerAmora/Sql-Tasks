using System;
using System.Collections.Generic;
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
        protected void Page_Load(object sender, EventArgs e)
        {
           
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

            SqlConnection connection = new SqlConnection("data source = DESKTOP-8NTQ6AN\\SQLEXPRESS; database = 14-12 ; integrated security=SSPI");
            connection.Open();
            SqlCommand command = new SqlCommand
            ($"insert into customers values('{Text1.Value}', '{Text2.Value}' , '{Text3.Value}','{Text4.Value}','{FileUpload1.FileName}');", connection);
            command.ExecuteNonQuery();
            string table = "<table class='table table-striped'> <tr><th>ID</th> <th>first name</th> <th>last name</th> <th>Phone</th> <th>Email</th> <th>Image</th> </tr>";
            SqlCommand comand = new SqlCommand("select * from customers", connection);
            SqlDataReader sdr = comand.ExecuteReader();
            while (sdr.Read())
            {
                table += $"<tr><td>{sdr[0]}</td><td>{sdr[1]}</td><td>{sdr[2]}</td><td>{sdr[3]}</td><td>{sdr[4]}</td><td><img width='200px' height='200px' src='Images/{sdr[5]}'/></td></tr>";
            }
            table += "</table>";
            Label label= new Label();
            label.Text = table;
            this.Controls.Add(label);
            connection.Close();
        }
    }
}