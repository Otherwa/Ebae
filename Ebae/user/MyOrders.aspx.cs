using Ebae.model;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI.WebControls;

namespace Ebae
{
    public partial class MyOrders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                User user = (User)Session["user"];
                int userId = user.Uid;
                BindOrders(userId);
            }
        }

        private void BindOrders(int userId)
        {

            OrderDetails orderDetails = new OrderDetails(); // Instantiate the Order class
            List<OrderDetails> orders = orderDetails.MyOrders(userId);

            OrdersRepeater.DataSource = orders;
            OrdersRepeater.DataBind();
        }
      

    }
}
