using Ebae.dbconfig;
using MySql.Data.MySqlClient;
using System;
using System.Diagnostics;

namespace Ebae.model
{
    public class User
    {
        public string Username { get; set; }
        public string Password { get; set; }

        public User(string username, string password)
        {
            Username = username;
            Password = password;
        }

        public bool Register()
        {
            try
            {
                // Check if user already exists
                if (UserExists(Username))
                {
                    // Log message
                    Trace.WriteLine("User already exists.");

                    return false;
                }

                // Insert new user into database
                using (MySqlConnection connection = DbConfg.GetConnection())
                {
                    connection.Open();

                    string query = "INSERT INTO Users (Username, Password) VALUES (@Username, @Password)";
                    MySqlCommand command = new MySqlCommand(query, connection);

                    // Execute the query
                    int rowsAffected = command.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        // Log message
                        Trace.WriteLine("User registered successfully.");

                        return true;
                    }
                    else
                    {
                        // Log message
                        Trace.WriteLine("User registration failed.");

                        return false;
                    }
                }
            }
            catch (MySqlException ex)
            {
                // Log error
                Trace.WriteLine($"Error registering user: {ex.Message}");

                return false;
            }
        }

        public bool Login()
        {
            try
            {
                // Check if user credentials are valid
                if (ValidateCredentials(Username, Password))
                {
                    // Log message
                    Trace.WriteLine("Login successful.");

                    return true;
                }
                else
                {
                    // Log message
                    Trace.WriteLine("Invalid username or password.");

                    return false;
                }
            }
            catch (MySqlException ex)
            {
                // Log error
                Trace.WriteLine($"Error logging in: {ex.Message}");

                return false;
            }
        }

        private bool UserExists(string username)
        {
            using (MySqlConnection connection = DbConfg.GetConnection())
            {
                connection.Open();

                string query = "SELECT COUNT(*) FROM Users WHERE Username = @Username";
                MySqlCommand command = new MySqlCommand(query, connection);
                command.Parameters.AddWithValue("@Username", username);
                int count = Convert.ToInt32(command.ExecuteScalar());
                return count > 0;
            }
        }

        private bool ValidateCredentials(string username, string password)
        {
            using (MySqlConnection connection = DbConfg.GetConnection())
            {
                connection.Open();

                string query = "SELECT COUNT(*) FROM Users WHERE Username = @Username AND Password = @Password";
                MySqlCommand command = new MySqlCommand(query, connection);
                command.Parameters.AddWithValue("@Username", username);
                command.Parameters.AddWithValue("@Password", password);
                int count = Convert.ToInt32(command.ExecuteScalar());
                return count > 0;
            }
        }
    }
}
