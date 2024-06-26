﻿ <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Ebae.user.Login" %>

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
                            <li><a href="./Login.aspx">Login</a></li>
                            <li><a href="./Register.aspx"><i class="material-icons">person_add</i></a></li>
                            <li><a href="../About.aspx"><i class="material-icons">info</i></a></li>
                            <li><a href="../TC.aspx"><i class="material-icons">web</i></a></li>
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
                            <li><a href="./user/Login.aspx">Login</a></li>
                            <li><a href="./user/Register.aspx">Register</a></li>
                            <li><a href="./About.aspx">About Us</a></li>
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
        <div>

            <div class="row">

                <div class="row">
                    <div class="col s12 m5">
                        <div class="card-panel teal">
                            <form id="form1" runat="server">
                                <div>
                                    <h2>Login</h2>
                                    <div>
                                        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>&nbsp;&nbsp;
                                        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                                    </div>
                                    <div>
                                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    </div>
                                    <div>
                                        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="btnLogin_Click" />
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col s12 m6">
                        <div class="card">
                            <img src="../public/assets/Alia.png" />
                        </div>
                    </div>
                </div>


                <!--Form -->
            </div>

        </div>

        <!--Body End-->
    </div>




    <!--Import jQuery before materialize.js-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="../materialize/js/materialize.min.js"></script>
    <script type="text/javascript" src="../public/js/index.js"></script>
</body>
</html>
