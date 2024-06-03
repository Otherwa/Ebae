using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Ebae.dbconfig;

namespace Ebae.homeitems
{
    public partial class hotdeals : System.Web.UI.Page
    {
        public class ProductItem
        {
            public string Name { get; set; }
            public decimal Price { get; set; }
            public string ImageUrl { get; set; }
        }

        public List<ProductItem> ProductItems { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadProducts();
            }
        }

        private void LoadProducts()
        {
            ProductItems = new List<ProductItem>();
            string query = "SELECT name, price, image FROM Products";

            using (SqlConnection connection = DbConfg.GetConnection())
            {
                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    ProductItems.Add(new ProductItem
                    {
                        Name = reader["name"].ToString(),
                        Price = Convert.ToDecimal(reader["price"]),
                        ImageUrl = "data:image/png;base64," + reader["image"].ToString(),
                    });
                }
            }
        }
    }
}