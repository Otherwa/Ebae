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
            try
            {
                if (!IsPostBack)
                {
                    if (Session["user"] != null)
                    {
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
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('An error occurred: " + ex.Message + "');</script>");
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

                Button btnBuyNow = (Button)e.Row.FindControl("btnBuyNow");
                if (btnBuyNow != null)
                {
                    ClientScript.RegisterForEventValidation(btnBuyNow.UniqueID, btnBuyNow.CommandArgument);
                }
            }
        }
         
        protected void goToCheckout(object sender, EventArgs e)
        {
            try
            {
                Button btn = (Button)sender;

                if (!string.IsNullOrEmpty(btn.CommandArgument) && int.TryParse(btn.CommandArgument, out int productId))
                {
                    if (Session["user"] != null)
                    {
                        User user = (User)Session["user"];
                        int userId = user.Uid;

                        string redirectUrl = string.Format("../Checkout.aspx?productId={0}&userId={1}", productId, userId);
                        Response.Redirect(redirectUrl);
                    }
                    else
                    {
                        Response.Redirect("./Login.aspx");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid product ID.');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('An error occurred: " + ex.Message + "');</script>");
            }
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            
        }
    }
}