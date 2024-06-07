<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyOrders.aspx.cs" Inherits="Ebae.MyOrders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Orders</title>
    <script src="https://cdn.tailwindcss.com"></script>
        <!--Import Google Font-->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link href="https://fonts.googleapis.com/css2?family=Lobster+Two:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet" />
<!--Import Google Icon Font-->

<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
<!--Import materialize.css-->

<link type="text/css" rel="stylesheet" href="../materialize/css/materialize.css" media="screen,projection" />

<!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />



<!--Custom Styles-->
<link href="../public/css/style.css" rel="stylesheet" />
</head>
<body class="body-wrapper">

    <form id="form1" runat="server">
                             <!--NavBar-->
<nav class="nav" >
    <div >
        <nav class="pink lighten-5 nav">
            <div class="nav-wrapper">
                <a href="/" class="brand-logo myFont" style="padding-left: 1.25rem;">Ebaeee</a>
                <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
                <ul class="right hide-on-med-and-down">
                    <li><a href="./Dashboard.aspx">Home</a></li>
                </ul>
                <ul class="side-nav" id="mobile-demo">
                    <li>
                        <div class="user-view">
                            <div class="background">
                                <img src="https://i.pinimg.com/originals/77/44/80/7744806c7e15d502830a1fdd8e2a37e9.gif" />
                            </div>
                            <h1 class="myFont">Ebae
                            </h1>
                        </div>
                    </li>

                    <li>
                        <div class="divider"></div>
                    </li>
                    <li><a class="subheader">T&C</a></li>

                </ul>
            </div>
        </nav>


    </div>
</nav>
<!--NavBar End-->
        <div class="body-wrapper-content">
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
        WHERE o.userId = @userId;">
        <SelectParameters>
            <asp:CookieParameter CookieName="userId" DefaultValue="2" Name="userId" />
        </SelectParameters>
    </asp:SqlDataSource>
</div>
</div>
    </form>
</body>
</html>
