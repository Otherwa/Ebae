using System.Data.SqlClient;
using System.Configuration;
using Amazon.Auth.AccessControlPolicy;

namespace Ebae.dbconfig
{
    public class DbConfg
    {
        private static string _connectionString;

        static DbConfg()
        {
            _connectionString = ConfigurationManager.ConnectionStrings["SqlServer"].ConnectionString;
        }

        public static SqlConnection GetConnection(string databaseName = "Ebae")
        {
<<<<<<< HEAD
            string connectionStringWithDatabase = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\pc\source\repos\Otherwa\Ebae\Ebae\dbconfig\Ebae.mdf;Integrated Security=True;Connect Timeout=30";
=======
            string connectionStringWithDatabase = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Projects\Atharv\Ebae\Ebae\dbconfig\Ebae.mdf;Integrated Security=True;Connect Timeout=30";
>>>>>>> 8c79c2ebf30da232a663a8f6180d74bb9735ab5b
            SqlConnection connection = new SqlConnection(connectionStringWithDatabase);
            return connection;

        }
    }
}
