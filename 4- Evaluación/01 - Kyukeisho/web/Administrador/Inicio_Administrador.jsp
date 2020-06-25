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
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Kyukeisho</title>
        <link rel="icon" type="image/png" href="../IMG/GF.png">
        <meta charset="utf-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
        integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        <link rel="icon" type="image/png" href="IMG/GF.png">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
        integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

        <style> 
            body {
                background-size: 50%;
                background-image: url( https://images.unsplash.com/photo-1535462169218-aadfe41bda09?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=726&q=80);
            }
        </style>

        <div class="header fixed-top">
            <nav class="navbar navbar-expand-lg navbar-light " style="background-color: #000">
                <a href="../index.jsp">
                <img width="380" height="70" src="../IMG/index.png" class="img-fluid" alt="Responsive image">
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
                    <form class="form-inline my-2 my-lg-0">
                    </form>
                    <ul class="navbar-nav ">
                        <li class="nav-item dropdown mr-2">
                            <a class="nav-link dropdown-toggle navbar-DARK" href="#" id="navbarDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color:rgb(255, 217, 0)">
                                <i class="fa fa-user" aria-hidden="true"></i>
                                ${correo}
                            </a>
                            <div class="dropdown-menu mr-sm-2 " aria-labelledby="navbarDropdown" style="background-color: #000">
                                <form action="../ControladorAdmin" method="post">
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
        </div>
    
        <br>
        <div class="container">
            <body background="https://images.unsplash.com/photo-1543328011-1c0d628fae09?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80">
            </body>
            <br><br><br>
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
                aria-hidden="true"></i> 2019</p></div>

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
