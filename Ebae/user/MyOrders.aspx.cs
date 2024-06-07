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
          


                User user = (User)Session["user"];
                int userId =Convert.ToInt32(GetCookieValue("userId"));
                BindOrders(userId);
            
        }

        private void BindOrders(int userId)
        {

            OrderDetails orderDetails = new OrderDetails(); // Instantiate the Order class
            List<OrderDetails> orders = orderDetails.MyOrders(userId);

          
        }
        private string GetCookieValue(string cookieName)
        {
            HttpCookie cookie = Request.Cookies[cookieName];
            return cookie != null ? cookie.Value : null;
        }

    }
}
