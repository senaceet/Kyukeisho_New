<%@page contentType="text/html"%> <%-- para acentos --%> 
<%@page pageEncoding="UTF-8"%> <%-- para acentos --%> 
<%@page import="modelo.Persona"%>
<%@page import="modelo.Admin"%>
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
                background-color: rgba(255, 251, 0, 0.438);
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
            .carousel .item h4, .carousel .item p, .carousel .item ul {
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
            .carousel-indicators li, .carousel-indicators li.active {
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
            <nav class="navbar navbar-expand-lg navbar-light " style="background-color: #000">
                <a href="index.jsp">
                    <img width="380" height="70" src="https://fotos.subefotos.com/105fb41d255ed1489a748b723f448441o.png" class="img-fluid" alt="Responsive image">
                </a>
                <div class="col-xl-1 text-center" >
                    <button class="navbar-toggler" style="background-color: rgb(255, 251, 0)" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                            aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                    </ul>
                     
                        <%
        Persona p = (Persona) session.getAttribute("persona");
        Admin a = (Admin) session.getAttribute("administrador");
        if (p == null && a == null) {
                        %>
                                <ul class="navbar-nav ">
                        <li class="nav-item dropdown mr-2">
                            <a class="nav-link dropdown-toggle navbar-DARK" href="#" id="navbarDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color:rgb(255, 217, 0)">
                                <i class="fa fa-user" aria-hidden="true"></i>
                                Mi cuenta:
                            </a>
                            <div class="dropdown-menu mr-sm-2 " aria-labelledby="navbarDropdown" style="background-color: #000">
                                <a class="dropdown-item" href="Cliente/Inicio_Sesion_Cliente.jsp"
                                   style="color:rgb(255, 217, 0)">Cliente</a>
                                <a class="dropdown-item" href="Administrador/Inicio_Sesion_Administrador.jsp"
                                   style="color:rgb(255, 217, 0)">Administrador</a>
                            </div>
                        </li>
                    </ul>
                                                </div>
            </nav>
            <nav class="navbar navbar-expand-lg navbar-light " style="background-color: #fffb00">
                <div class="col-xl-1 text-center" style="background-color: rgb(255, 251, 0)">
                    <button class="navbar-toggler" style="background-color: rgb(255, 251, 0)" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent2" aria-controls="navbarSupportedContent" aria-expanded="false"
                            aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse " id="navbarSupportedContent2">
                    <div class="col-xl-2 text-left" style="background-color: rgb(255, 251, 0)">
                        <button class="btn text-right btn-lg dropdown-toggle" style="border-color: rgba(133, 133, 133, 0)" type="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-bars" aria-hidden="true"></i><strong> Categorias</strong>
                        </button>
                        <div class="dropdown-menu btn-lg " aria-labelledby="dropdownMenuButton"
                             style="width:14rem; background-color: rgb(255, 251, 0)">
                            <a href="Juegos.jsp" class="dropdown-item" style="color: rgb(0, 0, 0)">Juegos para consolas</a>
                            <a class="dropdown-item" style="color: rgb(0, 0, 0)" href="Productos.jsp">Productos y accesorios</a>
                        </div>
                    </div>
                    <div class="col-xl-3 text-left" style="background-color: rgb(255, 251, 0)">
                        <a href="Reservacion_sin_inicar_sesion.jsp">
                            <button type="button" style="border-color: rgba(133, 133, 133, 0)" class="btn btn-outline-dark">
                                <h5><strong><i class="fa fa-gamepad" aria-hidden="true"></i> Reservaciones</strong></h5>
                            </button>
                        </a>
                    </div>
    <%
        }else if(p!= null && a == null){
 %>

<ul class="navbar-nav ">
                        <li class="nav-item dropdown mr-2">
                            <a class="nav-link dropdown-toggle navbar-DARK" href="#" id="navbarDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color:rgb(255, 217, 0)">
                               ${correo} <%-- Cliente --%> 
                            </a>
                            <div class="dropdown-menu mr-sm-2 " aria-labelledby="navbarDropdown" style="width:15rem; background-color: #343a40">
                                <a class="dropdown-item" href="Cliente/Cliente.jsp" style="color:rgb(255, 217, 0)">Inicio</a>
                                <a class="dropdown-item" href="Cliente/Perfil_Cliente.jsp" style="color:rgb(255, 217, 0)">Perfil</a>
                                <hr>
                                <form action="Controlador" method="post">
                                    <div class="form-group">
                                        <div align="center">
                                            <input style="width: 14rem;" class="btn btn-warning btn-block" type="submit" name="accion" value="Cerrar Sesion"> 
                                        </div>               
                                    </div>
                                </form>
                            </div>
                        </li>
                    </ul>
           </div>
            </nav>
            <nav class="navbar navbar-expand-lg navbar-light " style="background-color: #fffb00">
                <div class="col-xl-1 text-center" style="background-color: rgb(255, 251, 0)">
                    <button class="navbar-toggler" style="background-color: rgb(255, 251, 0)" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent2" aria-controls="navbarSupportedContent" aria-expanded="false"
                            aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse " id="navbarSupportedContent2">
                    <div class="col-xl-2 text-left" style="background-color: rgb(255, 251, 0)">
                        <button class="btn text-right btn-lg dropdown-toggle" style="border-color: rgba(133, 133, 133, 0)" type="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-bars" aria-hidden="true"></i><strong> Categorias</strong>
                        </button>
                        <div class="dropdown-menu btn-lg " aria-labelledby="dropdownMenuButton"
                             style="width:14rem; background-color: rgb(255, 251, 0)">
                            <a href="Juegos.jsp" class="dropdown-item" style="color: rgb(0, 0, 0)">Juegos para consolas</a>
                            <a class="dropdown-item" style="color: rgb(0, 0, 0)" href="Productos.jsp">Productos y accesorios</a>
                        </div>
                    </div>
                    <div class="col-xl-3 text-left" style="background-color: rgb(255, 251, 0)">
                        <a href="Cliente/Reservacion.jsp">
                            <button type="button" style="border-color: rgba(133, 133, 133, 0)" class="btn btn-outline-dark">
                                <h5><strong><i class="fa fa-gamepad" aria-hidden="true"></i> Reservaciones</strong></h5>
                            </button>
                        </a>
                    </div>
    <%
        }else if(a!= null && p == null){
 %>

<ul class="navbar-nav ">
                        <li class="nav-item dropdown mr-2">
                            <a class="nav-link dropdown-toggle navbar-DARK" href="#" id="navbarDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color:rgb(255, 217, 0)">
                                ${correo} <%-- Admin --%> 
                            </a>
                            <div class="dropdown-menu mr-sm-2 " aria-labelledby="navbarDropdown" style="width:15rem; background-color: #343a40">
                                <a class="dropdown-item" href="Administrador/Inicio_Administrador.jsp" style="color:rgb(255, 217, 0)">Inicio de administración</a>
                                <hr>
                                <form action="ControladorAdmin" method="post">
                                    <div class="form-group">
                                        <div align="center">
                                            <input style="width: 10rem;" class="btn btn-dark bnt-outline btn-block" type="submit" name="accion" value="Cerrar Sesion"> 
                                        </div>               
                                    </div>
                                </form>
                            </div>
                        </li>
                    </ul>
           </div>
            </nav>
            <nav class="navbar navbar-expand-lg navbar-light " style="background-color: #fffb00">
                <div class="col-xl-1 text-center" style="background-color: rgb(255, 251, 0)">
                    <button class="navbar-toggler" style="background-color: rgb(255, 251, 0)" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent2" aria-controls="navbarSupportedContent" aria-expanded="false"
                            aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse " id="navbarSupportedContent2">
                    <div class="col-xl-2 text-left" style="background-color: rgb(255, 251, 0)">
                        <button class="btn text-right btn-lg dropdown-toggle" style="border-color: rgba(133, 133, 133, 0)" type="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-bars" aria-hidden="true"></i><strong> Categorias</strong>
                        </button>
                        <div class="dropdown-menu btn-lg " aria-labelledby="dropdownMenuButton"
                             style="width:14rem; background-color: rgb(255, 251, 0)">
                            <a href="Juegos.jsp" class="dropdown-item" style="color: rgb(0, 0, 0)">Juegos para consolas</a>
                            <a class="dropdown-item" style="color: rgb(0, 0, 0)" href="Productos.jsp">Productos y accesorios</a>
                        </div>
                    </div>
                    <div class="col-xl-3 text-left" style="background-color: rgb(255, 251, 0)">
                        <a href="Reservacion_sin_inicar_sesion.jsp">
                            <button type="button" style="border-color: rgba(133, 133, 133, 0)" class="btn btn-outline-dark">
                                <h5><strong><i class="fa fa-gamepad" aria-hidden="true"></i> Reservaciones</strong></h5>
                            </button>
                        </a>
                    </div>
    <%
        }
 %>

                    <div class="col-xl-3 text-left" style="background-color: rgb(255, 251, 0)">
                        <a href="Conocenos.jsp">
                            <button type="button" style="border-color: rgba(133, 133, 133, 0)" class="btn btn-outline-dark">
                                <h5><strong><i class="fa fa-users" aria-hidden="true"></i> Conocenos</strong></h5>
                            </button>
                        </a>
                    </div>
                    <div class="col-xl-2 text-left" style="background-color: rgb(255, 251, 0)">
                        <a href="https://kyukeisho.blogspot.com/">
                            <button type="button" style="border-color: rgba(133, 133, 133, 0)"
                                    class="btn btn-outline-dark">
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
<br>

<h1 class="display1" align="center">CONTACTANOS</h1> 
<hr>
<div class="container-fluid">
    <div class="row">
        <div class="col-xl-6">
            <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img height="300" width="200" src="https://www.alfabetajuega.com/wp-content/uploads/2018/10/111653.alfabetajuega-bares-recreativos.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img height="300" width="200" src="https://i.blogs.es/60157c/gaming/450_1000.jpeg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img height="300" width="200" src="https://fotos02.lne.es/mmp/2013/11/26/318x200/sony.jpg" class="d-block w-100" alt="...">
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6">
            <h4>Llamenos a la linea: <br> 01 8000 2548 5147</h4>
            <hr>
            <tr>
                <th><h3>Email:</h3></th>
                <td><h4>kyukeisho@gmail.com</h4></td>
            </tr>
            <hr>
            <h3>Siguenos en:</h3>
            <hr>
            <div class="row">
                <div class="col-sm-2" align="center">
                    <a href="https://es-la.facebook.com/"><img height="70" width="70" src="https://images.vexels.com/media/users/3/137253/isolated/preview/90dd9f12fdd1eefb8c8976903944c026-icono-de-facebook-logo-by-vexels.png">
                        <h5> Facebook</h5></a>
                </div>
                <div class="col-sm-2" align="center">
                    <a href="https://www.instagram.com/"><img height="70" width="70" src="https://images.vexels.com/media/users/3/137380/isolated/preview/1b2ca367caa7eff8b45c09ec09b44c16-icono-de-instagram-logo-by-vexels.png">
                        <h5> Intagram</h5></a>
                </div>
                <div class="col-sm-2" align="center">
                    <a href="https://www.youtube.com/"><img height="70" width="70" src="https://images.vexels.com/media/users/3/137425/isolated/preview/f2ea1ded4d037633f687ee389a571086-icono-de-youtube-logo-by-vexels.png">
                        <h5> Youtube</h5></a>
                </div>
            </div>
        </div>
    </div>
</div>

<hr style="background-color: green">
<br>
<br>
</font>
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
                        <a href="#!"style="color:rgb(255, 230, 0)">Terminos de uso</a>
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

<div class="copyright text-center  font-weight-bold p-2" style="background-color: #000">
    <p style="font-family: Times New Roman; color:rgb(255, 217, 0)">Desarrollado por Kyukeisho Copyright<i class="fa fa-copyright"
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