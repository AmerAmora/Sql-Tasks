using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Models;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        static string email;
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text };
            IdentityResult result = manager.Create(user, Password.Text);
            if (result.Succeeded)
            {
                email = Email.Text;

                // For more information on how to enable account confirmation and password reset please visit https://go.microsoft.com/fwlink/?LinkID=320771
                //string code = manager.GenerateEmailConfirmationToken(user.Id);
                //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");

                //signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
                //IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                PlaceHolder1.Visible = false;

                personalInfo.Visible = true;
            }
            else
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }

        }
        protected void Register(object sender, EventArgs e)
        {


            var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection Con = new SqlConnection(connectionString);
            Con.Open();
            SqlCommand getId = new SqlCommand($"select id from aspnetusers where email='{email}'", Con);
            string id = getId.ExecuteScalar().ToString();
            string folderpath = Server.MapPath("Images/");
            FileUpload1.SaveAs(folderpath + Path.GetFileName(FileUpload1.FileName));

            string query = $"update AspNetUsers set PhoneNumber='{Phone.Text}', first_name='{firstName.Text}',last_name='{lastName.Text}',user_address='{Address.Text}',city_id={City.SelectedValue},user_Image='{FileUpload1.FileName}' where id='{id}';";
            SqlCommand insetPersonalInfo = new SqlCommand(query, Con);
            insetPersonalInfo.ExecuteNonQuery();
            SqlCommand insert role= new SqlCommand(, Con);
            Con.Close();
        }

    }
}