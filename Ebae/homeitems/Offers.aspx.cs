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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadProducts();
            }
        }

        private void LoadProducts()
        {
            using (SqlConnection conn = DbConfg.GetConnection())
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM Products", conn))
                {
                    conn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    DataTable dt = new DataTable();
                    dt.Load(reader);
                    rptProducts.DataSource = dt;
                    rptProducts.DataBind();
                }
            }
        }
    }
}