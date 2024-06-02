<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Ebae.Checkout" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="public/css/checkout.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="checkoutLayout">
                <div class="returnCart">
                    <a href="/">keep shopping</a>
                    <h1>List Product in Cart</h1>
                    <div class="list">
                        <div class="item">
                            <img id="productImage" runat="server" src="images/1.webp" alt="Product 1" />
                            <div class="info">
                                <div id="productName" runat="server" class="name">PRODUCT 1</div>
                                <div id="productPrice" runat="server" class="price">$22/1 product</div>
                            </div>
                            <div id="productQuantity" runat="server" class="quantity">5</div>
                            <div id="productTotalPrice" runat="server" class="returnPrice">$433.3</div>
                        </div>
                    </div>
                </div>
                <div class="right">
                    <h1>Checkout</h1>
                    <div class="form">
                        <div class="group">
                            <label for="name">Full Name</label>
                            <asp:TextBox ID="nametxtbox" runat="server"></asp:TextBox>
                        </div>
                        <div class="group">
                            <label for="phone">Phone Number</label>
                            <asp:TextBox ID="phonetxtbox" runat="server"></asp:TextBox>
                        </div>
                        <div class="group">
                            <label for="address">Address</label>
                            <asp:TextBox ID="addresstxtbox" runat="server"></asp:TextBox>
                        </div>
                        <div class="group">
                            <label for="country">Country</label>
                            <asp:DropDownList ID="countrydropdown" runat="server">
                                <asp:ListItem Text="Choose.." Value=""></asp:ListItem>
                                <asp:ListItem Text="United States" Value="United States"></asp:ListItem>
                                <asp:ListItem Text="Canada" Value="Canada"></asp:ListItem>
                                <asp:ListItem Text="United Kingdom" Value="United Kingdom"></asp:ListItem>
                                <asp:ListItem Text="Australia" Value="Australia"></asp:ListItem>
                                <asp:ListItem Text="India" Value="India"></asp:ListItem>
                                <asp:ListItem Text="China" Value="China"></asp:ListItem>
                                <asp:ListItem Text="Germany" Value="Germany"></asp:ListItem>
                                <asp:ListItem Text="France" Value="France"></asp:ListItem>
                                <asp:ListItem Text="Japan" Value="Japan"></asp:ListItem>
                                <asp:ListItem Text="Brazil" Value="Brazil"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="group">
                            <label for="city">City</label>
                            <asp:DropDownList ID="citydropdown" runat="server">
                                <asp:ListItem Text="Choose.." Value=""></asp:ListItem>
                                <asp:ListItem Text="Navi Mumbai" Value="Navi Mumbai"></asp:ListItem>
                                <asp:ListItem Text="Bandra" Value="Bandra"></asp:ListItem>
                                <asp:ListItem Text="Dombivli" Value="Dombivli"></asp:ListItem>
                                <asp:ListItem Text="Thane" Value="Thane"></asp:ListItem>
                                <asp:ListItem Text="Kalyan" Value="Kalyan"></asp:ListItem>
                                <asp:ListItem Text="Panvel" Value="Panvel"></asp:ListItem>
                                <asp:ListItem Text="Vasai" Value="Vasai"></asp:ListItem>
                                <asp:ListItem Text="Virar" Value="Virar"></asp:ListItem>
                                <asp:ListItem Text="Ulhasnagar" Value="Ulhasnagar"></asp:ListItem>
                                <asp:ListItem Text="Mira-Bhayandar" Value="Mira-Bhayandar"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="return">
                        <div class="row">
                            <div>Total Quantity</div>
                            <div class="totalQuantity" runat="server" id="totalQuantity" >70</div>
                        </div>
                        <div class="row">
                            <div>Total Price</div>
                            <div class="totalPrice" runat="server" id="totalPrice">$900</div>
                        </div>
                    </div>
                    <asp:Button ID="buttonCheckout" runat="server" Text="CHECKOUT" CssClass="buttonCheckout" OnClick="buttonCheckout_Click" />
                </div>
            </div>
        </div>
    </form>
    <script src="checkout.js"></script>
</body>
</html>
