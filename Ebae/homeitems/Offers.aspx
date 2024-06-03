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
                        <div class="tranding-slide-content">
                            <h1 class="product-price">₹<%= item.Price %></h1>
                            <div class="tranding-slide-content-bottom">
                                <h2 class="food-name" style="color:black"><%= item.Name %></h2>
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
