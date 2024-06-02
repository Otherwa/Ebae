using Ebae.dbconfig;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Ebae.model
{
    public class Order
    {
        
        public int productId { get; set; }
        public int userId { get; set; }
        public string name { get; set; }
        public int phoneNo { get; set; }
        public int quantity { get; set; }
        public decimal price { get; set; }
        public string address { get; set; }
        public string city { get; set; }
        public string country { get; set; }

        public Order(int productId, int userId, string name, int phoneNo, int quantity, decimal price, string address, string city, string country)
        {
            this.productId = productId;
            this.userId = userId;
            this.name = name;
            this.phoneNo = phoneNo;
            this.quantity = quantity;
            this.price = price;
            this.address = address;
            this.city = city;
            this.country = country;
        }

        public bool createOrder()
        {
            using (SqlConnection connection = DbConfg.GetConnection())
            {
                connection.Open();

                string query = "INSERT INTO [dbo].[Order] (productId, userId, name, phoneNo, quantity, price, address, city, country) VALUES (@productId, @userId, @name, @phoneNo, @quantity, @price, @address, @city, @country)";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@productId", productId);
                command.Parameters.AddWithValue("@userId", userId);
                command.Parameters.AddWithValue("@name", name);
                command.Parameters.AddWithValue ("@phoneNo", phoneNo);
                command.Parameters.AddWithValue("@quantity", quantity);
                command.Parameters.AddWithValue("@price", price);
                command.Parameters.AddWithValue("@address", address);
                command.Parameters.AddWithValue("@city",city);
                command.Parameters.AddWithValue("@country",country);

                int rowsAffected = command.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }
    }

    
}