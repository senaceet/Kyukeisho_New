<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Kyukeisho</title>
        <link rel="icon" type="image/png" href="IMG/GF.png">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
              integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

        <style>
            hr {
                background-color: rgb(94, 255, 0);
            }
        </style>
        <style type="text/css">
            body {
                background: #e2eaef00;
                font-family: "Open Sans", sans-serif;
            }

            .carousel {
                margin: 50px auto;
                padding: 0 70px;
            }

            .carousel .item {
                color: #747d89;
                min-height: 325px;
                text-align: center;
                overflow: hidden;
            }

            .carousel .thumb-wrapper {
                padding: 25px 15px;
                background: rgba(255, 0, 0, 0);
                border-radius: 6px;
                text-align: center;
                position: relative;
                box-shadow: 0 2px 3px rgba(0, 0, 0, 0);
            }

            .carousel .item .img-box {
                height: 120px;
                margin-bottom: 20px;
                width: 100%;
                position: relative;
            }

            .carousel .item img {
                max-width: 100%;
                max-height: 100%;
                display: inline-block;
                position: absolute;
                bottom: 0;
                margin: 0 auto;
                left: 0;
                right: 0;
            }

            .carousel .item h4 {
                font-size: 18px;
            }

            .carousel .item h4,
            .carousel .item p,
            .carousel .item ul {
                margin-bottom: 5px;
            }

            .carousel .thumb-content .btn i {
                font-size: 14px;
                font-weight: bold;
                margin-left: 5px;
            }

            .carousel .carousel-control {
                height: 44px;
                width: 40px;
                background: #ffe600;
                margin: auto 0;
                border-radius: 4px;
                opacity: 0.8;
            }

            .carousel .carousel-control:hover {
                background: #ff0800;
                opacity: 1;
            }

            .carousel .carousel-control i {
                font-size: 36px;
                position: absolute;
                top: 50%;
                display: inline-block;
                margin: -19px 0 0 0;
                z-index: 5;
                left: 0;
                right: 0;
                color: rgb(0, 0, 0);
                text-shadow: none;
                font-weight: bold;
            }

            .carousel .item-price {
                font-size: 13px;
                padding: 2px 0;
            }

            .carousel .item-price strike {
                opacity: 0.7;
                margin-right: 5px;
            }

            .carousel .carousel-control.left i {
                margin-left: -2px;
            }

            .carousel .carousel-control.right i {
                margin-right: -4px;
            }

            .carousel .carousel-indicators {
                bottom: -50px;
            }

            .carousel-indicators li,
            .carousel-indicators li.active {
                width: 10px;
                height: 10px;
                margin: 4px;
                border-radius: 50%;
                border: none;
            }

            .carousel-indicators li {
                background: rgba(0, 0, 0, 0.2);
            }

            .carousel-indicators li.active {
                background: rgba(0, 0, 0, 0.6);
            }

            .carousel .wish-icon {
                position: absolute;
                right: 10px;
                top: 10px;
                z-index: 99;
                cursor: pointer;
                font-size: 16px;
                color: #abb0b8;
            }

            .carousel .wish-icon .fa-heart {
                color: #ff6161;
            }

            .star-rating li {
                padding: 0;
            }

            .star-rating i {
                font-size: 14px;
                color: #ffc000;
            }
        </style>
        <script type="text/javascript">
            $(document).ready(function () {
                $(".wish-icon i").click(function () {
                    $(this).toggleClass("fa-heart fa-heart-o");
                });
            });
        </script>

    </head>

    <body style="background-color: rgb(0, 0, 0)">
        <font style="color:rgb(255, 145, 0)">
        <div class="header fixed-top">
            <nav class="navbar navbar-expand-lg navbar-light " style="background-color: #343a40">
                <a href="index.html">
                    <img width="380" height="70" src="https://fotos.subefotos.com/105fb41d255ed1489a748b723f448441o.png"
                         class="img-fluid" alt="Responsive image">
                </a>
                <div class="col-xl-1 text-center">
                    <button class="navbar-toggler" style="background-color: rgb(77, 204, 19)" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                            aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                    </ul>
                    <form class="form-inline my-2 my-lg-0">
                        <input class="form-control mr-sm-2 width:8rem" type="search" placeholder="Buscar" aria-label="Search">
                        <button class="btn btn-outline-warning my-2 my-sm-0 mr-sm-2" type="submit"><i class="fa fa-search"
                                                                                                      aria-hidden="true"></i> Buscar </button>
                    </form>
                    <ul class="navbar-nav ">
                        <li class="nav-item dropdown mr-2">
                            <a class="nav-link dropdown-toggle navbar-DARK" href="#" id="navbarDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color:rgb(255, 217, 0)">
                                <i class="fa fa-user" aria-hidden="true"></i>
                                Mi cuenta:
                            </a>
                            <div class="dropdown-menu mr-sm-2 " aria-labelledby="navbarDropdown" style="background-color: #343a40">
                                <a class="dropdown-item" href="Cliente/Inicio_Sesion_Cliente.jsp"
                                   style="color:rgb(255, 217, 0)">Cliente</a>

                                <a class="dropdown-item" href="Administrador/Inicio Sesion Administrador.jsp"
                                   style="color:rgb(255, 217, 0)">Administrador</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>

            <nav class="navbar navbar-expand-lg navbar-light " style="background-color: rgb(77, 204, 19)">
                <div class="col-xl-1 text-center" style="background-color: rgb(77, 204, 19)">
                    <button class="navbar-toggler" style="background-color: rgb(77, 204, 19)" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent2" aria-controls="navbarSupportedContent" aria-expanded="false"
                            aria-label="Toggle navigation">
                        MENU<span class="navbar-toggler-icon"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse " id="navbarSupportedContent2">

                    <div class="col-xl-2 text-left" style="background-color: rgb(77, 204, 19)">
                        <button class="btn text-right btn-lg dropdown-toggle" style="border-color: rgba(133, 133, 133, 0)"
                                type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-bars" aria-hidden="true"></i><strong> Categorias</strong>
                        </button>
                        <div class="dropdown-menu btn-lg " aria-labelledby="dropdownMenuButton"
                             style="width:14rem; background-color: rgb(77, 204, 19)">
                            <a class="dropdown-item" style="color: rgb(0, 0, 0)" href="#">Playstation 4</a>
                            <a class="dropdown-item" style="color: rgb(0, 0, 0)" href="#">PC</a>
                            <a class="dropdown-item" style="color: rgb(0, 0, 0)" href="#">Productos y accesorios</a>
                        </div>
                    </div>
                    <div class="col-xl-3 text-left" style="background-color: rgb(77, 204, 19)">
                        <a href="Reservacion.html">
                            <button type="button" style="border-color: rgba(133, 133, 133, 0)" class="btn btn-outline-dark">
                                <h5><strong><i class="fa fa-gamepad" aria-hidden="true"></i> Reservaciones</strong></h5>
                            </button>
                        </a>
                    </div>

                    <div class="col-xl-3 text-left" style="background-color: rgb(77, 204, 19)">
                        <a href="Conocenos.html">
                            <button type="button" style="border-color: rgba(133, 133, 133, 0)" class="btn btn-outline-dark">
                                <h5><strong><i class="fa fa-users" aria-hidden="true"></i> Conocenos</strong></h5>
                            </button>
                        </a>
                    </div>
                    <div class="col-xl-2 text-left" style="background-color: rgb(77, 204, 19)">
                        <a href="contactenos.html">
                            <button type="button" style="border-color: rgba(133, 133, 133, 0)" class="btn btn-outline-dark">
                                <h5><strong><i class="fa fa-phone" aria-hidden="true"></i> Contactanos</strong></h5>
                            </button>
                        </a>
                    </div>
                    <div class="col-xl-2 text-left" style="background-color: rgb(77, 204, 19)">
                        <a href="https://kyukeisho.blogspot.com/">
                            <button type="button" style="border-color: rgba(133, 133, 133, 0)" class="btn btn-outline-dark">
                                <h5><strong><i class="fa fa-commenting" aria-hidden="true"></i> Blog</strong></h5>
                            </button>
                        </a>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<BR>


