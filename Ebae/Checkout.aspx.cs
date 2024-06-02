using Ebae.model;
using System;

namespace Ebae
{
    public partial class Checkout : System.Web.UI.Page
    {
        int productId;
        int userId;
        int quantity = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    string productIdQuery = Request.QueryString["productId"];
                    string userIdQuery = Request.QueryString["userId"];


                    if (!string.IsNullOrEmpty(productIdQuery) && !string.IsNullOrEmpty(userIdQuery))
                    {

                        if (int.TryParse(productIdQuery, out productId) && int.TryParse(userIdQuery, out userId))
                        {
                            ViewState["ProductId"] = productId;
                            ViewState["UserId"] = userId;
                            LoadCheckoutDetails(productId);
                        }
                        else
                        {
                            Response.Write("<script>alert('Invalid product or user ID.');</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Missing product or user ID.');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('An error occurred: " + ex.Message + "');</script>");
            }
        }

        private void LoadCheckoutDetails(int productId)
        {

            Product product = Product.GetProductById(productId);


            productImage.Src = product.Image;
            productName.InnerText = product.Name;
            productPrice.InnerText = product.Price.ToString();
            productQuantity.InnerText = quantity.ToString();
            productTotalPrice.InnerText = (product.Price * quantity).ToString();

            totalPrice.InnerText = (product.Price * quantity).ToString(); ;
            totalQuantity.InnerText = quantity.ToString();
        }

        protected void buttonCheckout_Click(object sender, EventArgs e)
        {
            if (ViewState["ProductId"] != null && ViewState["UserId"] != null)
            {
                productId = (int)ViewState["ProductId"];
                userId = (int)ViewState["UserId"];
            }
            else
            {
                Response.Write("<script>alert('Product ID or User ID is missing.');</script>");
                return;
            }
            String name = nametxtbox.Text;
            int phone = int.Parse(phonetxtbox.Text);
            decimal price = decimal.Parse(totalPrice.InnerText);
            String address = addresstxtbox.Text;
            String city = citydropdown.Text;
            String country = countrydropdown.Text;

            Order order = new Order(productId, userId, name, phone, quantity, price, address, city, country);
            if (order.createOrder())
            {
                Response.Write("<script>alert('Order Placed');</script>");
                Response.Redirect("user/Dashboard.aspx");
            }
            else
            {
                Response.Write("<script>alert('Failed');</script>");
            }

        }
    }
}