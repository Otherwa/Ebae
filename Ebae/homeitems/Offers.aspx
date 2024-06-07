<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Offers.aspx.cs" Inherits="Ebae.homeitems.hotdeals" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fody Slider</title>
    <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
    <link href="../public/css/offers.css" rel="stylesheet" />
    <style>
        .swiper-slide .tranding-slide-content {
    display: none;
    position: absolute; /* Positioning it absolutely within the swiper-slide */
    top: 50%; /* Adjust according to your layout */
    left: 50%; /* Adjust according to your layout */
    transform: translate(-50%, -50%); /* Center the content */
    background: rgba(255, 255, 255, 0.8); /* Optional: Adds a background for better visibility */
    padding: 150px; /* Optional: Adds padding around the content */
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Optional: Adds a subtle shadow */
}

.swiper-slide:hover .tranding-slide-content {
    display: block;
}

    </style>
</head>

<body>
    <section id="tranding">
        <div class="container">
            <h3 class="text-center section-subheading">Popular Offers</h3>
            <h1 class="text-center section-heading">Trending Items</h1>
        </div>
        <div class="container">
            <div class="swiper tranding-slider">
                <div class="swiper-wrapper">
                    <% 
                        foreach (var item in ProductItems)
                        {
                    %>
                    <div class="swiper-slide tranding-slide">
                        <div class="tranding-slide-img">
                            <img src="<%= item.ImageUrl %>" alt="Trending">
                        </div>
                     
                        <div class="tranding-slide-content" >
                            <div class="price">
                            <h1 class="product-price">₹<%= item.Price %></h1>
                                </div><br /><br />
                            <div class="tranding-slide-content-bottom" style="gap:16;">
                                <h2 class="food-name" style="color: black"><%= item.Name %></h2>
                            </div>
                        </div>
                    </div>
                    <%
                        }
                    %>
                </div>

                <div class="tranding-slider-control">
                    <div class="swiper-button-prev slider-arrow">
                        <ion-icon name="arrow-back-outline"></ion-icon>
                    </div>
                    <div class="swiper-button-next slider-arrow">
                        <ion-icon name="arrow-forward-outline"></ion-icon>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
        </div>
    </section>

    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
    <script src="../public/js/Offers.js"></script>
</body>
</html>
