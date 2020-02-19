<%@page import="modelo.usuarios"%>
<%@page import="modelo.usuarios_DAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="javax.mail.Session"%>
<%@page import="modelo.Admin"%>
<%@page contentType="text/html"%> <%-- para acentos --%> 
<%@page pageEncoding="UTF-8"%> <%-- para acentos --%> 
<html>
    
    <%
        Admin a = (Admin)session.getAttribute("administrador");
        if(a==null){
        response.sendRedirect("Administrador/Inicio_Sesion_Administrador.jsp"); 
    }  
        response.addHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setDateHeader("Expires",0); 
    %>
    

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Usuarios</title>
    
    <link rel="stylesheet" href="css/styles.css" media="all">

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet">
    <link rel="icon" type="image/png" href="https://fotos.subefotos.com/e296fe07575583952d4e106565eb2181o.png">

    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    

    <script type="text/javascript">
         a=0;
         a1=0;
        $(document).ready(function () {
            // Activate tooltip
            $('[data-toggle="tooltip"]').tooltip();
            a='${a}';
            a1='${a1}';
            
            if(a==1){
        $("#editcate").modal('show');
        
             }
             else{
                 
             }
             if(a1==1){
        $("#elimicate").modal('show');
        
             }
             else{
                 
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
</head>

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
                <a href="index.html">
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
                <li class="nav-item active">
                    <a href="Administrador/Inicio_Administrador.jsp" class="nav-link"></a>
                </li>
                </li>
              </ul>
              <form class="navbar-form form-inline">
                <div class="input-group search-box">								
                    <a href="Administrador/Inicio_Administrador.jsp" class="nav-link"><h6 style="color: white">Página de administración</h6></a>
                </div>
              </form>
              <ul class="nav navbar-nav navbar-right ml-auto">
                <li class="nav-item dropdown" >
                  <a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle user-action">
                      <b class="caret">
                        ${correo}
                      </b>
                  </a>
                  <ul class="dropdown-menu" style="background-color: #343a40">
                      <li>
                       <a href="../Perfil_Administrador.html" style="color: rgb(255, 255, 255)" class="dropdown-item"><i class="fa fa-user-o"></i> Perfil</a></li>
                      </li>
                      <li>
                    <form action="ControladorAdmin" method="post">           
                        <div class="form-group">
                <div align="center">
                    <input style="width: 10rem;" class="btn btn-dark btn-block" type="submit" name="accion" value="Cerrar Sesion"> 
                </div>               
                </div>
                 </form>
                      </li>
              </ul>
            </div>
          </nav>
          <br>
    <center>
        <div class="btn-group">
            <button type="button" class="btn btn-outline-info dropdown-toggle" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                Productos
            </button>
            <div class="dropdown-menu">
                    <a class="dropdown-item" href="Crud_Productos_No_Tan_Vendidos.jsp">Productos No Tan Vendidos</a>
                  </div>
                </div>
                <div class="btn-group">
                      <button type="button" class="btn btn-outline-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Juegos
                      </button>
                      <div class="dropdown-menu">
                        <a class="dropdown-item" href="Juegos/Juegos_Mas_Pedidos.jsp">Juegos Mas Pedidos</a>
                        <a class="dropdown-item" href="Juegos/Crud_Juegos_No_Tan_Pedidos.jsp">Juegos No Tan Pedidos</a>
                        <a class="dropdown-item" href="Juegos/Todos_Juegos_1.jsp">Todos los juegos</a>
                      </div>
                    </div>
                    <div class="btn-group">
                          <button type="button" class="btn btn-outline-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Consolas
                          </button>
                          <div class="dropdown-menu">
                            <a class="dropdown-item" href="Consolas/Consolas.jsp">Consolas</a>
                            <a class="dropdown-item" href="Consolas/Crud_Consolas_Mas_Pedidas.jsp">Consolas Mas Pedidas</a>
                            <a class="dropdown-item" href="Consolas/Crud_Consolas_Poco_Pedidas.jsp">Consolas No Tan Pedidas</a>
                        </div>
                      </div>
                        <div class="btn-group">
                              <button type="button" class="btn btn-outline-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Citas
                              </button>
                              <div class="dropdown-menu">
                                <a class="dropdown-item" href="../CRUD Citas/Crud_Citas_Activas.jsp">Citas Activas</a>
                                <a class="dropdown-item" href="../CRUD Citas/Crud_Citas_Inactivas.jsp">Citas Inactivas</a>
                              </div>
                            </div>

                                  <a href="Categorias_1.jsp"><button type="button" class="btn btn-outline-info">Categorias</button></a>
                      </div>
    </center>
    <br>
    <br>
    <br>


    <style type="text/css">
        body {
            color: #566787;
            background: #f5f5f5;
            font-family: 'Varela Round', sans-serif;
            font-size: 13px;
        }
        .table-wrapper {
            background: #FFFFFF;
            width: 1620px;
            padding: 20px 25px;
            margin: 30px 0;
            border-radius: 3px;
            box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
        }

        .table-title {
            padding-bottom: 15px;
            background: #435d7d;
            color: #fff;
            padding: 16px 30px;
            margin: -20px -25px 10px;
            border-radius: 3px 3px 0 0;
        }

        .table-title h2 {
            margin: 5px 0 0;
            font-size: 24px;
        }

        .table-title .btn-group {
            float: right;
        }

        .table-title .btn {
            color: #fff;
            float: right;
            font-size: 13px;
            border: none;
            min-width: 50px;
            border-radius: 2px;
            border: none;
            outline: none !important;
            margin-left: 10px;
        }

        .table-title .btn i {
            float: left;
            font-size: 21px;
            margin-right: 5px;
        }

        .table-title .btn span {
            float: left;
            margin-top: 2px;
        }

        table.table tr th,
        table.table tr td {
            border-color: #e9e9e9;
            padding: 12px 15px;
            vertical-align: middle;
        }

        table.table tr th:first-child {
            width: 60px;
        }

        table.table tr th:last-child {
            width: 100px;
        }

        table.table-striped tbody tr:nth-of-type(odd) {
            background-color: #fcfcfc;
        }

        table.table-striped.table-hover tbody tr:hover {
            background: #f5f5f5;
        }

        table.table th i {
            font-size: 13px;
            margin: 0 5px;
            cursor: pointer;
        }

        table.table td:last-child i {
            opacity: 0.9;
            font-size: 22px;
            margin: 0 5px;
        }

        table.table td a {
            font-weight: bold;
            color: #566787;
            display: inline-block;
            text-decoration: none;
            outline: none !important;
        }

        table.table td a:hover {
            color: #2196F3;
        }

        table.table td a.edit {
            color: #FFC107;
        }

        table.table td a.delete {
            color: #F44336;
        }

        table.table td i {
            font-size: 19px;
        }

        table.table .avatar {
            border-radius: 50%;
            vertical-align: middle;
            margin-right: 10px;
        }

        .pagination {
            float: right;
            margin: 0 0 5px;
        }

        .pagination li a {
            border: none;
            font-size: 13px;
            min-width: 30px;
            min-height: 30px;
            color: #999;
            margin: 0 2px;
            line-height: 30px;
            border-radius: 2px !important;
            text-align: center;
            padding: 0 6px;
        }

        .pagination li a:hover {
            color: #666;
        }

        .pagination li.active a,
        .pagination li.active a.page-link {
            background: #03A9F4;
        }

        .pagination li.active a:hover {
            background: #0397d6;
        }

        .pagination li.disabled i {
            color: #ccc;
        }

        .pagination li i {
            font-size: 16px;
            padding-top: 6px
        }

        .hint-text {
            float: left;
            margin-top: 10px;
            font-size: 13px;
        }

        /* Custom checkbox */
        .custom-checkbox {
            position: relative;
        }

        .custom-checkbox input[type="checkbox"] {
            opacity: 0;
            position: absolute;
            margin: 5px 0 0 3px;
            z-index: 9;
        }

        .custom-checkbox label:before {
            width: 18px;
            height: 18px;
        }

        .custom-checkbox label:before {
            content: '';
            margin-right: 10px;
            display: inline-block;
            vertical-align: text-top;
            background: white;
            border: 1px solid #bbb;
            border-radius: 2px;
            box-sizing: border-box;
            z-index: 2;
        }

        .custom-checkbox input[type="checkbox"]:checked+label:after {
            content: '';
            position: absolute;
            left: 6px;
            top: 3px;
            width: 6px;
            height: 11px;
            border: solid #000;
            border-width: 0 3px 3px 0;
            transform: inherit;
            z-index: 3;
            transform: rotateZ(45deg);
        }

        .custom-checkbox input[type="checkbox"]:checked+label:before {
            border-color: #03A9F4;
            background: #03A9F4;
        }

        .custom-checkbox input[type="checkbox"]:checked+label:after {
            border-color: #fff;
        }

        .custom-checkbox input[type="checkbox"]:disabled+label:before {
            color: #b8b8b8;
            cursor: auto;
            box-shadow: none;
            background: #ddd;
        }

        /* Modal styles */
        .modal .modal-dialog {
            max-width: 400px;
        }

        .modal .modal-header,
        .modal .modal-body,
        .modal .modal-footer {
            padding: 20px 30px;
        }

        .modal .modal-content {
            border-radius: 3px;
        }

        .modal .modal-footer {
            background: #ecf0f1;
            border-radius: 0 0 3px 3px;
        }

        .modal .modal-title {
            display: inline-block;
        }

        .modal .form-control {
            border-radius: 2px;
            box-shadow: none;
            border-color: #dddddd;
        }

        .modal textarea.form-control {
            resize: vertical;
        }

        .modal .btn {
            border-radius: 2px;
            min-width: 100px;
        }

        .modal form label {
            font-weight: normal;
        }
    </style>
    <center>
            <div class="container-rigtht" >
                <div class="table-wrapper" bgcolor="#088A68" >
                    <div class="table-title" style="background-color: rgb(216, 211, 40)">
                        <div class="row" ><br></div>
                        <div class="row" >
                            <div class="col-lg-5">
                                <h2> <strong>Usuario</strong></h2>
                            </div>
                            <div class="col-lg-6" >

                                <form name="form1" action="" target="_black">
                                    <input type="submit" class="btn btn-info" value="Generar reporte en PDF" />
                                </form>                               
                                
                                <a href="#addcate" class="btn btn-success"  data-toggle="modal">
                                 <i class="material-icons"><i class="fa fa-plus-circle" aria-hidden="true"></i>
                                </i><span> Añadir Usuarios</span></a>
                                

                            </div>
         
                        </div>
                        <div class="row" ><br></div>
                    </div>
                    <br>
                  
        <div class="container-right"  >
            <div class="row" style="width:110rem">
                <div class="container-right" style="background-color:#FFFFFF">
        <table class="table table-striped table-hover "  style="width:100rem">
            <thead>
            <tr bgcolor="#C0BB2E">
                                <th>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="selectAll">
                                        <label for="selectAll"></label>
                                    </span>
                                </th>
                                <th >Id</th>
                                <th >Primer Nombre</th>
                                <th>Segundo Nombre</th>
                                <th>Primer Apellido</th>
                                <th>Segundo Apellido</th>
                                <th>Correo</th>
                                <th>Telefono</th>
                                <th>direccion</th>
                                <th>contraseña</th>
                                <th>Estado</th>
                                <th>Acciones</th>

                            </tr>
                        </thead>
                        <%
                    usuarios_DAO dao=new usuarios_DAO();
                    List<usuarios>list=dao.listar();
                    Iterator<usuarios>iter=list.iterator();
                    usuarios ma=null;
                    while(iter.hasNext()){
                        ma=iter.next();
                %>
                        
                            <tr>
                                <td>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                        <label for="checkbox1"></label>
                                    </span>
                                </td>
                                
                                <td ><%= ma.getid_usuario()%></td>
                                <td ><%= ma.getprimer_nombre_usuario()%></td>
                                <td><%= ma.getsegundo_nombre_usuario()%></td>
                                <td><%= ma.getprimer_apellido_usuario()%></td>
                                <td><%= ma.getsegundo_apellido_usuario()%></td>
                                <td><%= ma.getcorreo_usuario()%></td>
                                <td><%= ma.gettelefono_usuario()%></td>
                                <td><%= ma.getdireccion()%></td>
                                <td><%= ma.getcontraseña_usuario()%></td>
                                <td><%= ma.getestado_cliente()%></td>

        
                        <td>
                                    <a href="controlador_usuarios?accion=editar&id_usuario=<%= ma.getid_usuario() %>" class="edit"><i
                                            style="color:rgb(245, 221, 9)" class="material-icons" data-toggle="tooltip" title="Editar" value="">&#xE254;</i></a>  
                                            
                                </td>   
                            </tr>
                            <% 
                             }
                            %>
                       
                    </table>
           </div> 
           </div>
                            </div>
                            <br>
              <div class="container-right" style="background-color: rgb(216, 211, 40); width:99rem" >
                  <div class="row"><br></div>
                 <div class="row ">
                 <div class="col-lg-8">
                   Mostrando 5 de 5 entradas
                 </div>
                 <div class="col-lg-4">
                    <ul class="pagination">
                        <li class="page-item active"><a href="#" class="page-link">1</a></li>
                        <li class="page-item"><a href="#" class="page-link">2</a></li>
                        <li class="page-item"><a href="#" class="page-link">3</a></li>
                        <li class="page-item"><a href="#" class="page-link">4</a></li>
                        <li class="page-item"><a href="#" class="page-link">5</a></li>
                        <li class="page-item"><a href="#" class="page-link">Siguiente</a></li>
                    </ul>
                 </div>
              </div>
            </div>
            
            
               
            </center>
                            
            <!-- Añadir atributo -->
            <div id="addcate" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="controlador_usuarios">
                            <div class="modal-header" style="background-color: rgb(216, 211, 40)">
                                <h4 class="modal-title">Añadir usuario</h4>
                                <button type="button" class="close" data-dismiss="modal"
                                    aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>Primer nombre</label>
                                    <input name="pnom" type="text" class="form-control" required>
                                    <label>segundo nombre</label>
                                    <input name="snom" type="text" class="form-control" >
                                    <label>Primer apellido</label>
                                    <input name="pape" type="text" class="form-control" required>
                                    <label>Segundo apellido</label>
                                    <input name="sape" type="text" class="form-control" >
                                    <label>Correo</label>
                                    <input name="cor" type="email" class="form-control" required>
                                    <label>Telefono</label>
                                    <input name="tel" type="number" class="form-control" value="0">
                                    <label>Direccion</label>
                                    <input name="dir" type="text" class="form-control" >
                                    <label>contraseña</label>
                                    <input name="con" type="password" class="form-control" required>
                                    
                                    <label>Estado</label>
                                    <select name="es" class="p-2 mb-2 form-control">
                                     <option value="0">seleccione Estado</option>
                                     <option value="1">Activo</option>
                                     <option value="2">Desactivo</option>
                                   </select> 
                                    

                            </div>
                            </div>
                            <div class="modal-footer" style="background-color: rgb(216, 211, 40)">
                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                <input type="submit" class="btn btn-success" value="Agregar" name="accion">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            
            <!-- Editar -->    
            
            <div id="editcate" class="modal fade">
                
                <div class="modal-dialog">
                    <div class="modal-content">
                        
                        <%
              usuarios_DAO dao2=new usuarios_DAO();
              usuarios ma2= new usuarios();
              if (request.getAttribute("id_usuario")!= null){
              int id_usuario=Integer.parseInt((String)request.getAttribute("id_usuario"));
               ma2=(usuarios)dao2.list(id_usuario);
              }
          %>
                        <form action="controlador_usuarios">
                            <div class="modal-header" style="background-color: rgb(216, 211, 40)">
                                <h4 class="modal-title">Editar usuario</h4>
                                <button type="button" class="close" data-dismiss="modal"
                                    aria-hidden="true">&times;</button>
                            </div>
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
                            <div class="modal-footer" style="background-color: rgb(216, 211, 40)">
                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                <input type="submit" class="btn btn-success" value="Actualizar" name="accion">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
                               
                         
</body>

</html>