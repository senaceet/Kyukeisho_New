<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html"%> <%-- para acentos --%> 
<%@page pageEncoding="UTF-8"%> <%-- para acentos --%> 
<%@page import="modelo.Juegos"%>
<%@page import="modelo.catalogo_juegos_DAO"%>
<%@page import="modelo.catalogo_juegos_nuevos_xbox_one_DAO"%>
<%@page import="modelo.catalogo_juegos_nuevos_PS4_DAO"%>
<%@page import="modelo.catalogo_juegos_nuevos_PC_DAO"%>
<%@page import="modelo.Persona"%>
<%@page import="modelo.Admin"%>
<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Juegos</title>
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
                <a href="index.jsp">
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

                        <%
        Persona p = (Persona) session.getAttribute("persona");
        Admin a = (Admin) session.getAttribute("administrador");
        if (p == null && a == null) {
                        %>
<p>

  <button class="btn btn-warning" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
    <i class="fa fa-user" aria-hidden="true"></i> Mi cuenta
  </button>
</p>
<div class="collapse" id="collapseExample">
  <div class="card card-body" style="background-color: #000">
                                <a class="dropdown-item" href="Cliente/Inicio_Sesion_Cliente.jsp"
                                   style="color:rgb(255, 217, 0)">Cliente</a>
                                <a class="dropdown-item" href="Administrador/Inicio_Sesion_Administrador.jsp"
                                   style="color:rgb(255, 217, 0)">Administrador</a>
  </div>
</div>
            </div>
            </nav>
            <nav class="navbar navbar-expand-lg navbar-light " style="background-color: rgb(77, 204, 19)">
                <div class="col-xl-1 text-center" style="background-color: rgb(77, 204, 19)">
                    <button class="navbar-toggler" style="background-color: rgb(77, 204, 19)" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent2" aria-controls="navbarSupportedContent" aria-expanded="false"
                            aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                    </button>
                </div>
                    <div class="col-xl-3 text-left" style="background-color: rgb(77, 204, 19)">
                        <a href="Productos.jsp">
                            <button type="button" style="border-color: rgba(133, 133, 133, 0)" class="btn btn-outline-dark">
                                <h5><strong><i class="fa fa-shopping-basket" aria-hidden="true"></i> Productos</strong></h5>
                            </button>
                        </a>
                    </div>
                    <div class="col-xl-3 text-left" style="background-color: rgb(77, 204, 19)">
                        <a href="Reservacion_sin_inicar_sesion.jsp">
                            <button type="button" style="border-color: rgba(133, 133, 133, 0)" class="btn btn-outline-dark">
                                <h5><strong><i class="fa fa-gamepad" aria-hidden="true"></i> Reservaciones</strong></h5>
                            </button>
                        </a>
                    </div>
    <%
        }else if(p!= null && a == null){
 %>
  <button class="btn btn-warning" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
    ${correo}
  </button>
</p>
<div class="collapse" id="collapseExample">
  <div class="card card-body" style="background-color: #000">
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
</div>

           </div>
            </nav>
            <nav class="navbar navbar-expand-lg navbar-light " style="background-color: rgb(77, 204, 19)">
                <div class="col-xl-1 text-center" style="background-color: rgb(77, 204, 19)">
                    <button class="navbar-toggler" style="background-color: rgb(77, 204, 19)" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent2" aria-controls="navbarSupportedContent" aria-expanded="false"
                            aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                    </button>
                </div>
                    <div class="col-xl-3 text-left" style="background-color: rgb(77, 204, 19)">
                        <a href="Productos.jsp">
                            <button type="button" style="border-color: rgba(133, 133, 133, 0)" class="btn btn-outline-dark">
                                <h5><strong><i class="fa fa-shopping-basket" aria-hidden="true"></i> Productos</strong></h5>
                            </button>
                        </a>
                    </div>
                    <div class="col-xl-3 text-left" style="background-color: rgb(77, 204, 19)">
                        <a href="Cliente/Reservacion.jsp">
                            <button type="button" style="border-color: rgba(133, 133, 133, 0)" class="btn btn-outline-dark">
                                <h5><strong><i class="fa fa-gamepad" aria-hidden="true"></i> Reservaciones</strong></h5>
                            </button>
                        </a>
                    </div>
    <%
        }else if(a!= null && p == null){
 %>
   <button class="btn btn-warning" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
    ${correo}
  </button>
</p>
<div class="collapse" id="collapseExample">
  <div class="card card-body" style="background-color: #000">
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
</div>

           </div>
            </nav>
            <nav class="navbar navbar-expand-lg navbar-light " style="background-color: rgb(77, 204, 19)">
                <div class="col-xl-1 text-center" style="background-color: rgb(77, 204, 19)">
                    <button class="navbar-toggler" style="background-color: rgb(77, 204, 19)" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent2" aria-controls="navbarSupportedContent" aria-expanded="false"
                            aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                    </button>
                </div>
                    <div class="col-xl-3 text-left" style="background-color: rgb(77, 204, 19)">
                        <a href="Productos.jsp">
                            <button type="button" style="border-color: rgba(133, 133, 133, 0)" class="btn btn-outline-dark">
                                <h5><strong><i class="fa fa-shopping-basket" aria-hidden="true"></i> Productos</strong></h5>
                            </button>
                        </a>
                    </div>
                    <div class="col-xl-3 text-left" style="background-color: rgb(77, 204, 19)">
                        <a href="Reservacion_sin_inicar_sesion.jsp">
                            <button type="button" style="border-color: rgba(133, 133, 133, 0)" class="btn btn-outline-dark">
                                <h5><strong><i class="fa fa-gamepad" aria-hidden="true"></i> Reservaciones</strong></h5>
                            </button>
                        </a>
                    </div>
    <%
        }
 %>

 
                    <div class="col-xl-3 text-left" style="background-color: rgb(77, 204, 19)">
                        <a href="Conocenos.jsp">
                            <button type="button" style="border-color: rgba(133, 133, 133, 0)" class="btn btn-outline-dark">
                                <h5><strong><i class="fa fa-users" aria-hidden="true"></i> Conocenos</strong></h5>
                            </button>
                        </a>
                    </div>
                    <div class="col-xl-2 text-left" style="background-color: rgb(77, 204, 19)">
                        <a href="contactenos.jsp">
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
<br>
<br>
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
                                <h1 style="color: rgb(0, 0, 0)">XBOX ONE</h1>
                            </div>
                        </div>
                        <div class="row">
                            <!-- JUEGOS DE LA SEMANA XBOX ONE -->
                                        <%
                                            catalogo_juegos_nuevos_xbox_one_DAO dao5 = new catalogo_juegos_nuevos_xbox_one_DAO();
                                            List<Juegos> list5 = dao5.listar();
                                            Iterator<Juegos> iter5 = list5.iterator();
                                            Juegos ma5 = null;
                                            while (iter5.hasNext()) {
                                                
                                                ma5 = iter5.next();
                                        %>
                            
                            <div class="col-sm-3">
                                <div class="thumb-wrapper">
                                    <span class="wish-icon"></span>
                                    <div class="img-box" style="border-color:rgba(255, 255, 255, 0)">
                                        <img src="IMG/incio admin/Crud juegos/<%= ma5.getdir_img_juego()%>"
                                             class="img-responsive img-fluid" alt="">
                                    </div>
                                    <div class="thumb-content">
                                        <h5 style="color:rgb(255, 217, 0)" class="card-title"><h6 style="color:rgb(255, 217, 0)" class="card-title"><%= ma5.getnombre_juego()%></h6></h5>
                                        <br>
                                        <a href="controlador_catalogo_juegos?accion=editar&codigo_juego=<%= ma5.getcodigo_juego()%>" class="btn btn-success edit">Detalles</a>  
                                                        
                                        <div class="btn btn-info">$<%= ma5.getprecio_juego()%></div>
                                    </div>
                                </div>
                            </div>
                        <%
                            }
                        %>
                        </div>
                    </div>
                        
                    <div class="item carousel-item" style="background-color: rgba(0, 58, 255, 0.267)">
                        <div class="row">
                            <div class="col-sm-12" style="background-color: rgb(0, 58, 255)">
                                <h1 style="color: rgb(0, 0, 0)">PS4</h1>
                            </div>
                        </div>
                        
                        
                        <div class="row">
                            <!-- JUEGOS DE LA SEMANA XBOX ONE -->
                                                                                                <%
                                            catalogo_juegos_nuevos_PS4_DAO dao6 = new catalogo_juegos_nuevos_PS4_DAO();
                                            List<Juegos> list6 = dao6.listar();
                                            Iterator<Juegos> iter6 = list6.iterator();
                                            Juegos ma6 = null;
                                            while (iter6.hasNext()) {
                                                
                                                ma6 = iter6.next();
                                        %>
                            
                            <div class="col-sm-3">
                                <div class="thumb-wrapper">
                                    <span class="wish-icon"></span>
                                    <div class="img-box" style="border-color:rgba(255, 255, 255, 0)">
                                        <img src="IMG/incio admin/Crud juegos/<%= ma6.getdir_img_juego()%>"
                                             class="img-responsive img-fluid" alt="">
                                    </div>
                                    <div class="thumb-content">
                                        <h5 style="color:rgb(255, 217, 0)" class="card-title"><h6 style="color:rgb(255, 217, 0)" class="card-title"><%= ma6.getnombre_juego()%></h6></h5>
                                        <br>
                                        <a href="controlador_catalogo_juegos?accion=editar&codigo_juego=<%= ma6.getcodigo_juego()%>" class="btn btn-success edit">Detalles</a>  
                                                        
                                        <div class="btn btn-info">$<%= ma6.getprecio_juego()%></div>
                                    </div>
                                </div>
                            </div>
                        <%
                            }
                        %>
                        </div>
                    </div>
                        
                        
                    <div class="item carousel-item" style="background-color: rgba(92, 92, 92, 0.267)">
                        <div class="row">
                            <div class="col-sm-12" style="background-color: rgb(92, 92, 92)">
                                <h1 style="color: rgb(0, 0, 0)">PC</h1>
                            </div>
                        </div>
                        
                        
                        
                         <div class="row">
                            <!-- JUEGOS DE LA SEMANA XBOX ONE -->
                                                                                                <%
                                            catalogo_juegos_nuevos_PC_DAO dao7 = new catalogo_juegos_nuevos_PC_DAO();
                                            List<Juegos> list7 = dao7.listar();
                                            Iterator<Juegos> iter7 = list7.iterator();
                                            Juegos ma7 = null;
                                            while (iter7.hasNext()) {
                                                
                                                ma7 = iter7.next();
                                        %>
                            
                            <div class="col-sm-3">
                                <div class="thumb-wrapper">
                                    <span class="wish-icon"></span>
                                    <div class="img-box" style="border-color:rgba(255, 255, 255, 0)">
                                        <img src="IMG/incio admin/Crud juegos/<%= ma7.getdir_img_juego()%>"
                                             class="img-responsive img-fluid" alt="">
                                    </div>
                                    <div class="thumb-content">
                                        <h5 style="color:rgb(255, 217, 0)" class="card-title"><h6 style="color:rgb(255, 217, 0)" class="card-title"><%= ma7.getnombre_juego()%></h6></h5>
                                        <br>
                                        <a href="controlador_catalogo_juegos?accion=editar&codigo_juego=<%= ma7.getcodigo_juego()%>" class="btn btn-success edit">Detalles</a>  
                                                        
                                        <div class="btn btn-info">$<%= ma7.getprecio_juego()%></div>
                                    </div>
                                </div>
                            </div>
                        <%
                            }
                        %>
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



