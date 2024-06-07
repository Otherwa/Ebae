<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyOrders.aspx.cs" Inherits="Ebae.MyOrders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Orders</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mx-auto mt-10">
            
            <asp:GridView ID="OrdersRepeater" runat="server" AutoGenerateColumns="False" >
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="name" />
                    <asp:BoundField DataField="description" HeaderText="Name" />
                    <asp:BoundField DataField="price" HeaderText="price" />
                    <asp:BoundField DataField="quantity" HeaderText="quantity" />
                     <asp:BoundField DataField="orderId" HeaderText="Order ID" />
                    <asp:BoundField DataField="address" HeaderText="Address" />
                   

                 
                </Columns>

            </asp:GridView>
        </div>
    </form>
</body>
</html>
