<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bid.aspx.cs" Inherits="Ebae.homeitems.Bid" %>

<!DOCTYPE html>

<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Product Card/Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../public/css/bid.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
  </head>
  <body>
    
    <div class = "card-wrapper">
      <div class = "card">
        <!-- card left -->
        <div class = "product-imgs">
          <div class = "img-display">
            <div class = "img-showcase">
                <img src="../public/assets/air-jordan-7-retro-black-gloss-release-date.jpg" />
            </div>
          </div>
        </div>
        <!-- card right -->
        <div class = "product-content">
          <h2 class = "product-title">nike shoes</h2>

          <div class = "product-price">
            <p class = "starting-price">Starting price: <span>$120.00</span></p>
            <p class = "current-bid">Current Bid: <span>$130.00</span></p>
          </div>


          <div class = "purchase-info">
            <input type = "number" min = "0" value = "1">
            <button type = "button" class = "btn">
              Bid <i class = "fas fa-shopping-cart"></i>
            </button>
            <button type = "button" class = "btn">Compare</button>
          </div>
        </div>
      </div>
    </div>

    
    <script src="script.js"></script>
  </body>
</html>
