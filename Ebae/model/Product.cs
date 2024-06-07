using Ebae.dbconfig;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.EnterpriseServices.Internal;

namespace Ebae.model
{
    public class Product
    {
        public int ProductId { get; set; }
        public int UserId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public decimal Price { get; set; }
        public bool Availability { get; set; }
        public string Image { get; set; }

      
        public static Product GetProductById(int productId)
        {
            Product product = null;

            using (SqlConnection connection = DbConfg.GetConnection())
            {
                string query = "SELECT product_id, user_id, name, description, price, availability, image FROM Products WHERE product_id = @ProductId";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@ProductId", productId);

                    connection.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            product = new Product
                            {
                                ProductId = reader.GetInt32(reader.GetOrdinal("product_id")),
                                UserId = reader.GetInt32(reader.GetOrdinal("User_id")),
                                Name = reader.GetString(reader.GetOrdinal("name")),
                                Description = reader.GetString(reader.GetOrdinal("description")),
                                Price = reader.GetDecimal(reader.GetOrdinal("price")),
                                Availability = reader.GetBoolean(reader.GetOrdinal("availability")),
                                Image = reader.GetString(reader.GetOrdinal("image"))
                            };
                        }
                    }
                }
            }

            return product;
        }
    }

    
}