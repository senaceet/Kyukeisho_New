<%@page import="modelo.persona"%>
<%@page import="modelo.personaDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" target="_blank">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Persona</title>
    
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
                <a href="">
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
                <li class="nav-item active"><a href="homepage.jsp" class="nav-link">Página de administración</a></li>
                </li>
              </ul>

            </div>
          </nav>
          <br>
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
            background: #fff;
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
            <div class="container" >
                <div class="table-wrapper" bgcolor="#088A68">
                    <div class="table-title" style="background-color: rgb(216, 211, 40)">
                        <div class="row" ><br></div>
                        <div class="row" >
                            <div class="col-lg-5">
                                <h2> <strong>Personas</strong></h2>
                            </div>
                            <div class="col-lg-6" >
                             
                                
                                <a href="#addcate" class="btn btn-success"  data-toggle="modal">
                                 <i class="material-icons"><i class="fa fa-plus-circle" aria-hidden="true"></i>
                                </i><span> Añadir persona</span></a>
                                

                            </div>
         
                        </div>
                        <div class="row" ><br></div>
                    </div>
                    <br>
                    
        <div class="container" >
            <div class="row" >
                <div class="container" style="background-color:#FFFFFF">
        <table class="table table-striped table-hover "  width="1000">
            <thead>
            <tr bgcolor="#C0BB2E">
                                <th>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="selectAll">
                                        <label for="selectAll"></label>
                                    </span>
                                </th>
                                <th>Doc</th>
                                <th>Primer Nombre</th>
                                <th>Segundo Nombre</th>
                                <th>Primer Apellido</th>
                                <th>Segundo Apellido</th>
                                <th>Ciudad</th>
                                <th>Acciones</th>

                            </tr>
                        </thead>
                        <%
                    personaDAO dao=new personaDAO();
                    List<persona>list=dao.listar();
                    Iterator<persona>iter=list.iterator();
                    persona ma=null;
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
                                
                                <td><%= ma.getdocumento_persona()%></td>
                                <td><%= ma.getprimer_nombre_persona()%></td>
                                <td><%= ma.getsegundo_nombre_persona()%></td>
                                <td><%= ma.getprimer_apellido_persona()%></td>
                                <td><%= ma.getsegundo_apellido_persona()%></td>
                                <td><%= ma.getnombre_ciudad()%></td>

        
                        <td>
                                    <a href="controlador_persona?accion=editar&documento_persona=<%= ma.getdocumento_persona() %>" class="edit"><i
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
              <div class="container" style="background-color: rgb(216, 211, 40)">
                  <div class="row" ><br></div>
                 <div class="row"   >
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
                     
                   
            <div id="gReporte" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form>
                            <div class="modal-header">
                                <h4 class="modal-title">¿Que desea hacer?</h4>
                                <button type="button" class="close" data-dismiss="modal"
                                    aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-footer">
                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancelar">
                                <a href="#guardarR" class="btn btn-primary" data-toggle="modal"> Guardar</a>
                                <a href="#dReporte" class="btn btn-primary" data-toggle="modal"> Descargar</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- Añadir atributo -->
            <div id="addcate" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="controlador_persona">
                            <div class="modal-header" style="background-color: rgb(216, 211, 40)">
                                <h4 class="modal-title">Añadir persona</h4>
                                <button type="button" class="close" data-dismiss="modal"
                                    aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>Doc</label>
                                    <input name="doc" type="number" class="form-control" required>
                                    <label>Primer nombre</label>
                                    <input name="pnom" type="text" class="form-control" required>
                                    <label>segundo nombre</label>
                                    <input name="snom" type="text" class="form-control" >
                                    <label>Primer apellido</label>
                                    <input name="pape" type="text" class="form-control" required>
                                    <label>Segundo apellido</label>
                                    <input name="sape" type="text" class="form-control" >
                                    
                                    <label>Ciudad</label>
                                    <select name="cod" class="p-2 mb-2 form-control">
                                     <option value="0">seleccione Ciudad</option>
                                     <option value="1">Bogota</option>
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
              personaDAO dao2=new personaDAO();
              persona ma2= new persona();
              if (request.getAttribute("documento_persona")!= null){
              int documento_persona=Integer.parseInt((String)request.getAttribute("documento_persona"));
               ma2=(persona)dao2.list(documento_persona);
              }
          %>
                        <form action="controlador_persona">
                            <div class="modal-header" style="background-color: rgb(216, 211, 40)">
                                <h4 class="modal-title">Editar persona</h4>
                                <button type="button" class="close" data-dismiss="modal"
                                    aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>Doc</label>
                                    <input type="number" class="form-control" required value="<%= ma2.getdocumento_persona()%>" name="doc2">
                                    <label>Primer nombre</label>
                                    <input type="text" class="form-control" required value="<%= ma2.getprimer_nombre_persona()%>" name="pnom2">
                                    <label>segundo nombre</label>
                                    <input  type="text" class="form-control" value="<%= ma2.getsegundo_nombre_persona() %>" name="snom2">
                                    <label>Primer apellido</label>
                                    <input  type="text" class="form-control" required value="<%= ma2.getprimer_apellido_persona() %>" name="pape2">
                                    <label>Segundo apellido</label>
                                    <input  type="text" class="form-control" value="<%= ma2.getsegundo_apellido_persona() %>" name="sape2">

                                    <label>Ciudad</label>
                                    <select class="p-2 mb-2 form-control" required="required" value="<%= ma2.getcodigo_ciudad() %>" name="cod2">
                                     <option value="0">seleccione Ciudad</option>
                                     <option value="1">Bogota</option>
                                    </select> 
                                     
                                    <input type="hidden" class="form-control" required value="<%= ma2.getdocumento_persona() %>" name="documento_persona2">
                                    
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