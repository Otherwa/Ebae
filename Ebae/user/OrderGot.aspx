<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderGot.aspx.cs" Inherits="Ebae.OrderGot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
       <form id="form1" runat="server">
       <div class="container mx-auto mt-10" style="display: flex; flex-wrap: wrap; justify-content: center;">
    
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="orderId" DataSourceID="SqlDataSource1" 
        style="display: flex; flex-wrap: wrap; gap: 20px;">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <div class="card" style="border: 1px solid #ddd; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); padding: 20px; width: 300px; margin: 10px;">
                        <h3><%# Eval("name") %></h3>
                        <p><%# Eval("description") %></p>
                        <p><strong>Price:</strong> $<%# Eval("price") %></p>
                        <p><strong>Quantity:</strong> <%# Eval("quantity") %></p>
                        <p><strong>Address:</strong> <%# Eval("address") %></p>
                        <asp:Button runat="server" Text="Confirmed" CommandName="Select" />
                    </div>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SqlServer %>" SelectCommand="SELECT p.name, p.description, p.image, o.price, o.orderId, o.quantity, o.address 
        FROM [Products] p INNER JOIN [Order] o ON p.product_id = o.productId 
        WHERE p.user_Id = @userId;">
        <SelectParameters>
            <asp:CookieParameter CookieName="userId" DefaultValue="2" Name="userId" />
        </SelectParameters>
    </asp:SqlDataSource>
</div>
           </form>
</body>
</html>
