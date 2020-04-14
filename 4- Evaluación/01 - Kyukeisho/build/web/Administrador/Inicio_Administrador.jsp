<%@page import="javax.mail.Session"%>
<%@page import="modelo.Admin"%>
<html>

    <%
        Admin a = (Admin) session.getAttribute("administrador");
        if (a == null) {
            request.getRequestDispatcher("Inicio_Sesion_Administrador.jsp").forward(request, response);
        }
        response.addHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setDateHeader("Expires", 0);
    %>

    <head>
        <title>Kyukeisho</title>
        <link rel="icon" type="image/png" href="IMG/GF.png">
        <meta charset="utf-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
              integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
              integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

        <style> 
            body {
                background-size: 50%;
                background-image: url( https://images.unsplash.com/photo-1535462169218-aadfe41bda09?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=726&q=80);
            }
        </style>

        <style type="text/css">
            body
            .form-inline {
                display: inline-block;
            }
            .navbar-header.col {
                padding: 0 !important;
            }	
            .navbar {		
                background: #0000;
                padding-left: 16px;
                padding-right: 16px;
                border-bottom: 1px solid #d6d6d6;
                box-shadow: 0 0 4px rgba(0,0,0,.1);
            }
            .nav-link img {
                border-radius: 50%;
                width: 36px;
                height: 36px;
                margin: -8px 0;
                float: left;
                margin-right: 10px;
            }
            .navbar .navbar-brand {
                color: #555;
                padding-left: 0;
                padding-right: 50px;
                font-family: 'Merienda One', sans-serif;
            }
            .navbar .navbar-brand i {
                font-size: 20px;
                margin-right: 5px;
            }
            .search-box {
                position: relative;
            }	
            .search-box input {
                box-shadow: none;
                padding-right: 35px;
                border-radius: 3px !important;
            }
            .search-box .input-group-addon {
                min-width: 35px;
                border: none;
                background: transparent;
                position: absolute;
                right: 0;
                z-index: 9;
                padding: 7px;
                height: 100%;
            }
            .search-box i {
                color: #000000;
                font-size: 19px;
            }
            .navbar .nav-item i {
                font-size: 18px;
            }
            .navbar .dropdown-item i {
                font-size: 16px;
                min-width: 22px;
            }
            .navbar .nav-item.open > a {
                background: none !important;
            }
            .navbar .dropdown-menu {
                border-radius: 1px;
                border-color: #e5e5e5;
                box-shadow: 0 2px 8px rgba(0,0,0,.05);
            }
            .navbar .dropdown-menu li a {
                color: #777;
                padding: 8px 20px;
                line-height: normal;
            }
            .navbar .dropdown-menu li a:hover, .navbar .dropdown-menu li a:active {
                color: #333;
            }	
            .navbar .dropdown-item .material-icons {
                font-size: 21px;
                line-height: 16px;
                vertical-align: middle;
                margin-top: -2px;
            }
            .navbar .badge {
                background: #f44336;
                font-size: 11px;
                border-radius: 20px;
                position: absolute;
                min-width: 10px;
                padding: 4px 6px 0;
                min-height: 18px;
                top: 5px;
            }
            .navbar ul.nav li a.notifications, .navbar ul.nav li a.messages {
                position: relative;
                margin-right: 10px;
            }
            .navbar ul.nav li a.messages {
                margin-right: 20px;
            }
            .navbar a.notifications .badge {
                margin-left: -8px;
            }
            .navbar a.messages .badge {
                margin-left: -4px;
            }	
            .navbar .active a, .navbar .active a:hover, .navbar .active a:focus {
                background: transparent !important;
            }
            @media (min-width: 1200px){
                .form-inline .input-group {
                    width: 300px;
                    margin-left: 30px;
                }
            }
            @media (max-width: 1199px){
                .form-inline {
                    display: block;
                    margin-bottom: 10px;
                }
                .input-group {
                    width: 100%;
                }
            }
        </style>
    </head> 
    <body>
        <nav class="navbar navbar-default navbar-expand-xl navbar-dark bg-dark">
            <div class="navbar-header d-flex col">
                <a href="../index.html">
                    <img width="380" height="70" src="../IMG/index.png" class="img-fluid" alt="Responsive image">
                </a>                    
                <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle navbar-toggler ml-auto">
                    <span class="navbar-toggler-icon"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>

            <div id="navbarCollapse" class="collapse navbar-collapse justify-content-start">
                <form class="navbar-form form-inline">
                </form>
                <ul class="nav navbar-nav navbar-right ml-auto">
                    <li class="nav-item dropdown">
                        <a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle user-action">
                            <b class="caret"></b>
                            ${correo}
                        </a>

                        <ul class="dropdown-menu dropdown-menu-right" style="background-color: #343a40">
                            <li class="divider dropdown-divider"></li>
                            <li>



                                <form action="../ControladorAdmin" method="post">
                                    <div class="form-group">
                                        <div align="center">
                                            <input style="width: 10rem;" class="btn btn-dark btn-block" type="submit" name="accion" value="Cerrar Sesion"> 
                                        </div>               
                                    </div>
                                </form>

                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
        <br>
        <div class="container">

            <body
                background="https://images.unsplash.com/photo-1543328011-1c0d628fae09?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80">
            </body>
            <center>
                <strong><h1 align="center" class="display-3" style="color: #ffffff">TUS ACCIONES</h1></strong>
            </center>
            <br>
            <br>
            <div class="card-group">
                <div class="card" style="background-color: transparent">
                    <center><img src="../IMG/incio admin/cliente.jpg" width="100"
                                 height="100"></center>
                    <div class="card-body">
                        <center><a href="../CRUD_usuarios.jsp" class="btn btn-Light btn-sm active" role="button"
                                   aria-pressed="true">
                                <h5>Clientes</h5></i>
                            </a></center>
                        <br>
                        <center>
                            <p style="color: white" class="card-text">Aqui puede visualizar todos los Clientes que se
                                han registrado  en la tienda.</p>
                        </center>
                    </div>

                </div>




                <div class="card" style="background-color: transparent">
                    <center>
                        <img src="../IMG/incio admin/reservaciones.png" width="100" height="100"/>
                    </center>
                    <div class="card-body">
                        <center><a href="../CRUD_reservaciones.jsp" class="btn btn-Light btn-sm active" role="button"
                                   aria-pressed="true">
                                <h5>Reservaciones</h5></i>
                            </a></center>
                        <br>

                        <center>
                            <p style="color: white" class="card-text">Aqui puedes visualizar todas las reservaciones.
                            </p>
                        </center>

                    </div>
                </div>


            </div>
        </div>
        <br>
        <div class="container">
            <div class="card-group">
                <div class="card" style="background-color: transparent">
                    <center>
                        <img src="../IMG/incio admin/Mario.png" width="100" height="100"></center>
                    <div class="card-body">
                        <center>
                            <a href="../Crud_Juegos.jsp" class="btn btn-Light btn-sm active" role="button"
                               aria-pressed="true">
                                <h5>Juegos</h5></i>
                            </a></center>
                        <br>
                        <center>
                            <p style="color: white" class="card-text">Aqui podras visualizar todos los juegos que puede
                                ofrecer la tienda.</p>
                        </center>
                    </div>
                    <div>
                    </div>
                </div>
                <div class="card" style="background-color: transparent">
                    <center>
                        <img src="../IMG/incio admin/categorias.png" width="100" height="100"></center>
                    <div class="card-body">
                        <center><a href="../Categorias_juegos.jsp" class="btn btn-Light btn-sm active" role="button"
                                   aria-pressed="true">
                                <h5>Categorias juegos</h5></i>
                            </a></center>
                        <br>
                        <center>
                            <p style="color: white" class="card-text">Aqui podras visualizar todas las categorias como
                                de juegos y tambien de productos.</p>
                        </center>
                    </div>
                    <div>

                    </div>
                </div>
            </div>
            <br>

            <div class="card-group">
                <div class="card" style="background-color: transparent">
                    <center>
                        <img src="../IMG/incio admin/productos.png" width="100" height="100"/>
                    </center>
                    <div class="card-body">
                        <center><a href="../Crud_Productos.jsp" class="btn btn-Light btn-sm active" role="button"
                                   aria-pressed="true">
                                <h5>Productos</h5></i>
                            </a></center>
                        <br>

                        <center>
                            <p style="color: white" class="card-text">Aqui puede visualizar todos los Productos que
                                puede ofrecer la tienda.
                            </p>
                        </center>

                    </div>
                </div>
                <div class="card" style="background-color: transparent">
                    <center><img src="../IMG/incio admin/categorias_productos.png"
                                 width="100" height="100"></center>
                    <div class="card-body">
                        <center><a href="../CRUD_Categorias_productos.jsp" class="btn btn-Light btn-sm active" role="button"
                                   aria-pressed="true">
                                <H5>Categorias productos</h5>
                            </a></center>
                        <br>
                        <center>
                            <p style="color: white" class="card-text">Aqui podra visualizar todas las categorias de los productos
                            </p>
                        </center>
                    </div>
                    <div>

                    </div>
                </div>
            </div>
            <br>
            <br>

            <div class="card-group">
                <div class="card" style="background-color: transparent">
                    <center>
                        <img src="../IMG/incio admin/consola.png" width="100" height="100"/>
                    </center>
                    <div class="card-body">
                        <center><a href="../CRUD_Consolas.jsp" class="btn btn-Light btn-sm active" role="button"
                                   aria-pressed="true">
                                <h5>Consolas disponibles</h5></i>
                            </a></center>
                        <br>

                        <center>
                            <p style="color: white" class="card-text">Aqui puede visualizar todos las consolas que
                                ofrece la tienda.
                            </p>
                        </center>

                    </div>
                </div>
                <div class="card" style="background-color: transparent">
                    <center><img src="../IMG/incio admin/ocupado.png"
                                 width="100" height="100"></center>
                    <div class="card-body">
                        <center><a href="../CRUD_Consolas_ocupadas.jsp" class="btn btn-Light btn-sm active" role="button"
                                   aria-pressed="true">
                                <H5>Consolas ocupadas</h5>
                            </a></center>
                        <br>
                        <center>
                            <p style="color: white" class="card-text">Aqui podra visualizar todas las categorias de los productos
                            </p>
                        </center>
                    </div>
                    <div>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <br>
        <br>
        <div class="copyright text-center  font-weight-bold p-2" style="background-color:transparent">
            <p style="color:white">Desarrollado por Kyukeisho Copyright<i class="fa fa-copyright"
                                                                          aria-hidden="true"></i> 2019</p>

    </body>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
    crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"
            integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh"
    crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"
            integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ"
    crossorigin="anonymous"></script>
</head>

</html>
