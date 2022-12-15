using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _14_12
{
    public partial class Edit : System.Web.UI.Page
    {
            protected void Page_Load(object sender, EventArgs e)
            {
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                SqlConnection connection =
            new SqlConnection("data source = DESKTOP-8NTQ6AN\\SQLEXPRESS; database = 14-12 ; integrated security=SSPI");
                connection.Open();
                
                string query = $"select * from customers where customer_id={id}";

                SqlCommand comand = new SqlCommand(query, connection);
                SqlCommand command = new SqlCommand("select * from city", connection);
                
                SqlDataAdapter adapt = new SqlDataAdapter(command);
                DataTable dt = new DataTable();
                adapt.Fill(dt);
                DropDownList1.DataSource = dt;
                DropDownList1.DataTextField = "city_name";
                DropDownList1.DataValueField = "city_id";
                DropDownList1.DataBind();


                SqlDataReader read = comand.ExecuteReader();

                while (read.Read())

                {
                    Text1.Value = read[1].ToString();
                    Text2.Value = read[2].ToString();
                    Text3.Value = read[3].ToString();
                    Text4.Value = read[4].ToString();
                    DropDownList1.Items.FindByValue(read[6].ToString()).Selected = true;
                    string image= $"Images/{read[5].ToString()}";
                    image1.Src= image;

                }

                connection.Close();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            SqlConnection connection =
            new SqlConnection("data source = DESKTOP-8NTQ6AN\\SQLEXPRESS; database = 14-12 ; integrated security=SSPI");
            connection.Open();
            int id =Convert.ToInt32( Request.QueryString["id"]);
            string query = $"delete from customers where customer_id={id}";
            SqlCommand com= new SqlCommand(query, connection);
            com.ExecuteNonQuery();
            connection.Close();
            Response.Redirect("14-12.aspx");
         }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            SqlConnection connection =
            new SqlConnection("data source = DESKTOP-8NTQ6AN\\SQLEXPRESS; database = 14-12 ; integrated security=SSPI");
            connection.Open();
            string folderPath = Server.MapPath("~/Images/");
            FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));
            string query = $"update customers set first_name='{Text1.Value}',last_name='{Text2.Value}',phone='{Text3.Value}',email='{Text4.Value}',user_image='{FileUpload1.FileName}',city_id={DropDownList1.SelectedValue} where customer_id={id}";
            SqlCommand command = new SqlCommand(query, connection); ;
         
            command.ExecuteNonQuery();
            connection.Close();
            Response.Redirect("14-12.aspx");

        }
    }
}