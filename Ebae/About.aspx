<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Ebae.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
 <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f5f5f5;
      color: #333;
    }

    header {
      background-color: #333;
      color: #fff;
      padding: 20px;
      text-align: center;
    }

    .container {
      max-width: 800px;
      margin: 20px auto;
      padding: 20px;
      background-color: #fff;
      border-radius: 5px;
      box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    }

    h1 {
      color: #333;
    }

    p {
      line-height: 1.6;
    }

    a {
      color: #007bff;
      text-decoration: none;
    }

    a:hover {
      text-decoration: underline;
    }

    footer {
      background-color: #333;
      color: #fff;
      padding: 20px;
      text-align: center;
      position: fixed;
      bottom: 0;
      width: 100%;
    }
  </style>
</head>
<body>
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
     
  
  <div class="container">
    <h2>Who We Are</h2>
    <p>Website Name is your one-stop destination for buying and selling a wide variety of goods online. Whether you're looking to declutter your home, find a unique treasure, or start your own business, we've got you covered. Our platform connects millions of buyers and sellers worldwide, creating a vibrant marketplace where everyone can find what they need.</p>
    
    <h2>Our Mission</h2>
    <p>At Website Name, our mission is to empower people to buy and sell almost anything online, easily and conveniently. We strive to provide a safe, secure, and user-friendly environment where individuals and businesses can connect, transact, and succeed.</p>
    
    <!-- Add more sections as needed -->
  </div>

  <footer>
    <p>Have questions or feedback? <a href="#">Contact us</a>.</p>
    <p>Thank you for choosing Website Name! Happy buying and selling!</p>
  </footer>
</body>
</html>
