using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using Paperless_Hospital.Models;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace Paperless_Hospital.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                String constr = ConfigurationManager.ConnectionStrings["regConn"].ConnectionString;

                using (MySqlConnection conn = new MySqlConnection(constr))
                {
                    conn.Open();
                    using (MySqlCommand cmd = new MySqlCommand("INSERT INTO login VALUES ('" + Email.Text + "','" + Password.Text + "')"))
                    {
                        cmd.ExecuteNonQuery();
                        //using (MySqlDataAdapter sda = new MySqlDataAdapter())
                        //{
                        //    cmd.Connection = conn;
                        //    sda.SelectCommand = cmd;
                        //}
                    }
                }
            }

            //var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            //var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            //var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text };
            //try
            //{
            //    IdentityResult result = manager.Create(user, Password.Text);
            //    if (result.Succeeded)
            //    {
            //        // For more information on how to enable account confirmation and password reset please visit http://go.microsoft.com/fwlink/?LinkID=320771
            //        //string code = manager.GenerateEmailConfirmationToken(user.Id);
            //        //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
            //        //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");

            //        signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
            //        IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            //    }
            //    else
            //    {
            //        ErrorMessage.Text = result.Errors.FirstOrDefault();
            //    }
            //}
            //catch (Exception)
            //{
            //    ErrorMessage.Text = "Unable to connect to database. Contact Administrator";
            //}

        }
    }
}