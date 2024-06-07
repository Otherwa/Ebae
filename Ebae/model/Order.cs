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

        public string description { get; set; }
        public string image { get; set; }

        public int orderid { get; set; }



        public Order( int productId, int userId, string name, int phoneNo, int quantity, decimal price, string address, string city, string country)
        {
            this.orderid = orderid;
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
                command.Parameters.AddWithValue("@phoneNo", phoneNo);
                command.Parameters.AddWithValue("@quantity", quantity);
                command.Parameters.AddWithValue("@price", price);
                command.Parameters.AddWithValue("@address", address);
                command.Parameters.AddWithValue("@city", city);
                command.Parameters.AddWithValue("@country", country);

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

    public class OrderDetails
    {


        public string name { get; set; }

        public int quantity { get; set; }

        public string address { get; set; }


        public string description { get; set; }
        public string image { get; set; }
        public int orderid { get; set; }
        public decimal price { get; set; }

        public int userid { get; set; }

        public OrderDetails() { }

        public OrderDetails(string name, int quantity, string address, string description, string image, int orderid, decimal price, int userid)
        {
            this.name = name;
            this.quantity = quantity;
            this.address = address;
            this.description = description;
            this.image = image;
            this.orderid = orderid;
            this.price = price;
            this.userid = userid;
        }



        public List<OrderDetails> MyOrders(int userId)
        {
            List<OrderDetails> orders = new List<OrderDetails>();

            using (SqlConnection connection = DbConfg.GetConnection())
            {
                string query = "SELECT p.name, p.description, p.image, o.price, o.orderId, o.quantity, o.address " +
               "FROM [Products] p INNER JOIN [Order] o ON p.product_id = o.productId " +
               "WHERE o.userId = @userId";


                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@userId", userid);



                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    OrderDetails orderdetail = new OrderDetails
                    {
                        name = reader.GetString(0),
                        description = reader.GetString(1),
                        image = reader.GetString(2),
                        orderid = reader.GetInt32(3),
                        price = reader.GetDecimal(4),
                        quantity = reader.GetInt32(5),
                        address = reader.GetString(6),
                        userid = reader.GetInt32(7)
                    };

                    orders.Add(orderdetail);
                }
            }

            return orders;
        }


    }

}
