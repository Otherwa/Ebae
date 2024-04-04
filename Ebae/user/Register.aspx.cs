using Ebae.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ebae.user
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        static bool IsValidEmail(string email)
        {
            string pattern = @"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$";
            return Regex.IsMatch(email, pattern);
        }

        protected void register_Click(object sender, EventArgs e)
        {
            string email = emailTextBox.Text;
            string name = nameTextBox.Text;
            string password = passwordTextBox1.Text;
            string conPassword = passwordTextBox2.Text;
            string result;

            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(name) || string.IsNullOrEmpty(password) || string.IsNullOrEmpty(conPassword))
            {
                Label1.Text = "All fields are required.";
                return;
            }

            if (Equals(password,conPassword))
            {
                Response.Write($"<script>console.log('clicked');</script>");
                User user = new User(email,password,name);
                result = user.Register();
                Label1.Text = result;
            }
            else
            {
                Label1.Text = "Passwords do not match.";
            }
        }
    }
}