<!-- JUEGOS DE LA SEMANA -->
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12 ">
            <h1 align="center" class="display-3">JUEGOS DE LA SEMANA</h1>
            <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="0">
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item carousel-item active" style="background-color: rgba(66, 129, 8, 0.267)">
                        <div class="row">
                            <div class="col-sm-12" style="background-color: rgb(16, 105, 38)">
                                <h1 style="color: rgb(0, 0, 0)"></h1>
                            </div>
                        </div>
                        <div class="row">
                            <!-- JUEGOS DE LA SEMANA 1 -->
                            <div class="col-sm-3">
                                <div class="thumb-wrapper">
                                    <span class="wish-icon"><i class="fa fa-star" aria-hidden="true"></i></span>
                                    <div class="img-box" style="border-color:rgba(255, 255, 255, 0)">
                                        <img src="https://images-na.ssl-images-amazon.com/images/I/61iAOU-b4VL._SX342_.jpg"
                                             class="img-responsive img-fluid" alt="">
                                    </div>
                                    <div class="thumb-content">
                                        <h5 style="color:rgb(255, 217, 0)" class="card-title">Crash Bandicoot y</h5>
                                        <div class="star-rating">
                                            <ul class="list-inline">
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                            </ul>
                                        </div>
                                        <br>
                                        <a href="#" class="btn btn-success" data-target="#Crash_Bandicoot_N_Sane_Trilogy_Xbox"
                                           data-toggle="modal">Detalles</a>
                                        <a href="#" class="btn btn-info">$100.000</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="thumb-wrapper">
                                    <span class="wish-icon"><i class="fa fa-star" aria-hidden="true"></i></span>
                                    <div class="img-box">
                                        <img
                                            src="https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE1Wy3N?ver=552b"
                                            class="img-responsive img-fluid" alt="">
                                    </div>
                                    <div class="thumb-content">
                                        <h5 style="color:rgb(255, 217, 0)" class="card-title">Call of Duty Black Ops 4</h5>
                                        <div class="star-rating">
                                            <ul class="list-inline">
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                            </ul>
                                        </div>
                                        <br>
                                        <a href="#" class="btn btn-success" data-target="#Call_of_Duty_Black_Ops_4_Xbox"
                                           data-toggle="modal">Detalles</a>
                                        <a href="#" class="btn btn-info">$100.000</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="thumb-wrapper">
                                    <span class="wish-icon"><i class="fa fa-star" aria-hidden="true"></i></span>
                                    <div class="img-box">
                                        <img src="https://westore.mv/wp-content/uploads/2019/02/71hLiNR8VqL._AC_SX430_.jpg"
                                             class="img-responsive img-fluid" alt="">
                                    </div>
                                    <div class="thumb-content">
                                        <h5 style="color:rgb(255, 217, 0)" class="card-title">Forza Horizon 4</h5>
                                        <div class="star-rating">
                                            <ul class="list-inline">
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                            </ul>
                                        </div>
                                        <br>
                                        <a href="#" class="btn btn-success" data-target="#Forza_Horizon_4_Xbox"
                                           data-toggle="modal">Detalles</a>
                                        <a href="#" class="btn btn-info">$100.000</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="thumb-wrapper">
                                    <span class="wish-icon"><i class="fa fa-star" aria-hidden="true"></i></span>
                                    <div class="img-box">
                                        <img
                                            src="https://http2.mlstatic.com/battlefield-v-xbox-one-fisico-y-sellado-espanol-latino-D_NQ_NP_730783-MCO28757360569_112018-F.jpg"
                                            class="img-responsive img-fluid" alt="">
                                    </div>
                                    <div class="thumb-content">
                                        <h5 style="color:rgb(255, 217, 0)" class="card-title">Battlefield V</h5>
                                        <div class="star-rating">
                                            <ul class="list-inline">
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                            </ul>
                                        </div>
                                        <br>
                                        <a href="#" class="btn btn-success" data-target="#Battlefield_V_Xbox"
                                           data-toggle="modal">Detalles</a>
                                        <a href="#" class="btn btn-info">$100.000</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item carousel-item" style="background-color: rgba(66, 129, 8, 0.267)">
                        <div class="row">
                            <div class="col-sm-12" style="background-color: rgb(16, 105, 38)">
                                <h1 style="color: rgb(0, 0, 0)"></h1>
                            </div>
                        </div>
                        <!-- JUEGOS DE LA SEMANA 2 -->
                        <div class="row">
                            <div class="col-sm-3">
                                <div class="thumb-wrapper">
                                    <span class="wish-icon"><i class="fa fa-star" aria-hidden="true"></i></span>
                                    <div class="img-box">
                                        <img
                                            src="https://s1.gaming-cdn.com/images/products/3591/orig/mortal-kombat-11-xbox-one-cover.jpg"
                                            class="img-responsive img-fluid" alt="">
                                    </div>
                                    <div class="thumb-content">
                                        <h5 style="color:rgb(255, 217, 0)" class="card-title">Mortal Kombat 11</h5>
                                        <div class="star-rating">
                                            <ul class="list-inline">
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                            </ul>
                                        </div>
                                        <br>
                                        <a href="#" class="btn btn-success" data-target="#Mortal_Kombat_11"
                                           data-toggle="modal">Detalles</a>
                                        <a href="#" class="btn btn-info">$100.000</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="thumb-wrapper">
                                    <span class="wish-icon"><i class="fa fa-star" aria-hidden="true"></i></span>
                                    <div class="img-box">
                                        <img
                                            src="https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/480/public/media/image/2019/05/portada-gears-5.jpg?itok=e949hkCb"
                                            class="img-responsive img-fluid" alt="">
                                    </div>
                                    <div class="thumb-content">
                                        <h5 style="color:rgb(255, 217, 0)" class="card-title">Gears 5</h5>
                                        <div class="star-rating">
                                            <ul class="list-inline">
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                            </ul>
                                        </div>
                                        <br>
                                        <a href="#" class="btn btn-success" data-target="#Gears_5" data-toggle="modal">Detalles</a>
                                        <a href="#" class="btn btn-info">$100.000</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="thumb-wrapper">
                                    <span class="wish-icon"><i class="fa fa-star" aria-hidden="true"></i></span>
                                    <div class="img-box">
                                        <img
                                            src="https://http2.mlstatic.com/fortnite-standard-founders-packxbox-one-descarga-codigo-D_NQ_NP_754276-MCO26558215567_122017-F.jpg"
                                            class="img-responsive img-fluid" alt="">
                                    </div>
                                    <div class="thumb-content">
                                        <h5 style="color:rgb(255, 217, 0)" class="card-title">Fortnite</h5>
                                        <div class="star-rating">
                                            <ul class="list-inline">
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                            </ul>
                                        </div>
                                        <br>
                                        <a href="#" class="btn btn-success" data-target="#Fortnite_PS4" data-toggle="modal">Detalles</a>
                                        <a href="#" class="btn btn-info">$100.000</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="thumb-wrapper">
                                    <span class="wish-icon"><i class="fa fa-star" aria-hidden="true"></i></span>
                                    <div class="img-box">
                                        <img src="https://www.somosxbox.com/wp-content/uploads/2017/06/portadaForza7.jpeg"
                                             class="img-responsive img-fluid" alt="">
                                    </div>
                                    <div class="thumb-content">
                                        <h5 style="color:rgb(255, 217, 0)" class="card-title">Forza 7</h5>
                                        <div class="star-rating">
                                            <ul class="list-inline">
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                            </ul>
                                        </div>
                                        <br>
                                        <a href="#" class="btn btn-success" data-target="#Forza_7" data-toggle="modal">Detalles</a>
                                        <a href="#" class="btn btn-info">$100.000</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item carousel-item" style="background-color: rgba(66, 129, 8, 0.267)">
                        <div class="row">
                            <div class="col-sm-12" style="background-color: rgb(16, 105, 38)">
                                <h1 style="color: rgb(0, 0, 0)"></h1>
                            </div>
                        </div>
                        <!-- JUEGOS DE LA SEMANA 3 -->
                        <div class="row">
                            <div class="col-sm-3">
                                <div class="thumb-wrapper">
                                    <span class="wish-icon"><i class="fa fa-star" aria-hidden="true"></i></span>
                                    <div class="img-box">
                                        <img src="https://media.gamestop.com/i/gamestop/10131424/Watch-Dogs-2"
                                             class="img-responsive img-fluid" alt="">
                                    </div>
                                    <div class="thumb-content">
                                        <h5 style="color:rgb(255, 217, 0)" class="card-title">Watch Dogs 2</h5>
                                        <div class="star-rating">
                                            <ul class="list-inline">
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                            </ul>
                                        </div>
                                        <br>
                                        <a href="#" class="btn btn-success" data-target="#Watch_Dogs_2_PC"
                                           data-toggle="modal">Detalles</a>
                                        <a href="#" class="btn btn-info">$100.000</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="thumb-wrapper">
                                    <span class="wish-icon"><i class="fa fa-star" aria-hidden="true"></i></span>
                                    <div class="img-box">
                                        <img
                                            src="https://i11b.3djuegos.com/juegos/13394/prey__2016_/fotos/ficha/prey__2016_-3417777.jpg"
                                            class="img-responsive img-fluid" alt="">
                                    </div>
                                    <div class="thumb-content">
                                        <h5 style="color:rgb(255, 217, 0)" class="card-title">Prey</h5>
                                        <div class="star-rating">
                                            <ul class="list-inline">
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                            </ul>
                                        </div>
                                        <br>
                                        <a href="#" class="btn btn-success" data-target="#Prey_PC" data-toggle="modal">Detalles</a>
                                        <a href="#" class="btn btn-info">$100.000</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="thumb-wrapper">
                                    <span class="wish-icon"><i class="fa fa-star" aria-hidden="true"></i></span>
                                    <div class="img-box">
                                        <img
                                            src="https://i11c.3djuegos.com/juegos/10864/metro_redux/fotos/ficha/metro_redux-2536486.jpg"
                                            class="img-responsive img-fluid" alt="">
                                    </div>
                                    <div class="thumb-content">
                                        <h5 style="color:rgb(255, 217, 0)" class="card-title">Metro Redux</h5>
                                        <div class="star-rating">
                                            <ul class="list-inline">
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                            </ul>
                                        </div>
                                        <br>
                                        <a href="#" class="btn btn-success" data-target="#Metro_Redux" data-toggle="modal">Detalles</a>
                                        <a href="#" class="btn btn-info">$100.000</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="thumb-wrapper">
                                    <span class="wish-icon"><i class="fa fa-star" aria-hidden="true"></i></span>
                                    <div class="img-box">
                                        <img src="http://camelotgames.net/4815162342/img/juegos/vertical_5376.jpg"
                                             class="img-responsive img-fluid" alt="">
                                    </div>
                                    <div class="thumb-content">
                                        <h5 style="color:rgb(255, 217, 0)" class="card-title">Call Of Duty: Black Ops 3</h5>
                                        <div class="star-rating">
                                            <ul class="list-inline">
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                                <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                            </ul>
                                        </div>
                                        <br>
                                        <a href="#" class="btn btn-success" data-target="#Call_Of_Duty_Black_Ops_3_PC"
                                           data-toggle="modal">Detalles</a>
                                        <a href="#" class="btn btn-info">$100.000</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a class="carousel-control left carousel-control-prev" href="#myCarousel" data-slide="prev">
                    <i class="fa fa-angle-left"></i>
                </a>
                <a class="carousel-control right carousel-control-next" href="#myCarousel" data-slide="next">
                    <i class="fa fa-angle-right"></i>
                </a>
            </div>
        </div>
    </div>
