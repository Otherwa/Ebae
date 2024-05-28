<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Ebae.user.Dashboard" %>

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

   <!-- css for products cards starts here-->
      <style>
        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            gap: 20px;
        }

        .card {
            border: 1px solid #ddd;
            border-radius: 8px;
            width: 30%;
            padding: 16px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .card img {
            max-width: 100%;
            border-radius: 8px 8px 0 0;
        }

        .card-title {
            font-size: 1.2em;
            margin: 16px 0 8px;
        }

        .card-description {
            font-size: 1em;
            color: #555;
        }
    </style>
    <!-- css for products cards ends here-->
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
                            <li><a href="./CRUD.aspx">Manage</a></li>
                            <li>
                                <form runat="server">
                                    <asp:Button CssClass="waves-effect waves-teal btn-flat" ID="Button1" runat="server" Text="Logout" ForeColor="Black" OnClick="Logout" />
                                </form>
                            </li>
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

        <div style="width: 80vw;">
            <div style="padding: 1.25rem">

                <!--Chip-->
                <div class="chip">
                    <asp:Label ID="UserEmail" runat="server" Text="Label"></asp:Label>
                </div>



            </div>
        </div>

        <div class="card-container">
    <div class="card">
        <img src="https://via.placeholder.com/300x200" alt="Placeholder Image">
        <div class="card-title">Card Title 1</div>
        <div class="card-description">This is a description of card 1.</div>
    </div>
    <div class="card">
        <img src="https://via.placeholder.com/300x200" alt="Placeholder Image">
        <div class="card-title">Card Title 2</div>
        <div class="card-description">This is a description of card 2.</div>
    </div>
    <div class="card">
        <img src="https://via.placeholder.com/300x200" alt="Placeholder Image">
        <div class="card-title">Card Title 3</div>
        <div class="card-description">This is a description of card 3.</div>
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
