﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROJ5
{
    public partial class EXAMPLE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //try
            //{

            //}
            //catch (Exception)
            //{

            //    throw;
            //}

            //finally {
            
            
            
            //}







            SqlConnection CONN = new SqlConnection("data source= DESKTOP-8NTQ6AN\\SQLEXPRESS;database=LibraryStore;Integrated security=SSPI");
            SqlCommand command = new SqlCommand("SELECT TOP 4 * FROM category", CONN);
     
            CONN.Open();
          

            SqlDataReader reader= command.ExecuteReader();
        



            while (reader.Read())
            {
                Label1.Text += $"<div class=\"row\" style=\"\">\r \n \r \n " +
                    $"<div class=\"card book\" style =\"width:250px\">\r\n    " +
                    $"  <img class=\"card-img-top pict\"  src='Images/{reader[2]}' style='width:170px; height:250px'>               " +
                    $" <div class=\"card-body\">\r\n      <h4 class=\"card-title\">{reader[1]}</h4>\r\n     " +
                    $" <p class=\"card-text\">Some example text some example text. John Doe is an architect and engineer</p>\r\n    " +
                    $"  <a href=\"http://localhost:56508/singlecategory.aspx?category_id={reader[0]}&category_name={reader[1]}\" class=\"btn btn-primary\">See product</a>\r\n    </div>\r\n  </div>\r \n <br> </div>";
               
            }
            CONN.Close();

            //Label1.Text += $"  <div class=\"seemore\">\r\n       <a href=\"http://localhost:56508/allcategories.aspx\"><p class=\"all\">VIEW <br> ALL category</p></a>  \r\n\r\n\r\n    </div>";
             
            CONN.Open();

            SqlCommand comm = new SqlCommand("SELECT * FROM PRODUCT where not sale=0", CONN);
            
            SqlDataReader read = comm.ExecuteReader();
            while (read.Read())
            {
                Label4.Text += $"<div class=\"row\" style=\"\">\r \n \r \n " +
                    $"<div class=\"card \" style =\"width:250px\">\r\n    " +
                    $"  <img class=\"card-img-top \"  src='{read[2]}' style='width:200px'>               " +
                    $" <div class=\"card-body\">\r\n      <h4 class=\"card-title\">{read[1]}</h4>\r\n     " +
                     $" <p class=\"card-text PRICE\">Price:{read[4]}.00JD</p>\r\n    " +
                        $" <p class=\"card-text PRICE1\">Price:{read[8]}.00JD  </p>\r\n    " +
                    $" <p class=\"card-text\">{read[6]}</p>\r\n    " +
                    $"  <a href=\"http://localhost:56508/singlecategory.aspx?category_id={read[0]}&category_name={read[1]}\" class=\"btn btn-primary\">See product</a>\r\n    </div>\r\n  </div>\r \n <br> </div>";

            }

            //Response.Redirect("page3.aspx?username=" + TextBox1.Text + "& password=" + TextBox2.Text);


            CONN.Close();




            CONN.Open();

            SqlCommand commEND = new SqlCommand("select TOP 4 product_id, count(order_product_id) AS A from order_product GROUP BY product_id  order by A DESC;", CONN);

            SqlDataReader readING = commEND.ExecuteReader();
            int[] arr = new int[4];
            int i = 0;
            while (readING.Read())
            {
                arr[i] = Convert.ToInt32(readING[0]);
                i++;
                //while (hot.Read()) { 
                //Label4.Text += $"<div class=\"row\" style=\"\">\r \n \r \n " +
                //    $"<div class=\"card book\" style =\"width:250px\">\r\n    " +
                //    $"  <img class=\"card-img-top book \"  src='{hot[0]}' style='width:170px'>               " +
                //    $" <div class=\"card-body\">\r\n      <h4 class=\"card-title\">{hot[1]}</h4>\r\n     " +
                //    $" <p class=\"card-text\">Some example text some example text. John Doe is an architect and engineer</p>\r\n    " +
                //    $"  <a href=\"http://localhost:56508/singlecategory.aspx?category_id={read[0]}&category_name={hot[1]}\" class=\"btn btn-primary\">See product</a>\r\n    </div>\r\n  </div>\r \n <br> </div>";
                //}
            }
                        CONN.Close();

            for(i=0; i<arr.Length; i++) {


                CONN.Open();
            SqlCommand command1 = new SqlCommand($"select * from product where product_id={arr[i]}",CONN);
            SqlDataReader hot = command1.ExecuteReader();
                while (hot.Read()) 
                {
                    Label6.Text += $"<div class=\"row\" style=\"\">\r \n \r \n " +
                    $"<div class=\"card book\" style =\"width:250px\">\r\n    " +
                    $"  <img class=\"card-img-top book \"  src='{hot[2]}' style='width:170px'>               " +
                    $" <div class=\"card-body\">\r\n      <h4 class=\"card-title\">{hot[1]}</h4>\r\n     " +
                     $" <p class=\"card-text PRICE1\" >Price:{hot[4]}.00JD</p>\r\n    " +
                    $" <p class=\"card-text\">Some example text some example text. John Doe is an architect and engineer</p>\r\n    " +
                    $"  <a href=\"http://localhost:56508/singlecategory.aspx?category_id={hot[0]}&category_name={hot[1]}\" class=\"btn btn-primary\">See product</a>\r\n    </div>\r\n  </div>\r \n <br> </div>";
                }
CONN.Close();
                //Response.Redirect("page3.aspx?username=" + TextBox1.Text + "& password=" + TextBox2.Text);
            }














        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string FILE = Server.MapPath("~/picture");

       

            //if (!Directory.Exists(FILE))
            //{

            //    Directory.CreateDirectory(FILE);

            //}

            //if (FileUpload1.HasFile)
            //{
            //    FileUpload1.SaveAs(FILE + FileUpload1.FileName);
            //    Session["file"] = "picture" + FileUpload1.FileName;
            //}



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string FILE = Server.MapPath("~/picture");
            string folderpic = Session["file"].ToString();
           
            SqlConnection CONN = new SqlConnection("data source= DESKTOP-8NTQ6AN\\SQLEXPRESS;database=LibraryStore;Integrated security=SSPI");

            SqlCommand command = new SqlCommand($"insert into product (product_name,product_PICTURE,category_id,prodct_price,quantity,detalis,sale) " +
                $"values ('romance quartet','{folderpic}',{3},{7},{10},' WANT IT',{5})",CONN);
            CONN.Open();
            command.ExecuteNonQuery();  
            CONN.Close();



        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("allcategories.aspx");
        }
    }
}