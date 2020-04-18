<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html"%> <%-- para acentos --%> 
<%@page pageEncoding="UTF-8"%> <%-- para acentos --%> 
<%@page import="modelo.Productos_vendidos"%>
<%@page import="modelo.Catalogo_productos_DAO"%>
<html lang="en">

<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Productos</title>
        <link rel="icon" type="image/png" href="IMG/GF.png">

        <link rel="stylesheet" href="css/styles.css" media="all">

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet">


        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

        <script type="text/javascript">
            a = 0;
            a1 = 0;
            $(document).ready(function () {
                // Activate tooltip
                $('[data-toggle="tooltip"]').tooltip();
                a = '${a}';
                a1 = '${a1}';

                if (a == 1) {
                    $("#editcate").modal('show');

                } else {

                }
                if (a1 == 1) {
                    $("#elimicate").modal('show');

                } else {

                }

                // Select/Deselect checkboxes
                var checkbox = $('table tbody input[type="checkbox"]');
                $("#selectAll").click(function () {
                    if (this.checked) {
                        checkbox.each(function () {
                            this.checked = true;
                        });
                    } else {
                        checkbox.each(function () {
                            this.checked = false;
                        });
                    }
                });
                checkbox.click(function () {
                    if (!this.checked) {
                        $("#selectAll").prop("checked", false);
                    }
                });
            });
        </script>

        <style>
            hr {
                background-color: rgb(255, 255, 255);
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

    <body style="background-color: rgb(255, 255, 255)">
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

           <nav class="navbar navbar-expand-lg navbar-light " style="background-color: #fffb00">
                <div class="col-xl-1 text-center" style="background-color: rgb(255, 251, 0)">
                    <button class="navbar-toggler" style="background-color: rgb(255, 251, 0)" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent2" aria-controls="navbarSupportedContent" aria-expanded="false"
                            aria-label="Toggle navigation">
                        MENU<span class="navbar-toggler-icon"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse " id="navbarSupportedContent2">

                    <div class="col-xl-3 text-left" style="background-color: rgb(255, 251, 0)">
                        <a href="Juegos.jsp">
                            <button type="button" style="border-color: rgba(133, 133, 133, 0)" class="btn btn-outline-dark">
                                <h5><strong><i class="fa fa-gamepad" aria-hidden="true"></i> Juegos</strong></h5>
                            </button>
                        </a>
                    </div>
                    <div class="col-xl-3 text-left" style="background-color: rgb(255, 251, 0)">
                        <a href="Reservacion_sin_inicar_sesion.html">
                            <button type="button" style="border-color: rgba(133, 133, 133, 0)" class="btn btn-outline-dark">
                                <h5><strong><i class="fa fa-calendar-plus-o" aria-hidden="true"></i> Reservaciones</strong></h5>
                            </button>
                        </a>
                    </div>

                    <div class="col-xl-3 text-left" style="background-color: rgb(255, 251, 0)">
                        <a href="Conocenos.html">
                            <button type="button" style="border-color: rgba(133, 133, 133, 0)" class="btn btn-outline-dark">
                                <h5><strong><i class="fa fa-users" aria-hidden="true"></i> Conocenos</strong></h5>
                            </button>
                        </a>
                    </div>
                    <div class="col-xl-2 text-left" style="background-color: rgb(255, 251, 0)">
                        <a href="contactenos.html">
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
    </div>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<BR>
<!-- CATALOGO DE PRODUCTOS-->
<br>
<h1 align="center" class="display-3">CATALOGO DE PRODUCTOS</h1>
<table>
<div class="card-group">
    
                                                                    <%
                                            Catalogo_productos_DAO dao = new Catalogo_productos_DAO();
                                            List<Productos_vendidos> list = dao.listar();
                                            Iterator<Productos_vendidos> iter = list.iterator();
                                            Productos_vendidos ma = null;
                                            int salto=0;
                                            while (iter.hasNext()) {
                                                
                                                ma = iter.next();
                                        %>
 <th>
   <h5 style="color:rgb(255, 255, 255)">222</h5>
 </th>
                                        <th>
<div class="card-xl" style="background-color: rgb(255,255,255)">
<img width="400" height="400" src="IMG/incio admin/Crud productos/<%= ma.getdir_img_producto()%>" >  
            <div class="card-body">
                <center>
                    <h6 style="color:rgb(255, 145, 0)" class="card-title"><%= ma.getnombre_producto()%></h6>
                    <br>

                    <a href="controlador_catalogo_productos?accion=editar&id_producto=<%= ma.getid_producto()%>" class="btn btn-success edit">Detalles</a>  
                                                        
                    <div class="btn btn-info">$<%= ma.getprecio_unitario_producto()%></div>
                </center>
            </div>
  </div>
 </th>  
 <th>
     <h5 <h5 style="color:rgb(255, 255, 255)">222</h5>
 </th>
                                         <%
                                          salto++;
                                          if(salto==4){
                                              
                                              
                                          
                                              %>
                                              <tr>
                                                  <td><br></td>
                                              </tr>
                                              <tr>
                                                
                                                  <%
                                                      salto=0;
                                                      }
                                            }

                                        %>
                                        </div>
</table>      


            
<!-- detalle de juegos de xbox -->

<div class="modal fade" id="editcate" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
                                                <%
                                        Catalogo_productos_DAO dao2 = new Catalogo_productos_DAO();
                                        Productos_vendidos ma2 = new Productos_vendidos();
                                        if (request.getAttribute("id_producto") != null) {
                                            int id_producto = Integer.parseInt((String) request.getAttribute("id_producto"));
                                            ma2 = (Productos_vendidos) dao2.list(id_producto);
                                        }
                                    %>
                                    <form action="controlador_catalogo_productos">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalScrollableTitle">Detalles del Producto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <img width="200" height="450" src="IMG/incio admin/Crud productos/<%= ma2.getdir_img_producto()%>" class="card-img-top"> 
                    </div>
                    <div class="col-md-6">
                        <table class="table table-borderless">
                            
                            <tr>
                                <th>Nombre del producto</th>
                            </tr>
                            <tr>
                                <td><%= ma2.getnombre_producto()%></td>
                            </tr>
                             <tr>
                                <th>Especificaciones del producto</th>
                            </tr>
                            <tr>
                                <td><%= ma2.getespecificaciones()%></td>
                            </tr>
                            <tr>
                                <th>Categoria</th>
                            </tr>
                            <tr>
                                <td><%= ma2.getnombre_tipo_producto()%> </td>
                            </tr>
                            <tr>
                                <th>Precio del producto</th>
                            </tr>
                            <tr>
                                <td>$ <%= ma2.getprecio_unitario_producto()%></td>
                            </tr>
                            <tr>
                                <th>Productos disponibles</th>
                            </tr>
                            <tr>
                                <td><%= ma2.getcantidad_producto()%></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal">VOLVER</button>
            </div>
                                    </form>
        </div>
    </div>
</div>

<br>
<center>
    <nav aria-label="1">
        <ul class="pagination justify-content-center">
            <li class="page-item disabled">
                <span class="page-link" style="color: rgb(255, 145, 0)">Anterior</span>
            </li>
            <li class="page-item active" aria-current="page">
                <span class="page-link" style="background-color: rgb(255, 145, 0)">
                    1
                    <span class="sr-only">(current)</span>
                </span>
            </li>
            <li class="page-item">
                <a class="page-link" style="color: rgb(255, 145, 0)" href="juegos_Xbox_one_pagina_2.html">2</a>
            </li>
            <li class="page-item"><a class="page-link" style="color: rgb(255, 145, 0)" href="#">3</a></li>
            <li class="page-item"><a class="page-link" style="color: rgb(255, 145, 0)" href="#">4</a></li>
            <li class="page-item"><a class="page-link" style="color: rgb(255, 145, 0)" href="#">5</a></li>
            <li class="page-item">
                <a class="page-link" style="color: rgb(255, 145, 0)" href="juegos_Xbox_one_pagina_2.html">Siguiente</a>
            </li>
        </ul>
    </nav>
</center>

<br>
<br>

<h2 class="display-4" align="center"><strong>PRODUCTOS Y SERVICIOS</strong></h2>
<br>
<div class="container-fluid">
    <div align="justify" class="card-group ">
        <div class="card mr-2" border="0"style="background-color:rgb(255, 255, 255)">
            <a href="Juegos.jsp">
                <img height="300" src="https://cdn.computerhoy.com/sites/navi.axelspringer.es/public/styles/480/public/media/image/2019/09/hoy-estrena-uplay-juega-100-juegos-pc-gratis.jpg?itok=WWvKrpud"
                     class="card-img-top">
                <div class="card-body">
                    <center>
                        <h5 style="color:rgb(255, 145, 0)" class="card-title">Juegos</h5>
                        </a>
                        <p class="card-text"></p>
                        <br>
                        <br>
                        <a href="#" class="btn btn-info" data-target="#juegos_pys"
                           data-toggle="modal">Detalles</a>
                    </center>
                </div>
        </div>


        <div class="card mr-2" style="background-color:rgb(255, 255, 255)">
            <a href="/Cliente/Inicio_Sesion_Cliente.html">
                <img height="300" src="https://previews.123rf.com/images/stillfx/stillfx1204/stillfx120400045/13034808-cara-de-reloj-calendario-y-diario-de-la-p%C3%A1gina.jpg"
                     class="card-img-top">
                <div class="card-body">
                    <center>
                        <h5 style="color:rgb(255, 145, 0)" class="card-title">Reserva una consola</h5>
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
                                <td>Observa los juegos que tenemos disponibles en nnuestro almacen.</td>
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
                                <td>Para acceder a nuestro contenido es necesario que te registres.</td>
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
            <h5 style="color:rgb(255, 145, 0)">¿Preguntas? Llama al ** *** *** ****</h5>
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
                        <a href="#!" style="color:rgb(255, 145, 0)">Preguntas frecuentes</a>
                        <br>
                        <a href="#!" style="color:rgb(255, 145, 0)">Preferencias de cookies</a>
                    </li>
                </ul>
                <br>
                <div class="dropdown">
                    <button class="btn btn-warning dropdown-toggle" type="button" id="dropdownMenuButton"
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
                        <a href="#!" style="color:rgb(255, 145, 0)">Centro de ayuda</a>
                        <br>
                        <a href="#!" style="color:rgb(255, 145, 0)">Información corporativa</a>
                    </li>
                </ul>
            </div>
            <hr class="clearfix w-100 d-md-none">
            <div class="col-md-3 mx-auto">
                <ul class="list-unstyled">
                    <li>
                        <br>
                        <a href="#!" style="color:rgb(255, 145, 0)">Terminos de uso</a>
                    </li>
                </ul>
            </div>
            <hr class="clearfix w-100 d-md-none">
            <div class="col-md-3 mx-auto">
                <ul class="list-unstyled">
                    <li>
                        <br>
                        <a href="#!" style="color:rgb(255, 145, 0)">Privacidad</a>
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