</div>

<!-- Detalles de juegos de la semana 1-->
<div class="modal fade" id="Crash_Bandicoot_N_Sane_Trilogy_Xbox" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalScrollableTitle">Detalles del Producto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <img width="350" height="450"
                             src="https://images-na.ssl-images-amazon.com/images/I/61iAOU-b4VL._SX342_.jpg">
                    </div>
                    <div class="col-md-6">
                        <table class="table table-borderless">
                            <tr>
                                <th>Nombre del juego:</th>
                                <td>Crash Bandicoot N Sane Trilogy</td>
                            </tr>
                            <tr>
                                <th>Categoria:</th>
                                <td>Aventura</td>
                            </tr>
                            <tr>
                                <th>Fecha de estreno:</th>
                                <td>12/12/2000</td>
                            </tr>
                            <tr>
                                <th>Valoración del Producto</th>
                                <td>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                </td>
                            </tr>
                            <tr>
                                <th>Precio:</th>
                                <td>$100.000</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
        </div>
    </div>
</div>
</div>
<div class="modal fade" id="Call_of_Duty_Black_Ops_4_Xbox" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalScrollableTitle">Detalles del Producto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <img width="350" height="450"
                             src="https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE1Wy3N?ver=552b">
                    </div>
                    <div class="col-md-6">
                        <table class="table table-borderless">
                            <tr>
                                <th>Nombre del juego:</th>
                                <td>Call of Duty Black Ops 4</td>
                            </tr>
                            <tr>
                                <th>Categoria:</th>
                                <td>Disparos en primera persona</td>
                            </tr>
                            <tr>
                                <th>Fecha de estreno:</th>
                                <td>12/12/2000</td>
                            </tr>
                            <tr>
                                <th>Valoración del Producto</th>
                                <td>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                </td>
                            </tr>
                            <tr>
                                <th>Precio:</th>
                                <td>$100.000</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
        </div>
    </div>