<!-- CATALOGO DE JUEGOS-->
<br>
<h1 align="center" class="display-3">CATALOGO DE JUEGOS</h1>
<br>
<br>
<table>
<div class="card-group">
    
                                                                    <%
                                            catalogo_juegos_DAO dao = new catalogo_juegos_DAO();
                                            List<Juegos> list = dao.listar();
                                            Iterator<Juegos> iter = list.iterator();
                                            Juegos ma = null;
                                            int salto=0;
                                            while (iter.hasNext()) {
                                                
                                                ma = iter.next();
                                        %>
<th>
<div class="card-xl" style="background-color: rgb(55,55,55)">
<img width="380" height="450" src="IMG/incio admin/Crud juegos/<%= ma.getdir_img_juego()%>" >  
            <div class="card-body">
                <center>
                    <h6 style="color:rgb(255, 217, 0)" class="card-title"><%= ma.getnombre_juego()%></h6>
                    <br>

                    <a href="controlador_catalogo_juegos?accion=editar&codigo_juego=<%= ma.getcodigo_juego()%>" class="btn btn-success edit">Detalles</a>  
                                                        
                    <div class="btn btn-info">$<%= ma.getprecio_juego()%></div>
                </center>
            </div>
  </div>
 </th>       
                                         <%
                                          salto++;
                                          if(salto==5){
                                              
                                              
                                          
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
                                        catalogo_juegos_DAO dao2 = new catalogo_juegos_DAO();
                                        Juegos ma2 = new Juegos();
                                        if (request.getAttribute("codigo_juego") != null) {
                                            int codigo_juego = Integer.parseInt((String) request.getAttribute("codigo_juego"));
                                            ma2 = (Juegos) dao2.list(codigo_juego);
                                        }
                                    %>
                                    <form action="controlador_juegos">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalScrollableTitle">Detalles del Producto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <img width="200" height="450" src="IMG/incio admin/Crud juegos/<%= ma2.getdir_img_juego()%>" class="card-img-top"> 
                    </div>
                    <div class="col-md-6">
                        <table class="table table-borderless">
                            
                            <tr>
                                <th>Nombre del juego</th>
                            </tr>
                            <tr>
                                <td><%= ma2.getnombre_juego()%></td>
                            </tr>
                            <tr>
                                <th> Categoria</th>
                            </tr>
                            <tr>
                                <td><%= ma2.getnombre_categoria_juegos()%></td>
                            </tr>
                            <tr>
                                <th>Plataforma</th>
                            </tr>
                            <tr>
                                <td><%= ma2.getnombre_consola()%> </td>
                            </tr>
                            <tr>
                                <th>Precio del juego</th>
                            </tr>
                            <tr>
                                <td>$ <%= ma2.getprecio_juego()%></td>
                            </tr>
                            <tr>
                                <th>Juegos disponibles</th>
                            </tr>
                            <tr>
                                <td><%= ma2.getcantidad_juegos()%> Unidades</td>
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
            <a href="Productos.jsp">
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
            <a href="">
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
                                <td>Ve los productos y accesorios que tenemos disponibles !!</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
                <a href="Productos.jsp">
                    <button type="button" class="btn btn-primary">Ver productos</button>
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
            <h5 style="color:rgb(255, 230, 0)">Â¿Preguntas? Llama al ** *** *** ****</h5>
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
                        <a class="dropdown-item" href="#">EspaÃ±ol</a>
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
                        <a href="#!" style="color:rgb(255, 230, 0)">InformaciÃ³n corporativa</a>
                    </li>
                </ul>
            </div>
            <hr class="clearfix w-100 d-md-none">
            <div class="col-md-3 mx-auto">
                <ul class="list-unstyled">
                    <li>
                        <br>
                        <a href="#!" style="color:rgb(255, 230, 0)">TÃ©rminos de uso</a>
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