<%@page import="modelo.Encriptacion_MD5"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="modelo.usuarios"%>
<%@page import="modelo.usuarios_DAO"%>
<%@page import="modelo.Persona"%>
<%@page import="Conexion.Conexion"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="modelo.Persona"%>

<html>
    <%
        Persona p = (Persona)session.getAttribute("persona");
        if(p==null){
        request.getRequestDispatcher("Inicio_Sesion_Cliente.jsp").forward(request, response);
    
    }
        response.addHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setDateHeader("Expires",0);    
    
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
                   <nav class="navbar navbar-expand-lg navbar-light " style="background-color: #343a40">
        <a href="../index.html">
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

        <ul class="navbar-nav ">
            <li class="nav-item dropdown mr-2">
              <a class="nav-link dropdown-toggle navbar-DARK" href="#" id="navbarDropdown" role="button"
                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color:rgb(255, 255, 255)">
                    ${correo}
              </a>
                <div class="dropdown-menu mr-sm-2 " aria-labelledby="navbarDropdown" style="width:15rem; background-color: #343a40">
                 <a class="dropdown-item" href="Cliente.jsp" style="color:rgb(255, 255, 255)">Inicio</a>
                 <a class="dropdown-item" href="#" style="color:rgb(255, 255, 255)">Mis reservaciones</a>
                 <hr>
                 <form action="../Controlador" method="post">
                 <div class="form-group">
                <div align="center">
                    <input style="width: 14rem;" class="btn btn-dark btn-block" type="submit" name="accion" value="Cerrar Sesion"> 
                </div>               
                </div>
                 </form>
                </div>
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

            <form action="">
                <div class="avatar">
                    <img src="https://images.vexels.com/media/users/3/137047/isolated/preview/5831a17a290077c646a48c4db78a81bb-perfil-de-usuario-icono-azul-by-vexels.png" alt="Avatar">
                </div>
                <h2 class="text-center">Editar Perfil</h2>   

        <%
         
        String correo = (String) session.getAttribute("correo_e");
           
            

             Connection conn = null;
            ResultSet rs = null;
            Statement sta = null;
            
            try{
             
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Kyukeisho?user=root&password=");   
                
            sta = conn.createStatement();
            rs = sta.executeQuery("select * from usuario where correo_usuario ='"+ correo +"'");
            
            while(rs.next()){
              

        %>

            
              <div class="modal-body">
                                <div class="form-group">
                                    <label>Primer nombre</label>
                                    <input type="text" class="form-control" required value="<%=rs.getString(2)%>" name="pnom">
                                    <label>segundo nombre</label>
                                    <input  type="text" class="form-control" value="<%=rs.getString(3)%>" name="snom">
                                    <label>Primer apellido</label>
                                    <input  type="text" class="form-control" required value="<%=rs.getString(4)%>" name="pape">
                                    <label>Segundo apellido</label>
                                    <input  type="text" class="form-control" value="<%=rs.getString(5)%>" name="sape">
                                    <label>Telefono</label>
                                    <input  type="text" class="form-control" value="<%=rs.getString(7)%>" name="tel">
                                    <label>Dirección</label>
                                    <input  type="text" class="form-control" value="<%=rs.getString(8)%>" name="dir">


                                     <br>
                         <input class="btn btn-ligth btn-block" type="submit" name="btngrabar" value="Guardar">
               </div>
              </div>
        </form>
           <center>
            <a href="Recuperar contrasena/Recuperar_contrasena_3.jsp">
            <button type="button" style="border-color: rgba(133, 133, 133, 0)" class="btn btn-ligth btn-block">
              <h5><strong>Modificar contraseña</strong></h5>
            </button>
          </a>      
          </center>
        <%
            }
        }catch(Exception e){} 

        if(request.getParameter("btngrabar")!= null){
        
        String pnom2 = request.getParameter("pnom");
        String snom2 = request.getParameter("snom");
        String pape2 = request.getParameter("pape");
        String sape2 = request.getParameter("sape");
        String tel2 = request.getParameter("tel");// posible error
        String dir2 = request.getParameter("dir");
        
        sta.executeUpdate("update usuario set primer_nombre_usuario='"+ pnom2 +"',segundo_nombre_usuario='"+ snom2 +"',primer_apellido_usuario='"+ pape2 +"',segundo_apellido_usuario='"+ sape2 +"',telefono_usuario="+ tel2 +",direccion='"+ dir2 +"' where correo_usuario ='"+ correo +"' ");

        response.sendRedirect("Perfil_Cliente.jsp");         
        }

        %>

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