</div>
</div>
<div class="modal fade" id="Forza_Horizon_4_Xbox" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalScrollableTitle">Detalles del Producto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <img width="350" height="450"
                             src="https://westore.mv/wp-content/uploads/2019/02/71hLiNR8VqL._AC_SX430_.jpg">
                    </div>
                    <div class="col-md-6">
                        <table class="table table-borderless">
                            <tr>
                                <th>Nombre del juego:</th>
                                <td>Forza Horizon 4</td>
                            </tr>
                            <tr>
                                <th>Categoria:</th>
                                <td>Carreras</td>
                            </tr>
                            <tr>
                                <th>Fecha de estreno:</th>
                                <td>12/12/2000</td>
                            </tr>
                            <tr>
                                <th>Valoración del Producto</th>
                                <td>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                </td>
                            </tr>
                            <tr>
                                <th>Precio:</th>
                                <td>$100.000</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
        </div>
    </div>
</div>
</div>
<div class="modal fade" id="Battlefield_V_Xbox" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalScrollableTitle">Detalles del Producto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <img width="350" height="450"
                             src="https://http2.mlstatic.com/battlefield-v-xbox-one-fisico-y-sellado-espanol-latino-D_NQ_NP_730783-MCO28757360569_112018-F.jpg">
                    </div>
                    <div class="col-md-6">
                        <table class="table table-borderless">
                            <tr>
                                <th>Nombre del juego:</th>
                                <td>Battlefield V</td>
                            </tr>
                            <tr>
                                <th>Categoria:</th>
                                <td>Disparos en primera persona</td>
                            </tr>
                            <tr>
                                <th>Fecha de estreno:</th>
                                <td>12/12/2000</td>
                            </tr>
                            <tr>
                                <th>Valoración del Producto</th>
                                <td>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                </td>
                            </tr>
                            <tr>
                                <th>Precio:</th>
                                <td>$100.000</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
        </div>
    </div>
</div>
</div>

<!-- Detalles de juegos de la semana 2 -->
<div class="modal fade" id="Mortal_Kombat_11" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalScrollableTitle">Detalles del Producto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <img width="350" height="450"
                             src="https://s1.gaming-cdn.com/images/products/3591/orig/mortal-kombat-11-xbox-one-cover.jpg">
                    </div>
                    <div class="col-md-6">
                        <table class="table table-borderless">
                            <tr>
                                <th>Nombre del juego:</th>
                                <td>Mortal Kombat 11</td>
                            </tr>
                            <tr>
                                <th>Categoria:</th>
                                <td>Disparos en primera persona</td>
                            </tr>
                            <tr>
                                <th>Fecha de estreno:</th>
                                <td>12/12/2000</td>
                            </tr>
                            <tr>
                                <th>Valoración del Producto</th>
                                <td>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                </td>
                            </tr>
                            <tr>
                                <th>Precio:</th>
                                <td>$100.000</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
        </div>
    </div>
</div>
</div>
<div class="modal fade" id="Gears_5" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalScrollableTitle">Detalles del Producto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <img width="350" height="450"
                             src="https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/480/public/media/image/2019/05/portada-gears-5.jpg?itok=e949hkCb">
                    </div>
                    <div class="col-md-6">
                        <table class="table table-borderless">
                            <tr>
                                <th>Nombre del juego:</th>
                                <td>Gears 5</td>
                            </tr>
                            <tr>
                                <th>Categoria:</th>
                                <td>Acción</td>
                            </tr>
                            <tr>
                                <th>Fecha de estreno:</th>
                                <td>12/12/2000</td>
                            </tr>
                            <tr>
                                <th>Valoración del Producto</th>
                                <td>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                </td>
                            </tr>
                            <tr>
                                <th>Precio:</th>
                                <td>$100.000</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
        </div>
    </div>
</div>
</div>
<div class="modal fade" id="Fortnite_PS4" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalScrollableTitle">Detalles del Producto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <img width="350" height="450"
                             src="https://http2.mlstatic.com/fortnite-standard-founders-packxbox-one-descarga-codigo-D_NQ_NP_754276-MCO26558215567_122017-F.jpg">
                    </div>
                    <div class="col-md-6">
                        <table class="table table-borderless">
                            <tr>
                                <th>Nombre del juego:</th>
                                <td>Fortnite</td>
                            </tr>
                            <tr>
                                <th>Categoria:</th>
                                <td>Disparos en tercera persona</td>
                            </tr>
                            <tr>
                                <th>Fecha de estreno:</th>
                                <td>12/12/2000</td>
                            </tr>
                            <tr>
                                <th>Valoración del Producto</th>
                                <td>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                </td>
                            </tr>
                            <tr>
                                <th>Precio:</th>
                                <td>$100.000</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
        </div>
    </div>
</div>
</div>
<div class="modal fade" id="Forza_7" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalScrollableTitle">Detalles del Producto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <img width="350" height="450"
                             src="https://www.somosxbox.com/wp-content/uploads/2017/06/portadaForza7.jpeg">
                    </div>
                    <div class="col-md-6">
                        <table class="table table-borderless">
                            <tr>
                                <th>Nombre del juego:</th>
                                <td>Forza 7</td>
                            </tr>
                            <tr>
                                <th>Categoria:</th>
                                <td>Acción-Aventura</td>
                            </tr>
                            <tr>
                                <th>Fecha de estreno:</th>
                                <td>12/12/2000</td>
                            </tr>
                            <tr>
                                <th>Valoración del Producto</th>
                                <td>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                </td>
                            </tr>
                            <tr>
                                <th>Precio:</th>
                                <td>$100.000</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
        </div>
    </div>
</div>
</div>

<!-- Detalles de juegos de la semana 3 -->
<div class="modal fade" id="Watch_Dogs_2_PC" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalScrollableTitle">Detalles del Producto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <img width="350" height="450" src="https://media.gamestop.com/i/gamestop/10131424/Watch-Dogs-2">
                    </div>
                    <div class="col-md-6">
                        <table class="table table-borderless">
                            <tr>
                                <th>Nombre del juego:</th>
                                <td>Watch Dogs 2</td>
                            </tr>
                            <tr>
                                <th>Categoria:</th>
                                <td>Accion-Aventura</td>
                            </tr>
                            <tr>
                                <th>Fecha de estreno:</th>
                                <td>12/12/2000</td>
                            </tr>
                            <tr>
                                <th>Valoración del Producto</th>
                                <td>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                </td>
                            </tr>
                            <tr>
                                <th>Precio:</th>
                                <td>$100.000</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
        </div>
    </div>
