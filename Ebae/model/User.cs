using Ebae.dbconfig;
using System.Data.SqlClient;
using System;
using System.Diagnostics;
using System.Text.RegularExpressions;
using System.Collections.Generic;
using MongoDB.Driver.Core.Configuration;
using System.Web;

namespace Ebae.model
{
    public class User
    {
        private string username;
        private string password;
        private string email;
        private int uid;

        public int Uid { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string Name { get; set; }

        
        

        public User(string email, string password, string name)
        {
            Email = email;
            Password = password;
            Name = name;
        }

        public User(string email, string password)
        {
            Email = email;
            Password = password;
        }

        public User() { }

        public string Register()
        {
            try
            {
                // Check if user already exists
                if (UserExists(Email))
                {
                    return "User already exists.";
                }

                // Insert new user into database
                using (SqlConnection connection = DbConfg.GetConnection())
                {
                    connection.Open();

                    string query = "INSERT INTO [dbo].[user] ([email], [password], [name]) VALUES ( @email, @password, @name)";
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@email", Email);
                    command.Parameters.AddWithValue("@Password", Password);
                    command.Parameters.AddWithValue("@name", Name);

                    // Execute the query
                    int rowsAffected = command.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        return "User registered successfully.";
                    }
                    else
                    {
                        return "User registration failed.";
                    }
                }
            }
            catch (SqlException ex)
            {
                return $"Error registering user: {ex.Message}";
            }
        }

        public bool Login()
        {
            try
            {
                // Check if user credentials are valid
                if (ValidateCredentials(Email, Password))
                {
                    // Log message
                    Trace.WriteLine("Login successful.");
                    User user = this.GetDetails(Email);
                    if (user != null)
                    {
                        this.StoreUserInSession(user);
                        return true;
                    }

                    return false;
                }
                else
                {
                    // Log message
                    Trace.WriteLine("Invalid username or password.");

                    return false;
                }
            }
            catch (SqlException ex)
            {
                // Log error
                Trace.WriteLine($"Error logging in: {ex.Message}");

                return false;
            }
        }

        private bool UserExists(string email)
        {
            using (SqlConnection connection = DbConfg.GetConnection())
            {
                connection.Open();

                string query = "SELECT COUNT(*) FROM [dbo].[user] WHERE email = @email";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@email", email);
                int count = Convert.ToInt32(command.ExecuteScalar());
                return count > 0;
            }
        }

        private bool ValidateCredentials(string username, string password)
        {
            using (SqlConnection connection = DbConfg.GetConnection())
            {
                connection.Open();

                string query = "SELECT COUNT(*) FROM [dbo].[user] WHERE email = @Username AND password = @Password";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Username", username);
                command.Parameters.AddWithValue("@Password", password);
                int count = Convert.ToInt32(command.ExecuteScalar());
                return count > 0;
            }
        }

        public User GetDetails(string username)
        {
            User user = new User();
            using (SqlConnection connection = dbconfig.DbConfg.GetConnection())
            {
                string query = "SELECT [uid],[email],[name] FROM [dbo].[user] WHERE email = @email";

                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@email", username);
                try
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    if (reader.Read())
                    {
                        // Assign retrieved details to the user object
                        user.Uid = reader.GetInt32(0);
                        user.Email = reader["email"].ToString();
                        user.Name = reader["name"].ToString();
                    }

                    reader.Close();
                }
                catch (Exception ex)
                {
                    // Handle exception
                    Console.WriteLine("Error retrieving user details: " + ex.Message);
                }
            }

            return user;
        }

        public void StoreUserInSession(User user)
        {
            HttpContext.Current.Session["user"] = user;
        }



        public string AddProduct(Product product)
        {
            try
            {
                using (SqlConnection connection = DbConfg.GetConnection())
                {
                    connection.Open();

                    string query = "INSERT INTO Products (user_id, name, description, price, availability, image) " +
                                   "VALUES (@userId, @name, @description, @price, @availability, @image)";
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@userId", product.UserId);
                    command.Parameters.AddWithValue("@name", product.Name);
                    command.Parameters.AddWithValue("@description", product.Description);
                    command.Parameters.AddWithValue("@price", product.Price);
                    command.Parameters.AddWithValue("@availability", product.Availability);
                    command.Parameters.AddWithValue("@image", product.Image); // Add image parameter

                    int rowsAffected = command.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        return "Product added successfully.";
                    }
                    else
                    {
                        return "Failed to add product.";
                    }
                }
            }
            catch (SqlException ex)
            {
                return $"Error adding product: {ex.Message}";
            }
        }

        public string UpdateProduct(Product product)
        {
            try
            {
                using (SqlConnection connection = DbConfg.GetConnection())
                {
                    connection.Open();

                    string query = "UPDATE Products SET name = @name, description = @description, " +
                                   "price = @price, availability = @availability, image = @image WHERE product_id = @productId";
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@name", product.Name);
                    command.Parameters.AddWithValue("@description", product.Description);
                    command.Parameters.AddWithValue("@price", product.Price);
                    command.Parameters.AddWithValue("@availability", product.Availability);
                    command.Parameters.AddWithValue("@image", product.Image); // Add image parameter
                    command.Parameters.AddWithValue("@productId", product.ProductId);

                    int rowsAffected = command.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        return "Product updated successfully.";
                    }
                    else
                    {
                        return "Failed to update product.";
                    }
                }
            }
            catch (SqlException ex)
            {
                return $"Error updating product: {ex.Message}";
            }
        }

        public string DeleteProduct(int productId)
        {
            try
            {
                using (SqlConnection connection = DbConfg.GetConnection())
                {
                    connection.Open();

                    string query = "DELETE FROM Products WHERE product_id = @productId";
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@productId", productId);

                    int rowsAffected = command.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        return "Product deleted successfully.";
                    }
                    else
                    {
                        return "Failed to delete product.";
                    }
                }
            }
            catch (SqlException ex)
            {
                return $"Error deleting product: {ex.Message}";
            }
        }

        public List<Product> GetProducts(int userId)
        {
            List<Product> products = new List<Product>();

            using (SqlConnection connection = DbConfg.GetConnection())
            {
                string query = "SELECT product_id, name, description, price, availability, image FROM Products WHERE user_id = @userId";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@userId", userId);

                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    Product product = new Product
                    {
                        ProductId = reader.GetInt32(0),
                        Name = reader.GetString(1),
                        Description = reader.GetString(2),
                        Price = reader.GetDecimal(3),
                        Availability = reader.GetBoolean(4),
                        Image = reader.IsDBNull(5) ? null : reader.GetString(5) // Retrieve image as base64 string
                    };
                    products.Add(product);
                }
            }

            return products;
        }

        public List<Product> GetDashboardProducts(int userId)
        {
            List<Product> products = new List<Product>();

            using (SqlConnection connection = DbConfg.GetConnection())
            {
                string query = "SELECT product_id, name, description, price, availability, image FROM Products WHERE user_id != @userId";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@userId", userId);

                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    Product product = new Product
                    {
                        ProductId = reader.GetInt32(0),
                        Name = reader.GetString(1),
                        Description = reader.GetString(2),
                        Price = reader.GetDecimal(3),
                        Availability = reader.GetBoolean(4),
                        Image = reader.IsDBNull(5) ? null : reader.GetString(5) // Retrieve image as base64 string
                    };
                    products.Add(product);
                }
            }

            return products;
        }

    }
}
