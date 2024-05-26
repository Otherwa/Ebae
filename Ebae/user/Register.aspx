<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Ebae.user.Register" %>

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
                                        <img src="https://i.pinimg.com/originals/77/44/80/7744806c7e15d502830a1fdd8e2a37e9.gif">
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
                <h1>Register</h1>

                <div class="row">
                    <div class="col s12 m5 p5">
                        <div class="card-panel teal">
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                            <form id="form2" runat="server">
                                <div>
                                    <h2>Register</h2>
                                    <div>
                                        <asp:Label ID="Label12" runat="server" Text="Email"></asp:Label>
                                        <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
                                    </div>
                                    <div>
                                        <asp:Label ID="Label45" runat="server" Text="Name"></asp:Label>
                                        <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
                                    </div>
                                    <div>
                                        <asp:Label ID="Label23" runat="server" Text="Password"></asp:Label>
                                        <asp:TextBox ID="passwordTextBox1" runat="server" TextMode="Password"></asp:TextBox>
                                    </div>
                                    <div>
                                        <asp:Label ID="Label34" runat="server" Text="Confirm Password"></asp:Label>
                                        <asp:TextBox ID="passwordTextBox2" runat="server" TextMode="Password"></asp:TextBox>
                                    </div>
                                    <div>
                                        <asp:Button ID="register" runat="server" Text="Welcome" CssClass="btn btn-primary" OnClick="register_Click" />
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="col s12 m6 p5">
                        <div class="card">
                            <div class="card-image">
                                <span class="card-title">Card Title</span>
                                <a class="btn-floating halfway-fab waves-effect waves-light red"><i class="material-icons">add</i></a>
                            </div>
                            <div class="card-content">
                                <p>I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively.</p>
                            </div>
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
