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
            <asp:Gridview ID="OrdersRepeater" runat="server">
                <ItemTemplate>
                    <div class="max-w-sm rounded overflow-hidden shadow-lg my-4">
                        <img class="w-full" src='<%# Eval("image") %>' alt='<%# Eval("name") %>'>
                        <div class="px-6 py-4">
                            <div class="font-bold text-xl mb-2"><%# Eval("name") %></div>
                            <p class="text-gray-700 text-base"><%# Eval("description") %></p>
                            <p class="text-gray-700 text-base">Price: $<%# Eval("price") %></p>
                            <p class="text-gray-700 text-base">Quantity: <%# Eval("quantity") %></p>
                            <p class="text-gray-700 text-base">Order ID: <%# Eval("orderid") %></p>
                            <p class="text-gray-700 text-base">Address: <%# Eval("address") %></p>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Gridview>
        </div>
    </form>
</body>
</html>