</div>
</div>
<div class="modal fade" id="Prey_PC" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalScrollableTitle">Detalles del Producto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <img width="350" height="450" src="
                             https://i11b.3djuegos.com/juegos/13394/prey__2016_/fotos/ficha/prey__2016_-3417777.jpg">
                    </div>
                    <div class="col-md-6">
                        <table class="table table-borderless">
                            <tr>
                                <th>Nombre del juego:</th>
                                <td>Prey</td>
                            </tr>
                            <tr>
                                <th>Categoria:</th>
                                <td>Disparos en primera persona</td>
                            </tr>
                            <tr>
                                <th>Fecha de estreno:</th>
                                <td>12/12/2000</td>
                            </tr>
                            <tr>
                                <th>Valoración del Producto</th>
                                <td>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                </td>
                            </tr>
                            <tr>
                                <th>Precio:</th>
                                <td>$100.000</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
        </div>
    </div>
</div>
</div>
<div class="modal fade" id="Metro_Redux" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalScrollableTitle">Detalles del Producto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <img width="350" height="450"
                             src="https://i11c.3djuegos.com/juegos/10864/metro_redux/fotos/ficha/metro_redux-2536486.jpg">
                    </div>
                    <div class="col-md-6">
                        <table class="table table-borderless">
                            <tr>
                                <th>Nombre del juego:</th>
                                <td>Metro Redux</td>
                            </tr>
                            <tr>
                                <th>Categoria:</th>
                                <td>Disparos en primera persona</td>
                            </tr>
                            <tr>
                                <th>Fecha de estreno:</th>
                                <td>12/12/2000</td>
                            </tr>
                            <tr>
                                <th>Valoración del Producto</th>
                                <td>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                </td>
                            </tr>
                            <tr>
                                <th>Precio:</th>
                                <td>$100.000</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
        </div>
    </div>
</div>
</div>
<div class="modal fade" id="Call_Of_Duty_Black_Ops_3_PC" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalScrollableTitle">Detalles del Producto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <img width="350" height="450" src="http://camelotgames.net/4815162342/img/juegos/vertical_5376.jpg">
                    </div>
                    <div class="col-md-6">
                        <table class="table table-borderless">
                            <tr>
                                <th>Nombre del juego:</th>
                                <td>Call Of Duty Black Ops 3</td>
                            </tr>
                            <tr>
                                <th>Categoria:</th>
                                <td>Disparos en primera persona</td>
                            </tr>
                            <tr>
                                <th>Fecha de estreno:</th>
                                <td>12/12/2000</td>
                            </tr>
                            <tr>
                                <th>Valoración del Producto</th>
                                <td>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                </td>
                            </tr>
                            <tr>
                                <th>Precio:</th>
                                <td>$100.000</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
        </div>
    </div>
</div>
</div>
<HR>
<!-- CATALOGO DE JUEGOS-->
<br>
<h1 align="center" class="display-3">CATALOGO DE JUEGOS</h1>
<BR>
<div class="container-fluid">
    <div align="justify" class="card-group ">
        <div class="card mr-2" style="background-color:rgb(0, 0, 0)">
            <a href="#"><img height="450"
                             src="https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE1Wy3N?ver=552b"
                             class="card-img-top"></a>
            <div class="card-body">
                <center>
                    <h5 style="color:rgb(255, 217, 0)" class="card-title">Call of Duty Black OPS</h5>
                    <br>
                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                    <br>
                    <br>
                    <a href="#" class="btn btn-success" data-target="#call_of_Duty_black_OPS" data-toggle="modal">Detalles</a>
                    <div class="btn btn-info">$100.000</div>
                </center>
            </div>
        </div>
        <div class="card mr-2" style="background-color:rgb(0, 0, 0)">
            <a href="#"><img height="450"
                             src="https://i11b.3djuegos.com/juegos/12151/tom_clancy__039_s_ghost_recon_wildlands/fotos/ficha/tom_clancy__039_s_ghost_recon_wildlands-3623689.jpg"
                             class="card-img-top" alt="100"></a>
            <div class="card-body">
                <center>
                    <h5 style="color:rgb(255, 217, 0)" class="card-title">Tom Clancy's Ghost Recon</h5>
                    <BR>
                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                    <br>
                    <br>
                    <a href="#" class="btn btn-success" data-target="#Tom_Clancys_Ghost_Recon"
                       data-toggle="modal">Detalles</a>
                    <div class="btn btn-info">$100.000</div>
                </center>
            </div>
        </div>
        <div class="card mr-2" style="background-color:rgb(0, 0, 0)">
            <a href="#"><img height="450" src="https://images-eu.ssl-images-amazon.com/images/I/511yqvwlwpL.jpg"
                             class="card-img-top"></a>
            <div class="card-body">
                <center>
                    <h5 style="color:rgb(255, 217, 0)" class="card-title">Rocket league</h5>
                    <br>
                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                    <br>
                    <br>
                    <a href="#" class="btn btn-success" data-target="#Rocket_league" data-toggle="modal">Detalles</a>
                    <div class="btn btn-info">$100.000</div>
                </center>
            </div>
        </div>
        <div class="card mr-2" style="background-color:rgb(0, 0, 0)">
            <a href="#"><img height="450"
                             src="https://gameplanet-53f8.kxcdn.com/media/catalog/product/cache/4/image/9df78eab33525d08d6e5fb8d27136e95/r/e/re2-one.jpg"
                             class="card-img-top"></a>
            <div class="card-body">
                <center>
                    <h5 style="color:rgb(255, 217, 0)" class="card-title">Resident evil 2</h5>
                    <br>
                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                    <br>
                    <br>
                    <a href="#" class="btn btn-success" data-target="#Resident_evil_2" data-toggle="modal">Detalles</a>
                    <div class="btn btn-info">$100.000</div>
                </center>
            </div>
        </div>

        <div class="card" style="background-color:rgb(0, 0, 0)">
            <a href="#"><img height="450"
                             src="https://http2.mlstatic.com/playerunknowns-battlegrounds-pubg-xbox-one-D_NQ_NP_743659-MLM28150804370_092018-F.jpg"
                             class="card-img-top"></a>

            <div class="card-body">
                <center>
                    <h5 style="color:rgb(255, 217, 0)" class="card-title">PlayerUnknown's Battlegrounds</h5>
                    <br>
                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star-o text-warning" aria-hidden="true"></i><br>
                    <br>
                    <a href="#" class="btn btn-success" data-target="#PlayerUnknowns_Battlegrounds"
                       data-toggle="modal">Detalles</a>
                    <div class="btn btn-info">$100.000</div>
                </center>
            </div>
        </div>
    </div>
    <br>
    <div align="justify" class="card-group ">
        <div class="card mr-2" style="background-color:rgb(0, 0, 0)">
            <a href="#"><img height="450" src="https://images-na.ssl-images-amazon.com/images/I/51G6O9E7jhL.jpg"
                             class="card-img-top"></a>
            <div class="card-body">
                <center>
                    <h5 style="color:rgb(255, 217, 0)" class="card-title">Assassin's Creed Origins</h5>
                    <br>
                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                    <br>
                    <br>
                    <a href="#" class="btn btn-success" data-target="#Assassins_Creed_Origins"
                       data-toggle="modal">Detalles</a>
                    <div class="btn btn-info">$100.000</div>
                </center>
            </div>
        </div>
        <div class="card mr-2" style="background-color:rgb(0, 0, 0)">
            <a href="#"><img height="450"
                             src="https://i11a.3djuegos.com/juegos/13200/need_for_speed_2017__nombre_temporal_/fotos/ficha/need_for_speed_2017__nombre_temporal_-3749984.jpg"
                             class="card-img-top" alt="100"></a>
            <div class="card-body">
                <center>
                    <h5 style="color:rgb(255, 217, 0)" class="card-title">Need for Speed Payback</h5>
                    <BR>
                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                    <br>
                    <br>
                    <a href="#" class="btn btn-success" data-target="#Need_for_Speed_Payback" data-toggle="modal">Detalles</a>
                    <div class="btn btn-info">$100.000</div>
                </center>
            </div>
        </div>
        <div class="card mr-2" style="background-color:rgb(0, 0, 0)">
            <a href="#"><img height="450"
                             src="https://i11d.3djuegos.com/juegos/7205/halo_5/fotos/ficha/halo_5-3220823.jpg"
                             class="card-img-top"></a>
            <div class="card-body">
                <center>
                    <h5 style="color:rgb(255, 217, 0)" class="card-title">Halo 5 Guardians</h5>
                    <br>
                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                    <br>
                    <br>
                    <a href="#" class="btn btn-success" data-target="#Halo_5_Guardians" data-toggle="modal">Detalles</a>
                    <div class="btn btn-info">$100.000</div>
                </center>
            </div>
        </div>
        <div class="card mr-2" style="background-color:rgb(0, 0, 0)">
            <a href="#"><img height="450"
                             src="https://pisces.bbystatic.com/image2/BestBuy_US/images/products/7359/7359046_sa.jpg;maxHeight=640;maxWidth=550"
                             class="card-img-top"></a>
            <div class="card-body">
                <center>
                    <h5 style="color:rgb(255, 217, 0)" class="card-title">GTA V</h5>
                    <br>
                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                    <br>
                    <br>
                    <a href="#" class="btn btn-success" data-target="#GTA_V" data-toggle="modal">Detalles</a>
                    <div class="btn btn-info">$100.000</div>
                </center>
            </div>
        </div>

        <div class="card" style="background-color:rgb(0, 0, 0)">
            <a href="#"><img height="450"
                             src="https://gameplanet-53f8.kxcdn.com/media/catalog/product/cache/4/image/9df78eab33525d08d6e5fb8d27136e95/f/a/far-cry-5-deluxe-one_2.jpg"
                             class="card-img-top"></a>

            <div class="card-body">
                <center>
                    <h5 style="color:rgb(255, 217, 0)" class="card-title">FARCRY 5 DELUXE EDITION</h5>
                    <br>
                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                    <i class="fa fa-star-o text-warning" aria-hidden="true"></i><br>
                    <br>
                    <a href="#" class="btn btn-success" data-target="#FARCRY_5_DELUXE_EDITION"
                       data-toggle="modal">Detalles</a>
                    <div class="btn btn-info">$100.000</div>
                </center>
            </div>
        </div>
    </div>
