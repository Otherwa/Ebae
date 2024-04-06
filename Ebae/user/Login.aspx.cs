using Ebae.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ebae.user
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                Label3.Text = "Both username and password are required.";
                return;
            }

            User user = new User(username, password);
            bool isLoggedIn = user.Login();

            if (isLoggedIn)
            {
                // Redirect to the home page or any other desired page upon successful login
                Response.Redirect("../Default.aspx");
            }
            else
            {
                Label3.Text = "Invalid username or password. Please try again.";
            }
        }
    }
}