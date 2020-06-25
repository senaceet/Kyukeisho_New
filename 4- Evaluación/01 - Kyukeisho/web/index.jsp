<%@page contentType="text/html"%> <%-- para acentos --%> 
<%@page pageEncoding="UTF-8"%> <%-- para acentos --%> 
<%@page import="modelo.Persona"%>
<%@page import="modelo.Admin"%>
<!DOCTYPE html>
<html lang="es">

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
                <img width="380" height="70" src="IMG/index.png" class="img-fluid" alt="Responsive image">
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
                    <form class="form-inline my-2 my-lg-0">
                    </form>
                    
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
                                <a class="dropdown-item" href="#" style="color:rgb(255, 217, 0)">Mis reservaciones</a>
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
                        <a href="contactenos.jsp">
                            <button type="button" style="border-color: rgba(133, 133, 133, 0)"
                                    class="btn btn-outline-dark">
                                <h5><strong><i class="fa fa-phone" aria-hidden="true"></i> Contactanos</strong></h5>
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
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<center>
    <div class="col-xl-8" style="background-color: rgba(255, 251, 0, 0)" >
        <div class="bd-example" >
            <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                    <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                </ol>
                <div align="right" class="carousel-inner"  >
                    <div class="carousel-item active" >
                        <iframe  height="600" src="https://www.youtube.com/embed/mIjpiXhrTn4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen class="d-block w-100" alt="..."></iframe>
                        <div class="carousel-caption d-none d-md-block">
                            <p class="h5"><a href="https://www.enelsofa.com/sofa2019/"></a>SOFA</p>
                        </div>
                        <br>
                        <br>
                        <center>
                            <div>                
                                <a href="https://www.enelsofa.com/sofa2019/">
                                    <button type="button" class="btn btn-warning">VER</button>
                                </a></div>
                        </center> 
                    </div>
                    <div class="carousel-item">
                        <img height="600" src="https://image.redbull.com/rbcom/010/2016-12-06/1331833245065_2/0001/0/1500/1000/1/la-lista-de-los-mejores-juegos-de-2016.jpg"
                             class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <p class="h5">Ve los ultimos estrenos en videojuegos</p>
                        </div>  
                        <br>
                        <br>
                        <center>
                            <a href="Juegos.jsp">             
                                <button type="button" class="btn btn-warning">VER</button>
                            </a>
                        </center> 
                    </div>
                    <div class="carousel-item">
                        <img height="600" src="https://o.aolcdn.com/images/dims?quality=85&image_uri=https%3A%2F%2Fo.aolcdn.com%2Fimages%2Fdims%3Fcrop%3D1350%252C819%252C0%252C0%26quality%3D85%26format%3Djpg%26resize%3D1600%252C972%26image_uri%3Dhttps%253A%252F%252Fs.yimg.com%252Fos%252Fcreatr-uploaded-images%252F2019-03%252Fe6af7d20-45d2-11e9-b7d4-8cb4ff4492a4%26client%3Da1acac3e1b3290917d92%26signature%3D34581802504d8324f7c340348d513c1811eee15b&client=amp-blogside-v2&signature=a060172810e83758f1bb6503dc34013f6f1a6c91"
                             class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <p class="h5">Ve nuestros mas recientes productos.</p>
                        </div>
                        <br>
                        <br>
                        <center>
                            <a href="Productos.jsp">             
                                <button type="button" class="btn btn-warning">VER</button>
                            </a>
                        </center> 
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Anterior</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Siguiente</span>
                </a>
            </div>
        </div>
    </div>
</center>
<hr>
<br>
<br>

<h3 class="display-4" align="center"><strong>PRODUCTOS Y SERVICIOS</strong></h3>
<br>
<div class="container-fluid">
    <div align="justify" class="card-group ">
        <div class="card mr-2" style="background-color:rgb(0, 0, 0)">
            <a href="Juegos.html">
                <img height="300" src="IMG/index/juegos.jpg"
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
                <img height="300" src="IMG/index/productos.jpg"
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
                <img height="300" src="IMG/index/reservaciones.jpg"
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
                                <td>Disfruta las noticias mas recientes de los mejores videojuegos, torneos locales y mas aqui­!!</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
                <a href="Juegos.jsp">
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
                                <td>Aqui puedes mirar los productos y accesorios que tenemos disponibles !!</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
                <a href="Productos.jsp">
                <button type="button" class="btn btn-primary">Ver Productos</button>
                </a>
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
                                <td>En esta seccion podras agendar una cita con tiempo para visitar el local, separar la consola que mÃ¡s te guste y tenga los videojuegos de tu preferencia !!</td>
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
                <a href="Cliente/Reservacion.jsp">
                    <button type="button" class="btn btn-primary">Reservar</button>
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
</font>

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