</div>
<br>

</div>

<!-- detalle de juegos de xbox -->

<div class="modal fade" id="Resident_evil_2" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalScrollableTitle">Detalles del Producto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <img height="500"
                             src="https://gameplanet-53f8.kxcdn.com/media/catalog/product/cache/4/image/9df78eab33525d08d6e5fb8d27136e95/r/e/re2-one.jpg"
                             alt="">
                    </div>
                    <div class="col-md-6">
                        <table class="table table-borderless">
                            <tr>
                                <th>Nombre del juego:</th>
                                <td>Resident evil 2</td>
                            </tr>
                            <tr>
                                <th>Categoria:</th>
                                <td>Aventtura</td>
                            </tr>
                            <tr>
                                <th>Fecha de estreno:</th>
                                <td>12/12/2000</td>
                            </tr>
                            <tr>
                                <th>Valoración del Producto</th>
                                <td>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                </td>
                            </tr>
                            <tr>
                                <th>Precio:</th>
                                <td>$100.000</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="call_of_Duty_black_OPS" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalScrollableTitle">Detalles del Producto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <img height="500"
                             src="https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE1Wy3N?ver=552b"
                             alt="">
                    </div>
                    <div class="col-md-6">
                        <table class="table table-borderless">
                            <tr>
                                <th>Nombre del juego:</th>
                                <td>Call of Duty Black OPS</td>
                            </tr>
                            <tr>
                                <th>Categoria:</th>
                                <td>Disparos en Primera Persona</td>
                            </tr>
                            <tr>
                                <th>Fecha de estreno:</th>
                                <td>9/11/2010</td>
                            </tr>
                            <tr>
                                <th>Valoración del Producto</th>
                                <td>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                </td>
                            </tr>
                            <tr>
                                <th>Precio:</th>
                                <td>$100.000</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="Tom_Clancys_Ghost_Recon" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalScrollableTitle">Detalles del Producto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <img height="500"
                             src="https://i11b.3djuegos.com/juegos/12151/tom_clancy__039_s_ghost_recon_wildlands/fotos/ficha/tom_clancy__039_s_ghost_recon_wildlands-3623689.jpg"
                             alt="">
                    </div>
                    <div class="col-md-6">
                        <table class="table table-borderless">
                            <tr>
                                <th>Nombre del juego:</th>
                                <td>Tom Clancy's Ghost Recon</td>
                            </tr>
                            <tr>
                                <th>Categoria:</th>
                                <td>Disparos tactico, Mundo Abierto</td>
                            </tr>
                            <tr>
                                <th>Fecha de estreno:</th>
                                <td>7/3/2017</td>
                            </tr>
                            <tr>
                                <th>Valoración del Producto</th>
                                <td>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                </td>
                            </tr>
                            <tr>
                                <th>Precio:</th>
                                <td>$100.000</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="Rocket_league" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalScrollableTitle">Detalles del Producto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <img height="500" src="https://images-eu.ssl-images-amazon.com/images/I/511yqvwlwpL.jpg" alt="">
                    </div>
                    <div class="col-md-6">
                        <table class="table table-borderless">
                            <tr>
                                <th>Nombre del juego:</th>
                                <td>Rocket league</td>
                            </tr>
                            <tr>
                                <th>Categoria:</th>
                                <td>Deportes</td>
                            </tr>
                            <tr>
                                <th>Fecha de estreno:</th>
                                <td>7/1/2015</td>
                            </tr>
                            <tr>
                                <th>Valoración del Producto</th>
                                <td>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                </td>
                            </tr>
                            <tr>
                                <th>Precio:</th>
                                <td>$100.000</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="PlayerUnknowns_Battlegrounds" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalScrollableTitle">Detalles del Producto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <img height="500"
                             src="https://http2.mlstatic.com/playerunknowns-battlegrounds-pubg-xbox-one-D_NQ_NP_743659-MLM28150804370_092018-F.jpg"
                             alt="">
                    </div>
                    <div class="col-md-6">
                        <table class="table table-borderless">
                            <tr>
                                <th>Nombre del juego:</th>
                                <td>PlayerUnknown's Battlegrounds</td>
                            </tr>
                            <tr>
                                <th>Categoria:</th>
                                <td>Battle royale, Supervivencia, Shooter</td>
                            </tr>
                            <tr>
                                <th>Fecha de estreno:</th>
                                <td>7/12/2018</td>
                            </tr>
                            <tr>
                                <th>Valoración del Producto</th>
                                <td>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                </td>
                            </tr>
                            <tr>
                                <th>Precio:</th>
                                <td>$100.000</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="Assassins_Creed_Origins" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalScrollableTitle">Detalles del Producto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <img height="500" src="https://images-na.ssl-images-amazon.com/images/I/51G6O9E7jhL.jpg" alt="">
                    </div>
                    <div class="col-md-6">
                        <table class="table table-borderless">
                            <tr>
                                <th>Nombre del juego:</th>
                                <td>Assassin's Creed Origins</td>
                            </tr>
                            <tr>
                                <th>Categoria:</th>
                                <td>Aventtura y mundo abierto</td>
                            </tr>
                            <tr>
                                <th>Fecha de estreno:</th>
                                <td>12/12/2000</td>
                            </tr>
                            <tr>
                                <th>Valoración del Producto</th>
                                <td>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                </td>
                            </tr>
                            <tr>
                                <th>Precio:</th>
                                <td>$100.000</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="Need_for_Speed_Payback" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalScrollableTitle">Detalles del Producto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <img height="500"
                             src="https://i11a.3djuegos.com/juegos/13200/need_for_speed_2017__nombre_temporal_/fotos/ficha/need_for_speed_2017__nombre_temporal_-3749984.jpg"
                             alt="">
                    </div>
                    <div class="col-md-6">
                        <table class="table table-borderless">
                            <tr>
                                <th>Nombre del juego:</th>
                                <td>Need for Speed Payback</td>
                            </tr>
                            <tr>
                                <th>Categoria:</th>
                                <td>Carreras</td>
                            </tr>
                            <tr>
                                <th>Fecha de estreno:</th>
                                <td>9/11/2010</td>
                            </tr>
                            <tr>
                                <th>Valoración del Producto</th>
                                <td>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                </td>
                            </tr>
                            <tr>
                                <th>Precio:</th>
                                <td>$100.000</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="Halo_5_Guardians" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalScrollableTitle">Detalles del Producto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <img height="500" src="https://i11d.3djuegos.com/juegos/7205/halo_5/fotos/ficha/halo_5-3220823.jpg"
                             alt="">
                    </div>
                    <div class="col-md-6">
                        <table class="table table-borderless">
                            <tr>
                                <th>Nombre del juego:</th>
                                <td>Halo 5 Guardians</td>
                            </tr>
                            <tr>
                                <th>Categoria:</th>
                                <td>Disparos en primera persona</td>
                            </tr>
                            <tr>
                                <th>Fecha de estreno:</th>
                                <td>7/3/2017</td>
                            </tr>
                            <tr>
                                <th>Valoración del Producto</th>
                                <td>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                </td>
                            </tr>
                            <tr>
                                <th>Precio:</th>
                                <td>$100.000</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="GTA_V" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalScrollableTitle">Detalles del Producto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <img height="500"
                             src="https://pisces.bbystatic.com/image2/BestBuy_US/images/products/7359/7359046_sa.jpg;maxHeight=640;maxWidth=550"
                             alt="">
                    </div>
                    <div class="col-md-6">
                        <table class="table table-borderless">
                            <tr>
                                <th>Nombre del juego:</th>
                                <td>GTA V</td>
                            </tr>
                            <tr>
                                <th>Categoria:</th>
                                <td>Mundo abierto</td>
                            </tr>
                            <tr>
                                <th>Fecha de estreno:</th>
                                <td>7/1/2015</td>
                            </tr>
                            <tr>
                                <th>Valoración del Producto</th>
                                <td>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                </td>
                            </tr>
                            <tr>
                                <th>Precio:</th>
                                <td>$100.000</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="FARCRY_5_DELUXE_EDITION" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalScrollableTitle">Detalles del Producto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <img height="500"
                             src="https://gameplanet-53f8.kxcdn.com/media/catalog/product/cache/4/image/9df78eab33525d08d6e5fb8d27136e95/f/a/far-cry-5-deluxe-one_2.jpg"
                             alt="">
                    </div>
                    <div class="col-md-6">
                        <table class="table table-borderless">
                            <tr>
                                <th>Nombre del juego:</th>
                                <td>Farcry 5 Deluxe Edition</td>
                            </tr>
                            <tr>
                                <th>Categoria:</th>
                                <td>Mundo abierto</td>
                            </tr>
                            <tr>
                                <th>Fecha de estreno:</th>
                                <td>7/12/2018</td>
                            </tr>
                            <tr>
                                <th>Valoración del Producto</th>
                                <td>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                                    <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                                </td>
                            </tr>
                            <tr>
                                <th>Precio:</th>
                                <td>$100.000</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
        </div>
    </div>
