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
            
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="orderId" DataSourceID="SqlDataSource1" >
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                    <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    <asp:BoundField DataField="orderId" HeaderText="orderId" InsertVisible="False" ReadOnly="True" SortExpression="orderId" />
                    <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SqlServer %>" SelectCommand="SELECT p.name, p.description, p.image, o.price, o.orderId, o.quantity, o.address 
               FROM [Products] p INNER JOIN [Order] o ON p.product_id = o.productId 
              WHERE o.userId = @userId;">
                <SelectParameters>
                    <asp:CookieParameter CookieName="userId" DefaultValue="2" Name="userId" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
