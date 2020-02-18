<%@page import="Conexion.Conexion"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="modelo.usuarios"%>
<%@page import="modelo.usuarios_DAO"%>
<%@page import="modelo.Persona"%>
<html>
     <%
        Persona p = (Persona)session.getAttribute("persona");
        if(p==null){
        request.getRequestDispatcher("Inicio_Sesion_Cliente.jsp").forward(request, response);
    
    }
    
    
    %>

<head>

    <link rel="shortcut icon" href="https://fotos.subefotos.com/9f07d19705d6bde4351c7e17c87c4d7fo.png">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
        integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="style.css">

    <title>
        Kuykeisho
    </title>
    <body>
            <style type="text/css">
                body{
                  background: #eeeeee;
                }
                  .form-inline {
                      display: inline-block;
                  }
                .navbar-header.col {
                  padding: 0 !important;
                }	
                .navbar {		
                  background: #fff;
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
                      color: #a0a5b1;
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
                          <img width="380" height="70" src="https://fotos.subefotos.com/105fb41d255ed1489a748b723f448441o.png" class="img-fluid" alt="Responsive image">
                          </a>                    
                      <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle navbar-toggler ml-auto">
                      <span class="navbar-toggler-icon"></span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                    </button>
                  </div>
                  <div id="navbarCollapse" class="collapse navbar-collapse justify-content-start">
                    <ul class="nav navbar-nav">
                      </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right ml-auto">
                      <li class="nav-item dropdown">
                        <a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle user-action">
                        ${correo}
                        <b class="caret"></b></a>
                        <ul class="dropdown-menu" style="background-color: #343a40">
                          <li><a href="../index.html" style="color: #ffffff" class="dropdown-item"><i class="material-icons"></i> Cerrar Sesión</a></li>
                      </ul>
                      </li>
                    </ul>
                  </div>
                </nav>
        <style type="text/css">
            body {
                color: #fff;
                background: #e9e3e3;
            }
            .form-control {
                min-height: 41px;
                background: #fff;
                box-shadow: none !important;
                border-color: #e3e3e3;
            }
            .form-control:focus {
                border-color: #70c5c0;
            }
            .form-control, .btn {        
                border-radius: 2px;
            }
            .login-form {
                width: 350px;
                margin: 0 auto;
                padding: 100px 0 30px;		
            }
            .login-form form {
                color: #7a7a7a;
                border-radius: 2px;
                margin-bottom: 15px;
                font-size: 13px;
                background: #ececec;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                padding: 30px;	
                position: relative;	
            }
            .login-form h2 {
                font-size: 22px;
                margin: 35px 0 25px;
            }
            .login-form .avatar {
                position: absolute;
                margin: 0 auto;
                left: 0;
                right: 0;
                top: -50px;
                width: 95px;
                height: 95px;
                border-radius: 50%;
                z-index: 9;
                background: #ffffff;
                padding: 15px;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);
            }
            .login-form .avatar img {
                width: 100%;
            }	
            .login-form input[type="checkbox"] {
                margin-top: 2px;
            }
            .login-form .btn {        
                font-size: 16px;
                font-weight: bold;
                background: #fffb05;
                border: none;
                margin-bottom: 20px;
            }
            .login-form .btn:hover, .login-form .btn:focus {
                background: #eeff00;
                outline: none !important;
            }    
            .login-form a {
                color: #fff;
                text-decoration: underline;
            }
            .login-form a:hover {
                text-decoration: none;
            }
            .login-form form a {
                color: #7a7a7a;
                text-decoration: none;
            }
            .login-form form a:hover {
                text-decoration: underline;
            }
        </style>
        </head>
        <body>
        <div class="login-form">
          <br>
          <br>
            <form action="Ajustes.html" method="post">
                <div class="avatar">
                    <img src="https://images.vexels.com/media/users/3/137047/isolated/preview/5831a17a290077c646a48c4db78a81bb-perfil-de-usuario-icono-azul-by-vexels.png" alt="Avatar">
                </div>
                <h2 class="text-center">Editar Perfil</h2>   

 <%
            String cod = request.getParameter("doc");
            

             Connection conn = null;
            ResultSet rs = null;
            Statement sta = null;
            
            finally{
             
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Kyukeisho?user=root&password=");   
                
            sta = conn.createStatement();
            rs = sta.executeQuery("select * from usuario where id_usuario = '"+cod+"'");
            
            while(rs.next()){
              

        %>
                        <form action="">
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>Primer nombre</label>
                                    <input type="text" class="form-control" required value="<%= ma2.getprimer_nombre_usuario()%>" name="pnom2">
                                    <label>segundo nombre</label>
                                    <input  type="text" class="form-control" value="<%= ma2.getsegundo_nombre_usuario() %>" name="snom2">
                                    <label>Primer apellido</label>
                                    <input  type="text" class="form-control" required value="<%= ma2.getprimer_apellido_usuario() %>" name="pape2">
                                    <label>Segundo apellido</label>
                                    <input  type="text" class="form-control" value="<%= ma2.getsegundo_apellido_usuario() %>" name="sape2">
                                    <label>Correo</label>
                                    <input  type="text" class="form-control" required value="<%= ma2.getcorreo_usuario() %>" name="cor2">
                                    <label>Telefono</label>
                                    <input  type="text" class="form-control" value="<%= ma2.gettelefono_usuario()%>" name="tel2">
                                    <label>Direccion</label>
                                    <input  type="text" class="form-control" value="<%= ma2.getdireccion() %>" name="dir2">
                                    <label>Contraseña</label>
                                    <input  type="text" class="form-control" value="<%= ma2.getcontraseña_usuario()%>" name="con2">

                                    <label>Estado</label>
                                    <select class="p-2 mb-2 form-control" required="required" value="<%= ma2.getid_estado_cliente() %>" name="es2">
                                     <option value="0">seleccione Estado</option>
                                     <option value="1">Activo</option>
                                     <option value="2">Desactivo</option>
                                    </select> 
                                     
                                    <input type="hidden" class="form-control" required value="<%= ma2.getid_usuario() %>" name="id_usuario2">
                                    
                                </div>
                            </div>
                                            <div class="form-group">
                    <button type="submit" class="btn btn-warning btn-lg btn-block">Guardar</button>
                </div>
                        </form>       

        </div>

        <br>
          <br>
          <br>
<div class="copyright text-center  font-weight-bold p-2" style="background-color:rgb(0, 0, 0)">
        <p style="color:rgb(255, 217, 0)">Desarrollado por Kyukeisho Copyright<i class="fa fa-copyright"
            aria-hidden="true"></i> 2019</p>


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
</head>

</html>