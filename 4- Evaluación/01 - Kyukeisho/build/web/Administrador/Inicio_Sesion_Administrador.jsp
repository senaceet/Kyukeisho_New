<html lang="es">
    <head>
        <link rel="shortcut icon" href="../IMG/GF.png">

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
              integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="style.css">

        <title>Kyukeisho</title>
        <link rel="icon" type="image/png" href="IMG/GF.png">


        <style> 
            body {
                background-size: 100%;
                background-image: url( https://i.pinimg.com/originals/17/0b/2b/170b2bba7048acbb7ef07424405abe1a.jpg );
            }
        </style>

    </head>
    <body>
        <div class="header fixed-top">
            <nav class="navbar navbar-expand-lg navbar-light " style="background-color: #343a40">
                <a href="../index.jsp">
                    <img width="380" height="70" src="../IMG/index.png" class="img-fluid" alt="Responsive image">
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse " id="navbarSupportedContent" >
                    <ul class="navbar-nav mr-auto">
                    </ul>
                    <ul class="navbar-nav ">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false" style="color: #ffffff">
                                Iniciar sesion Como:
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="width:13rem; background-color: #343a40">
                                <a class="dropdown-item" href="../Cliente/Inicio_Sesion_Cliente.jsp" style="color: #ffffff">Cliente</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
        <br><br><br><br><br><br>


        <div class="container">
            <div class="row">
                <div class="col-xl-6">
                    <style type="text/css">
                        .login-form {
                            width: 340px;
                        }

                        .login-form form {
                            margin-bottom: 15px;
                            box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                            padding: 30px;
                        }
                    </style>
                    <center>
                        <div class="login-form">
                            <h4 class="text-center">
                                <p style="color:rgb(255, 255, 255)" >Inicio Sesión</p>
                            </h4>
                            <hr>
                            <form action="../ControladorAdmin" method="post">
                                <div class="form-group">               
                                    <input class="form-control" type="email" name="txtcorreo" placeholder="Correo electrónico"
                                           style="width: 18rem" required="required">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" type="password" name="txtcontraseña" placeholder="Contraseña"
                                           style="width: 18rem" required="required">
                                </div>
                                <div class="form-group">
                                    <div align="center">
                                        <input style="width: 18rem;" class="btn btn-danger btn-block" type="submit" name="accion" value="Ingresar"> 
                                    </div> 
                                </div>

                                <div class="clearfix">            
                                    <p style="color:rgb(255, 255, 255)"><label class="pull-left checkbox-inline"><input type="checkbox"> Recordar Cuenta</p>
                                        </label>
                                </div>              
                                <h6 style="color:red; text-align:center">
                                    ${message}
                                    <c:remove var="message" scope="session" />
                                </h6> 
                            </form>
                        </div>
                    </center>
                </div>  
                <center>
                    <div class="row">
                        <div class="col-xl-5">              
                            <div class="login-form">
                                <div class="col-lg-1">
                                    <div class="login-form">
                                        <form action="" method="post">
                                            <h2 class="text-center">
                                                <p style="color:rgb(255, 255, 255)">Bienvenido</p>
                                            </h2>
                                            <div class="text-center social-btn">                    
                                                <img height="350" src="../IMG/incio admin/1.gif"
                                                     class="d-block w-100" alt="...">
                                            </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                </center>
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


                               

        <div class="copyright text-center  font-weight-bold p-2" style="background-color:rgb(0, 0, 0)">
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
