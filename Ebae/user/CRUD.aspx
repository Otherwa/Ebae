<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRUD.aspx.cs" Inherits="Ebae.user.WebForm1" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Ebaeee
    </title>
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

    <div class="body-wrapper-content">
        <!--NavBar-->
        <nav class="nav">
            <div class="nav-wrapper">
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


        <!--Body-->

        <div style="width: 50rem;">

            <form id="form1" runat="server">
                <div>
                    <h2>Add/Update Product</h2>
                    <label for="txtProductId">Product ID:</label>
                    <asp:TextBox ID="txtProductId" runat="server"></asp:TextBox><br />
                    <label for="txtProductName">Product Name:</label>
                    <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox><br />
                    <label for="txtProductDescription">Product Description:</label>
                    <asp:TextBox ID="txtProductDescription" runat="server"></asp:TextBox><br />
                    <label for="txtProductPrice">Product Price:</label>
                    <asp:TextBox ID="txtProductPrice" runat="server"></asp:TextBox><br />
                    <label for="chkProductAvailability">Available:</label>
                    <asp:CheckBox ID="chkProductAvailability" runat="server" /><br />
                    <label for="fuProductImage">Product Image:</label>
                    <asp:FileUpload ID="fuProductImage" runat="server" /><br />

                    <div class="row" style="display:flex;gap:1rem">
                        <asp:Button CssClass="btn btn-primary" ID="btnAddProduct" runat="server" Text="Add Product" OnClick="btnAddProduct_Click" /><br />
                        <asp:Button CssClass="btn btn-" ID="btnUpdateProduct" runat="server" Text="Update Product" OnClick="btnUpdateProduct_Click" /><br />
                        <asp:Button CssClass="btn btn-danger" ID="btnDeleteProduct" runat="server" Text="Delete Product" OnClick="btnDeleteProduct_Click" /><br />
                        <asp:Label ID="lblResult" runat="server" ForeColor="Red"></asp:Label>
                    </div>
                </div>
                <div>
                    <h2>Products</h2>
                    <asp:GridView ID="gvProducts" runat="server" AutoGenerateColumns="False" OnRowDataBound="gvProducts_RowDataBound">
                        <Columns>
                            <asp:BoundField DataField="ProductId" HeaderText="ID" />
                            <asp:BoundField DataField="Name" HeaderText="Name" />
                            <asp:BoundField DataField="Description" HeaderText="Description" />
                            <asp:BoundField DataField="Price" HeaderText="Price" />
                            <asp:CheckBoxField DataField="Availability" HeaderText="Available" />
                            <asp:TemplateField HeaderText="Image">
                                <ItemTemplate>
                                    <asp:Image ID="imgProduct" runat="server" Width="100px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </form>

        </div>

        <!--Body End-->
    </div>




    <!--Import jQuery before materialize.js-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="../materialize/js/materialize.min.js"></script>
    <script type="text/javascript" src="../public/js/index.js"></script>
</body>
</html>