</div>

<br>
<center>
    <nav aria-label="1">
        <ul class="pagination justify-content-center">
            <li class="page-item disabled">
                <span class="page-link" style="color: rgb(63, 148, 23)">Anterior</span>
            </li>
            <li class="page-item active" aria-current="page">
                <span class="page-link" style="background-color: rgb(63, 148, 23)">
                    1
                    <span class="sr-only">(current)</span>
                </span>
            </li>
            <li class="page-item"><a class="page-link" style="color: rgb(63, 148, 23)"
                                     href="juegos_Xbox_one_pagina_2.html">2</a></li>
            <li class="page-item"><a class="page-link" style="color: rgb(63, 148, 23)" href="#">3</a></li>
            <li class="page-item"><a class="page-link" style="color: rgb(63, 148, 23)" href="#">4</a></li>
            <li class="page-item"><a class="page-link" style="color: rgb(63, 148, 23)" href="#">5</a></li>
            <li class="page-item">
                <a class="page-link" style="color: rgb(63, 148, 23)" href="juegos_Xbox_one_pagina_2.html">Siguiente</a>
            </li>
        </ul>
    </nav>
</center>

<br>
<hr>
<br>

<h2 class="display-4" align="center"><strong>PRODUCTOS Y SERVICIOS</strong></h2>
<br>
<div class="container-fluid">
    <div align="justify" class="card-group ">
        <div class="card mr-2" style="background-color:rgb(0, 0, 0)">
            <a href="Juegos.html">
                <img height="300" src="https://cdn.computerhoy.com/sites/navi.axelspringer.es/public/styles/480/public/media/image/2019/09/hoy-estrena-uplay-juega-100-juegos-pc-gratis.jpg?itok=WWvKrpud"
                     class="card-img-top">
                <div class="card-body">
                    <center>
                        <h5 style="color:rgb(255, 217, 0)" class="card-title">Juegos</h5>
                        </a>
                        <p class="card-text"></p>
                        <br>
                        <br>
                        <a href="#" class="btn btn-info" data-target="#juegos_pys"
                           data-toggle="modal">Detalles</a>
                    </center>
                </div>
        </div>
        <div class="card mr-2" style="background-color:rgb(0, 0, 0)">
            <a href="#">
                <img height="300" src="https://www.telemundo.com/sites/nbcutelemundo/files/collage-consolas-de-videojuegos.jpg"
                     class="card-img-top">
                <div class="card-body">
                    <center>
                        <h5 style="color:rgb(255, 217, 0)" class="card-title">Productos y accesorios</h5>
                        </a>
                        <p class="card-text"></p>
                        <br>
                        <br>
                        <a href="#" class="btn btn-info" data-target="#consolas_pys"
                           data-toggle="modal">Detalles</a>
                    </center>
                </div>
        </div>

        <div class="card mr-2" style="background-color:rgb(0, 0, 0)">
            <a href="/Cliente/Inicio_Sesion_Cliente.html">
                <img height="300" src="https://previews.123rf.com/images/stillfx/stillfx1204/stillfx120400045/13034808-cara-de-reloj-calendario-y-diario-de-la-p%C3%A1gina.jpg"
                     class="card-img-top">
                <div class="card-body">
                    <center>
                        <h5 style="color:rgb(255, 217, 0)" class="card-title">Reserva una consola</h5>
                        </a>
                        <p class="card-text"></p>
                        <br>
                        <br>
                        <a href="#" class="btn btn-info" data-target="#citas_pys"
                           data-toggle="modal">Detalles</a>
                    </center>
                </div>
        </div>
    </div>    
