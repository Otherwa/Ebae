<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ebae.Default" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Ebae
    </title>
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <!--Import materialize.css-->

    <link type="text/css" rel="stylesheet" href="materialize/css/materialize.css" media="screen,projection" />

    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>

<body>
    <!--NavBar-->
    <!-- Dropdown Structure -->

    <nav>
        <div class="nav-wrapper">
            <a href="#!" class="brand-logo" style="padding-left: 1.25rem !important;">Ebae</a>
            <ul class="right hide-on-med-and-down">
                <li><a href="sass.html">For Sale</a></li>
                <li><a href="badges.html">Users</a></li>
                <!-- Dropdown Trigger -->
                <li><a class="dropdown-button" href="#!" data-activates="dropdown1">Go<i class="material-icons right">arrow_drop_down</i></a></li>
                <li>

                </li>
            </ul>
            <ul id="dropdown1" class="dropdown-content">
                <li><a href="./user/Login.aspx">Login</a></li>
                <li><a href="./user/Register.aspx">Register</a></li>
                <li class="divider"></li>
                <li><a href="./Terms.aspx">T&C</a></li>
            </ul>
        </div>
    </nav>

    <!--Import jQuery before materialize.js-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="materialize/js/materialize.min.js"></script>
</body>
</html>
