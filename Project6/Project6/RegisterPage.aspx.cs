using System;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using Project6.Models;

namespace Project6
{
    public partial class RegisterPage : Page
    {
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

                personalInfo.Visible= true;
            }
            else
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }

        }
        protected void Register(object sender, EventArgs e) 
        {
            string folderPath = Server.MapPath("~/Images/");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }
            
            var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection Con = new SqlConnection(connectionString);
            Con.Open();
            SqlCommand getId = new SqlCommand($"select id from aspnetusers where email='{email}'", Con);
            string id = getId.ExecuteScalar().ToString();
            string query = $"update AspNetUsers set PhoneNumber='{Phone.Text}', first_name='{firstName.Text}',last_name='{lastName.Text}',user_address='{Address.Text}',city_id={DropDownList1.SelectedValue} where id='{id}';";
            SqlCommand insetPersonalInfo = new SqlCommand(query, Con);
            insetPersonalInfo.ExecuteNonQuery();
            Con.Close();
        }



    }
}