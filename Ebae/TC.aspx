<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TC.aspx.cs" Inherits="Ebae.T_C" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Ebae
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
    <link href="public/css/TC.css" rel="stylesheet" />


</head>
<body>
    <!--NavBar-->
    <nav>
        <div class="nav-wrapper">
            <nav>
                <div class="nav-wrapper">
                    <a href="./" class="brand-logo myFont" style="padding-left: 1.25rem;">Ebae</a>
                    <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
                    <ul class="right hide-on-med-and-down">
                        <li><a href="./user/Login.aspx">Login</a></li>
                        <li><a href="./user/Register.aspx"><i class="material-icons">person_add</i></a></li>
                        <li><a href="./About.aspx"><i class="material-icons">info</i></a></li>
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

    <!--Terms Container -->
    <div>
        <div class="wrapper flex_align_justify">
            <div class="tc_wrap">
                <div class="tabs_list">
                    <ul>
                        <li data-tc="tab_item_1" class="active">Acceptance of Terms</li>
                        <li data-tc="tab_item_2">User Accounts</li>
                        <li data-tc="tab_item_3">Use of the Platform</li>
                        <li data-tc="tab_item_4">Intellectual Property</li>
                        <li data-tc="tab_item_5">Prohibited Activities</li>
                    </ul>
                </div>
                <div class="tabs_content">
                    <div class="tab_body">
                        <div class="tab_item tab_item_1">
                            <h3>Acceptance of Terms</h3>
                            <p>By accessing or using the Platform, you agree to be bound by these Terms. If you do not agree to these Terms, you may not access or use the Platform.</p>
                        </div>
                        <div class="tab_item tab_item_2" style="display: none;">
                            <h3>User Accounts</h3>
                            <p>You may be required to create an account to access certain features of the Platform. You agree to provide accurate, current, and complete information during the registration process and to update such information to keep it accurate, current, and complete. You are solely responsible for maintaining the confidentiality of your account and password and for restricting access to your account. You agree to accept responsibility for all activities that occur under your account.</p>
                        </div>
                        <div class="tab_item tab_item_3" style="display: none;">
                            <h3>Use of the Platform</h3>
                            <p>You agree to use the Platform only for lawful purposes and in accordance with these Terms. You agree not to use the Platform in any way that violates any applicable law or regulation or infringes on the rights of any third party.</p>
                        </div>
                        <div class="tab_item tab_item_4" style="display: none;">
                            <h3>Intellectual Property</h3>
                            <p>All content included on the Platform, such as text, graphics, logos, button icons, images, audio clips, digital downloads, data compilations, and software, is the property of [Your Company Name] or its content suppliers and is protected by copyright laws.</p>
                        </div>
                        <div class="tab_item tab_item_5" style="display: none;">
                            <h3>Prohibited Activities</h3>
                            <p>You agree not to engage in any of the following prohibited activities:</p>
                            <ul style="list-style-type: circle">
                                <li>Use the Platform in any manner that could disable, overburden, damage, or impair the Platform or interfere with any other party's use of the Platform.</li>
                                <br />
                                <li>Attempt to gain unauthorized access to the Platform or any part of it, other accounts, computer systems, or networks connected to the Platform.</li>
                                <br />
                                <li>Use any robot, spider, scraper, or other automated means to access the Platform for any purpose without our express written permission.</li>
                                <br />
                                <li>Upload or transmit any viruses, worms, or other malicious code.</li>
                                <br />
                                <li>Impersonate or attempt to impersonate Sasta-Corp, a Sasta-Corp employee, another user, or any other person or entity.</li>
                                <br />
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Terms Container End-->

        <!--Drone -->
        <div class="container">
            <img src="public/assets/drone.png" alt="Drone" class="drone" />
        </div>
    </div>

    <script type="text/javascript" src="public/js/TC.js"></script>
</body>
</html>