</div>
<div class="modal fade" id="juegos_pys" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalScrollableTitle">Detalles de Juegos</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <img height="200" src="https://cdn.computerhoy.com/sites/navi.axelspringer.es/public/styles/480/public/media/image/2019/09/hoy-estrena-uplay-juega-100-juegos-pc-gratis.jpg?itok=WWvKrpud" alt="">
                    </div>
                    <div class="col-md-6">
                        <table class="table table-borderless">
                            <tr>
                                <th>Juegos !</th>
                                <td>Disfruta las noticias más recientes de los mejores videojuegos, torneos locales y más aquí!!</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
                <a href="Juegos.html">
                    <button type="button" class="btn btn-primary">Ver juegos</button>
                </a>
            </div>    
        </div>
    </div>
</div>

<div class="modal fade" id="consolas_pys" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalScrollableTitle">Detalles del Producto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <img height="200" src="https://www.telemundo.com/sites/nbcutelemundo/files/collage-consolas-de-videojuegos.jpg" alt="">
                    </div>
                    <div class="col-md-6">
                        <table class="table table-borderless">
                            <tr>
                                <th>Productos y accesorios </th>
                                <td>Aquí puedes mirar los productos y accesorios que tenemos disponibles !!</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
                <button type="button" class="btn btn-primary">Ver Productos</button>
            </div>
        </div>
    </div>
</div>



<div class="modal fade" id="citas_pys" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalScrollableTitle">Detalles del Producto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <img height="200" src="https://previews.123rf.com/images/stillfx/stillfx1204/stillfx120400045/13034808-cara-de-reloj-calendario-y-diario-de-la-p%C3%A1gina.jpg" alt="">
                    </div>
                    <div class="col-md-6">
                        <table class="table table-borderless">
                            <tr>
                                <th>Reserva tu consola</th>
                                <td>En esta seccion podras agendar una cita con tiempo para visitar el local, separar la consola que más te guste y tenga los videojuegos de tu preferencia !!</td>
                            </tr>
                            <tr>
                                <th>Registrate!</th>
                                <td>Para acceder a nuestro contenido es necesario que te registres. :D</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
                <a href="/Cliente/Inicio_Sesion_Cliente.html">
                    <button type="button" class="btn btn-primary">Inicia sesion</button>
                </a>    
            </div>
        </div>
    </div>
</div>

<hr>
<br>

<footer class="page-footer font-small indigo" style="background-color:rgba(180, 180, 180, 0)">
    <div class="container">
        <div class="row">
            <h5 style="color:rgb(255, 230, 0)">¿Preguntas? Llama al ** *** *** ****</h5>
        </div>
        <div class="row">
        </div>
    </div>
    <div class="container text-center text-md-left">
        <div class="row">
            <div class="col-md-3 mx-auto">
                <br>
                <ul class="list-unstyled">
                    <li>
                        <a href="#!" style="color:rgb(255, 230, 0)">Preguntas frecuentes</a>
                        <br>
                        <a href="#!" style="color:rgb(255, 230, 0)">Preferencias de cookies</a>
                    </li>
                </ul>
                <br>
                <div class="dropdown">
                    <button class="btn btn-outline-warning dropdown-toggle" type="button" id="dropdownMenuButton"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fa fa-globe" aria-hidden="true"></i> Idioma
                    </button>
                    <div class="dropdown-menu" style="background-color:rgb(255, 208, 0)" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="#">Español</a>
                        <a class="dropdown-item" href="#">Ingles</a>
                    </div>
                </div>
                <br>
                </ul>
            </div>
            <hr class="clearfix w-100 d-md-none">
            <div class="col-md-3 mx-auto">
                <ul class="list-unstyled">
                    <li>
                        <br>
                        <a href="#!" style="color:rgb(255, 230, 0)">Centro de ayuda</a>
                        <br>
                        <a href="#!" style="color:rgb(255, 230, 0)">Información corporativa</a>
                    </li>
                </ul>
            </div>
            <hr class="clearfix w-100 d-md-none">
            <div class="col-md-3 mx-auto">
                <ul class="list-unstyled">
                    <li>
                        <br>
                        <a href="#!" style="color:rgb(255, 230, 0)">Términos de uso</a>
                    </li>
                </ul>
            </div>
            <hr class="clearfix w-100 d-md-none">
            <div class="col-md-3 mx-auto">
                <ul class="list-unstyled">
                    <li>
                        <br>
                        <a href="#!" style="color:rgb(255, 230, 0)">Privacidad</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</footer>
<br>
</font>

<div class="copyright text-center  font-weight-bold p-2" style="background-color: #343a40">
    <p style="color:rgb(255, 217, 0)">Desarrollado por Kyukeisho Copyright<i class="fa fa-copyright"
                                                                             aria-hidden="true"></i> 2019</p>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"
        integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh"
crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"
        integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ"
crossorigin="anonymous"></script>

</body>

</html>