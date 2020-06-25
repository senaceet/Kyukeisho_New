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
            body {
                background-size: 100%;
                background-image: url( https://k33.kn3.net/taringa/7/2/7/0/4/4/Niphe/164.jpg);
            }
            footer {
                position: relative;
                /* Altura total del footer en px con valor negativo */
                margin-top: 218px;
                /* Altura del footer en px. Se han restado los 5px del margen
                   superior mas los 5px del margen inferior
                */

                padding:5px 0px;
                clear: both;

                text-align: center;

            }
        </style>

    </head>
    <body >
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

    <%
        }else if(p!= null && a == null){
 %>

<ul class="navbar-nav ">
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
                    <div class="col-xl-3 text-left" style="background-color: rgb(255, 251, 0)">
                        <a href="contactenos.jsp">
                            <button type="button" style="border-color: rgba(133, 133, 133, 0)"
                                    class="btn btn-outline-dark">
                                <h5><strong><i class="fa fa-phone" aria-hidden="true"></i> Contactanos</strong></h5>
                            </button>
                        </a>
                    </div>
                    <div class="col-xl-3 text-left" style="background-color: rgb(255, 251, 0)">
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
<br>
<br>
<br>
<br>
<br>
<br>
<center>
    <div class="alert alert-info" role="alert" style="width:30rem;">
        <h4 class="alert-heading">Recuerda!!</h4>
        <hr>
        <p>Tienes que inciar sesión  o registrarte como cliente para poder reservar una consola en nuestro establecimiento.</p>
    </div>
</center>
<br>
<br>
<footer class="page-footer font-small indigo" style="background-color:rgb(0, 0, 0)">
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
                        <a href="#!" style="color:rgb(255, 230, 0)">Informacion corporativa</a>
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
    <br>
</footer>


    <div class="copyright text-center  font-weight-bold p-2" style="background-color: #000">
    <p style="font-family: Times New Roman; color:rgb(255, 217, 0)">Desarrollado por Kyukeisho Copyright<i class="fa fa-copyright"
                                                                             aria-hidden="true"></i> 2019</p>
</div>
</footer>
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