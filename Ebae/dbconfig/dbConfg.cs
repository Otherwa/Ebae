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
            string connectionStringWithDatabase = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\pc\source\repos\Otherwa\Ebae\Ebae\dbconfig\Ebae.mdf;Integrated Security=True;Connect Timeout=30";
            SqlConnection connection = new SqlConnection(connectionStringWithDatabase);
            return connection;

        }
    }
}
