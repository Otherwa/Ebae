using Ebae.dbconfig;
using System.Data.SqlClient;
using System;
using System.Diagnostics;
using System.Text.RegularExpressions;

namespace Ebae.model
{
    public class User
    {
        public string Email { get; set; }
        public string Password { get; set; }
        public string Name { get; set; }

        public User(string email, string password, string name)
        {
            Email = email;
            Password = password;
            Name = name;
        }

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

                    string query = "INSERT INTO [dbo].[user] (uid, email, [password], [name]) VALUES (2, @email, @password, @name)"; 
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@email", Email);
                    command.Parameters.AddWithValue("@Password", Password);
                    command.Parameters.AddWithValue("@name",Name );

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

                    return true;
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

                string query = "SELECT COUNT(*) FROM Users WHERE Username = @Username AND Password = @Password";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Username", username);
                command.Parameters.AddWithValue("@Password", password);
                int count = Convert.ToInt32(command.ExecuteScalar());
                return count > 0;
            }
        }

    }
}
