<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Persona"%>
<%@page import="modelo.consolas_DAO"%>
<%@page import="modelo.consolas"%>
<!DOCTYPE html>
<html lang="en">

    <%
        Persona p = (Persona)session.getAttribute("persona");
        if(p==null){
        request.getRequestDispatcher("Inicio_Sesion_Cliente.jsp").forward(request, response);
    
    }
        response.addHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setDateHeader("Expires",0);    
    
    %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Reservaciones</title>
    <link rel="icon" type="image/png" href="https://fotos.subefotos.com/e296fe07575583952d4e106565eb2181o.png">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
    integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    
    
    <style> 
            body {
                background-size: 100%;
                background-image: url( https://k33.kn3.net/taringa/7/2/7/0/4/4/Niphe/164.jpg);
            }
    </style>

</head>
<body >
        <font style="color:rgb(255, 145, 0)">
                <div class="header fixed-top">
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
                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color:rgb(255, 217, 0)">
                    ${correo}
              </a>
                <div class="dropdown-menu mr-sm-2 " aria-labelledby="navbarDropdown" style="width:15rem; background-color: #343a40">
                 <a class="dropdown-item" href="#" style="color:rgb(255, 217, 0)">Mis reservaciones</a>
                 <a class="dropdown-item" href="Perfil_Cliente.jsp" style="color:rgb(255, 217, 0)">Perfil</a>
                 <hr>
                 <form action="../Controlador" method="post">
                 <div class="form-group">
                <div align="center">
                    <input style="width: 14rem;" class="btn btn-warning btn-block" type="submit" name="accion" value="Cerrar Sesion"> 
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
                      MENU<span class="navbar-toggler-icon"></span>
                    </button>
                        </div>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent2">
              
                    <div class="col-xl-3 text-left" style="background-color: rgb(255, 251, 0)">
                        <button class="btn text-right btn-lg dropdown-toggle" style="border-color: rgba(133, 133, 133, 0)" type="button"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fa fa-bars" aria-hidden="true"></i><strong> Categorias</strong>
                      </button>
                      <div class="dropdown-menu btn-lg " aria-labelledby="dropdownMenuButton"
                      style="width:14rem; background-color: rgb(255, 251, 0)">
          <a href="../Juegos.jsp" class="dropdown-item" style="color: rgb(0, 0, 0)">Juegos para consolas</a>
          <a class="dropdown-item" style="color: rgb(0, 0, 0)" href="../Productos.jsp">Productos y accesorios</a>
                    </div>
                    </div>
                      
                      <div class="col-xl-3 text-left" style="background-color: rgb(255, 251, 0)">
                        <a href="../Conocenos.html">
                          <button type="button" style="border-color: rgba(133, 133, 133, 0)" class="btn btn-outline-dark">
                            <h5><strong><i class="fa fa-users" aria-hidden="true"></i> Conocenos</strong></h5>
                          </button>
                        </a>
                      </div>
                      <div class="col-xl-3 text-left" style="background-color: rgb(255, 251, 0)">
                        <a href="../contactenos.html">
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
<center>
        <div class="alert alert-danger" role="alert" style="width:30rem;">
                <h4 class="alert-heading">Recuerda!!</h4>
                <hr>
                <p>Abrimos desde las 06:00 AM <br>hasta las 10:00 PM de lunes a viernes.</p>
              </div>
    <div class="card" style="width:30rem; background-color: rgba(116, 116, 116, 0.473)">
            <article class="card-body mx-auto" style="max-width: 400px;">
                <h4 class="card-title mt-3 text-center">RESERVA TU CONSOLA</h4>
                <br>
                <p class="text-center">Diligencia el formulario para proceder</p>
                
                <form method="post" action="../registro_reservacion">
                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-gamepad" aria-hidden="true"></i> </span>
                    </div>
                                    <select class="form-control" name="consola">
                                     <option>-- Seleccione consola --</option>
                                     <%
                                         consolas_DAO ca= new consolas_DAO();
                                         List<consolas> listciu = ca.listar();
                                         Iterator<consolas> iterciu = listciu.iterator();
                                         consolas cat = null;
                                         while (iterciu.hasNext()) {
                                             cat = iterciu.next();
                                     %>
                                     <option value="<%= cat.getid_consola() %>"><%= cat.getnombre_consola()%></option>
                                     <%}%>
                                 </select>
                    
                </div> 

                    <div class="form-group">
                            <label >Fecha de inicio</label>
                            <input name="fecha" type="date" max="3000-12-31" min="1000-01-01" class="form-control">
                           </div>
                    
                    <div class="form-group">
                                <label >Hora de inicio</label>
                                  <input name="hora" class="form-control" type="time" value="22:00:00">
                              </div>
                              <br>
                              
                <div class="form-group">
                    <button type="submit" class="btn btn-warning btn-block"> Reservar  </button>
                </div>  
                              
            </form>
            </article>
            </div> 
            
        </center>
        <br>
        <br>
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