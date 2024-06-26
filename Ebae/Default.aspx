﻿﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ebae.Default" %>

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

    <link type="text/css" rel="stylesheet" href="materialize/css/materialize.css" media="screen,projection" />

    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!--Custom Styles-->
    <link href="public/css/style.css" rel="stylesheet" />

</head>

<body class="body-wrapper">

    <div class="body-wrapper-content">
        <!--NavBar-->
        <nav class="nav">
            <div class="nav-wrapper">
                <nav class="pink lighten-5 nav">
                    <div class="nav-wrapper">
                        <a href="./" class="brand-logo myFont" style="padding-left: 1.25rem;">Ebaeee</a>
                        <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
                        <ul class="right hide-on-med-and-down">
                            <li><a href="./user/Login.aspx">Login</a></li>
                            <li><a href="./user/Register.aspx"><i class="material-icons">person_add</i></a></li>
                            <li><a href="./About.aspx"><i class="material-icons">info</i></a></li>
                            <li><a href="./TC.aspx"><i class="material-icons">web</i></a></li>
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

        <div class="parallax-container">
            <div class="parallax">
                <video src="public/assets/finalfinal.mp4" autoplay muted loop type="video/mp4" />
            </div>
        </div>

        <div class="row">
            <div class="col s12">
                <ul class="tabs">
                    <li class="tab col s6"><a href="#test1">Offers</a></li>
                    <li class="tab col s6"><a href="#test2">BID</a></li>
                </ul>
            </div>
            <div id="test1" class="col s12" style="padding: 1.4rem !important;">
                <iframe src="homeitems/Offers.aspx" style="width:100%;height:800px;border:none"></iframe>
            </div>
            <div id="test2" class="col s12" style="padding: 1.4rem !important;">
                <iframe src="homeitems/Bid.aspx" style="width: 100%; height: 1500px; border: none"></iframe>
            </div>
        </div>

        <div class="section white">
            <div class="row container">
                <h2 class="header myFont">Ebaeee</h2>
                <p class="grey-text text-darken-3 lighten-3">
                    Discover, Bid, and Win - Where Every Item Tells a Story.
              Shop with Confidence, Knowing Quality is Our Promise.
              Join Our Community of Buyers and Sellers - Together, We Thrive.
              Experience the Excitement of Finding Your Perfect Match - Start Browsing Ebae Today!
                </p>
            </div>
        </div>

        <!--Body End-->
    </div>



    <!--Import jQuery before materialize.js-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="materialize/js/materialize.min.js"></script>
    <script type="text/javascript" src="public/js/index.js"></script>
</body>
</html>