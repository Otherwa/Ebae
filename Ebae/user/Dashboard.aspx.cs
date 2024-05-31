using Ebae.model;
using MongoDB.Bson;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ebae.user
{
    public partial class Dashboard : System.Web.UI.Page
    {
        private void SetUserCookies(User user)
        {
            // Set user ID cookie
            HttpCookie userIdCookie = new HttpCookie("userId", user.Uid.ToString())
            {
                Expires = DateTime.Now.AddHours(1) // Set expiration time as needed
            };
            Response.Cookies.Add(userIdCookie);

            // Set user email cookie
            HttpCookie userEmailCookie = new HttpCookie("userEmail", user.Email)
            {
                Expires = DateTime.Now.AddHours(1) // Set expiration time as needed
            };
            Response.Cookies.Add(userEmailCookie);

            // Set user name cookie
            HttpCookie userNameCookie = new HttpCookie("userName", user.Name)
            {
                Expires = DateTime.Now.AddHours(1) // Set expiration time as needed
            };
            Response.Cookies.Add(userNameCookie);
        }

        private string GetCookieValue(string cookieName)
        {
            HttpCookie cookie = Request.Cookies[cookieName];
            return cookie != null ? cookie.Value : null;
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
               // once validated set cookies
            
               User user = (User)Session["user"];
            
               // Set cookies
               SetUserCookies(user);

               UserEmail.Text = GetCookieValue("userEmail");

                LoadDashBoardProducts();
            
            }
            else
            {
               Response.Redirect("./Login.aspx");

            }
        }

        protected void Logout(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("./Login.aspx");
        }

        private void LoadDashBoardProducts()
        {
            User user = (User)Session["user"];
            int userId = user.Uid;

            List<Product> productList = user.GetDashboardProducts(userId);

            gvProducts.DataSource = productList;
            gvProducts.DataBind();
        }
        protected void gvProducts_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Product product = (Product)e.Row.DataItem;
                Image imgProduct = (Image)e.Row.FindControl("imgProduct");

                if (product.Image != null)
                {
                    imgProduct.ImageUrl = "data:image/png;base64," + product.Image;
                }
                else
                {
                    imgProduct.Visible = false;
                }
            }
        }

    }
}