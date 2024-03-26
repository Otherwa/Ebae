using MySql.Data.MySqlClient;
using System.Configuration;

namespace Ebae.dbconfig
{
    public class DbConfg
    {
        private static string _connectionString;

        static DbConfg()
        {
            _connectionString = ConfigurationManager.ConnectionStrings["MySQL"].ConnectionString;
        }

        public static MySqlConnection GetConnection(string databaseName = "Ebae")
        {

            MySqlConnection connection = new MySqlConnection(_connectionString);
            return connection;

        }
    }
}
