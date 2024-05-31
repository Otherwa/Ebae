using Ebae.model;
using Org.BouncyCastle.Asn1.Ocsp;
using System;
using System.Collections.Generic;
using System.IO;
using System.Web;
using System.Web.UI.WebControls;

namespace Ebae.user
{





    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
              LoadProducts();
            }
        }

        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            string productName = txtProductName.Text;
            string productDescription = txtProductDescription.Text;
            decimal productPrice = decimal.Parse(txtProductPrice.Text);
            bool productAvailability = chkProductAvailability.Checked;

            int userId = Convert.ToInt32(GetCookieValue("userId"));

            string productImage = null;
            if (fuProductImage.HasFile)
            {
                using (BinaryReader br = new BinaryReader(fuProductImage.PostedFile.InputStream))
                {
                    byte[] imageBytes = br.ReadBytes(fuProductImage.PostedFile.ContentLength);
                    productImage = Convert.ToBase64String(imageBytes);
                }
            }

            Product product = new Product
            {
                UserId = userId,
                Name = productName,
                Description = productDescription,
                Price = productPrice,
                Availability = productAvailability,
                Image = productImage
            };

            User user = (User)Session["user"];
            string result = user.AddProduct(product);

            LoadProducts();
            ClearProductForm();
            lblResult.Text = result;
        }

        protected void btnUpdateProduct_Click(object sender, EventArgs e)
        {
            int productId = int.Parse(txtProductId.Text);
            string productName = txtProductName.Text;
            string productDescription = txtProductDescription.Text;
            decimal productPrice = decimal.Parse(txtProductPrice.Text);
            bool productAvailability = chkProductAvailability.Checked;

            string productImage = null;
            if (fuProductImage.HasFile)
            {
                using (BinaryReader br = new BinaryReader(fuProductImage.PostedFile.InputStream))
                {
                    byte[] imageBytes = br.ReadBytes(fuProductImage.PostedFile.ContentLength);
                    productImage = Convert.ToBase64String(imageBytes);
                }
            }

            Product product = new Product
            {
                ProductId = productId,
                Name = productName,
                Description = productDescription,
                Price = productPrice,
                Availability = productAvailability,
                Image = productImage
            };

            User user = (User)Session["user"];
            string result = user.UpdateProduct(product);

            LoadProducts();
            ClearProductForm();
            lblResult.Text = result;
        }

        protected void btnDeleteProduct_Click(object sender, EventArgs e)
        {
            int productId = int.Parse(txtProductId.Text);

            User user = (User)Session["user"];
            string result = user.DeleteProduct(productId);

            LoadProducts();
            ClearProductForm();
            lblResult.Text = result;
        }

        private void LoadProducts()
        {
            User user = (User)Session["user"];
            int userId = user.Uid;

            List<Product> productList = user.GetProducts(userId);

            gvProducts.DataSource = productList;
            gvProducts.DataBind();
        }

        private void ClearProductForm()
        {
            txtProductId.Text = "";
            txtProductName.Text = "";
            txtProductPrice.Text = "";
            txtProductDescription.Text = "";
            chkProductAvailability.Checked = false;
        }

        private string GetCookieValue(string key)
        {
            HttpCookie cookie = Request.Cookies[key];
            return cookie != null ? cookie.Value : string.Empty;
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


