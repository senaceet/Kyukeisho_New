<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Kyukeisho_Cliente</title>
  <link rel="icon" type="image/png" href="https://fotos.subefotos.com/e296fe07575583952d4e106565eb2181o.png">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
    integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

  <style>
    hr {
      background-color: rgb(255, 230, 0);
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
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2 width:8rem" type="search" placeholder="Buscar" aria-label="Search">
          <button class="btn btn-outline-warning my-2 my-sm-0 mr-sm-2" type="submit"><i class="fa fa-search"
              aria-hidden="true"></i> Buscar </button>
        </form>
        <ul class="navbar-nav ">
            <li class="nav-item dropdown mr-2">
              <a class="nav-link dropdown-toggle navbar-DARK" href="#" id="navbarDropdown" role="button"
                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color:rgb(255, 217, 0)">
                <i><img height="50" src="https://miro.medium.com/max/1024/1*3CVNY3sWvZrS1NckQ9kIqQ.jpeg" alt="" ></i>               
                ${correo}
              </a>
                <div class="dropdown-menu mr-sm-2 " aria-labelledby="navbarDropdown" style="width:15rem; background-color: #343a40">
                 <a class="dropdown-item" href="#" style="color:rgb(255, 217, 0)">Mis reservaciones</a>
                 <a class="dropdown-item" href="Perfil_Cliente.html" style="color:rgb(255, 217, 0)">Perfil</a>
                 <a class="dropdown-item" href="#" style="color:rgb(255, 217, 0)">¿Necesitas ayuda?</a>
                 <hr>
                 <a class="dropdown-item" href="Controlador?accion=Salir" style="color:rgb(255, 217, 0)">Cerrar Sesión</a>
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

      <div class="col-xl-2 text-left" style="background-color: rgb(255, 251, 0)">
          <button class="btn text-right btn-lg dropdown-toggle" style="border-color: rgba(133, 133, 133, 0)" type="button"
          data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fa fa-bars" aria-hidden="true"></i><strong> Categorias</strong>
        </button>
        <div class="dropdown-menu btn-lg " aria-labelledby="dropdownMenuButton"
          style="width:14rem; background-color: rgb(255, 251, 0)">
          <a href="../juegos_Xbox_one_pagina_1.html" class="dropdown-item" style="color: rgb(0, 0, 0)">Xbox One</a>
          <a class="dropdown-item" style="color: rgb(0, 0, 0)" href="#">Playstation 4</a>
          <a class="dropdown-item" style="color: rgb(0, 0, 0)" href="#">PC</a>
          <a class="dropdown-item" style="color: rgb(0, 0, 0)" href="#">Productos y accesorios</a>
        </div>
      </div>
      <div class="col-xl-3 text-left" style="background-color: rgb(255, 251, 0)">
          <a href="../Reservacion.html">
            <button type="button" style="border-color: rgba(133, 133, 133, 0)" class="btn btn-outline-dark">
              <h5><strong><i class="fa fa-gamepad" aria-hidden="true"></i> Reservaciones</strong></h5>
            </button>
          </a>
        </div>
        <div class="col-xl-3 text-left" style="background-color: rgb(255, 251, 0)">
          <a href="../Conocenos.html">
            <button type="button" style="border-color: rgba(133, 133, 133, 0)" class="btn btn-outline-dark">
              <h5><strong><i class="fa fa-users" aria-hidden="true"></i> Conocenos</strong></h5>
            </button>
          </a>
        </div>
        <div class="col-xl-2 text-left" style="background-color: rgb(255, 251, 0)">
          <a href="../contactenos.html">
            <button type="button" style="border-color: rgba(133, 133, 133, 0)"
              class="btn btn-outline-dark">
              <h5><strong><i class="fa fa-phone" aria-hidden="true"></i> Contactanos</strong></h5>
            </button>
          </a>
        </div>
        <div class="col-xl-2 text-left" style="background-color: rgb(255, 251, 0)">
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
      <div class="col-xl-8" style="background-color: rgba(255, 251, 0, 0)" >
        <div class="bd-example" >
          <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
              <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
            </ol>
            <div align="right" class="carousel-inner"  >
              <div class="carousel-item active" >
                <img height="600" src="https://i2.wp.com/revistaelparcero.com/wp-content/uploads/2015/11/LogoSOFA_b.png?resize=901%2C602"
                  class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                </div>
                <br>
                <br>
                <center>
                <a href="https://www.enelsofa.com/sofa2019/">
                <button type="button" class="btn btn-warning">VER</button>?
                </a>
              </center> 
              </div>

              <div class="carousel-item">
                <img height="600" src="https://image.redbull.com/rbcom/010/2016-12-06/1331833245065_2/0001/0/1500/1000/1/la-lista-de-los-mejores-juegos-de-2016.jpg"
                  class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <p class="h5">Ve los ultimos estrenos en videojuegos</p>
                </div>  
                <br>
                <br>
                <center>
                <a href="/Cliente/Cliente_sin_iniciar_sesion.html#juegos">             
                <button type="button" class="btn btn-warning">VER</button>?
                </a>
              </center> 
              </div>
              <div class="carousel-item">
                <img height="600" src="https://o.aolcdn.com/images/dims?quality=85&image_uri=https%3A%2F%2Fo.aolcdn.com%2Fimages%2Fdims%3Fcrop%3D1350%252C819%252C0%252C0%26quality%3D85%26format%3Djpg%26resize%3D1600%252C972%26image_uri%3Dhttps%253A%252F%252Fs.yimg.com%252Fos%252Fcreatr-uploaded-images%252F2019-03%252Fe6af7d20-45d2-11e9-b7d4-8cb4ff4492a4%26client%3Da1acac3e1b3290917d92%26signature%3D34581802504d8324f7c340348d513c1811eee15b&client=amp-blogside-v2&signature=a060172810e83758f1bb6503dc34013f6f1a6c91"
                  class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <p class="h5">Ve nuestros mas recientes productos.</p>
                </div>
                <br>
                <br>
                <center>
                <a href="Productos_1.html">             
                <button type="button" class="btn btn-warning">VER</button>?
                </a>
              </center> 
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Anterior</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Siguiente</span>
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</center>
<br>
<hr>
<br>

<div class="container-fluid" style="background-size: 100% 100%; background-image:url(https://image.redbull.com/rbcom/010/2017-02-28/1331847102595_2/0100/0/1/the-legend-of-zelda-breath-of-the-wild.jpg)">
  <div class="row" >
    <div class="col-xl">
      <center>
            <strong><h1 align="center" >JUEGOS</h1></strong>
      </center>
    </div>
  </div>
  <BR>
    <div class="row">
        <div class="col-xl-4">
            <center>
            <a href="/juegos_Xbox_one_pagina_1.html">
            <div class="card" style="max-width: 35rem; border-color: rgb(40, 139, 15); background-color: rgba(133, 133, 133, 0)">
                <div class="card-header">
                    <H1 align="center" style="color: rgb(40, 139, 15)" >Xbox</H1>
                </div>
                <div class="card-body text-success">
                      <img   height="400" src="https://fotos.subefotos.com/b29d399183fe5e39fa80baabd738169ao.png" class="card-img-top">                  
                  </div>
              </div>
            </a>
            <button class="btn btn-success btn-block"  type="button" data-toggle="collapse" data-target="#multiCollapse_xbox_one" aria-expanded="false" aria-controls="multiCollapseExample2"><h1>Categorias</h1></button>
            <div class="collapse multi-collapse" style="width: 35rem;"  id="multiCollapse_xbox_one">
              <div class="card card-body text-left" style="background-color: rgba(102, 255, 0, 0.336)">
                <a href="#" style="color: white">Acción </a>
                <a href="#" style="color: white">Lucha</a>
                <a href="#" style="color: white">Beat 'em up</a>
                <a href="#" style="color: white"> Arcade </a>
                <a href="#" style="color: white"> Plataformas </a>
                <a href="#" style="color: white">Disparos </a>
                <a href="#" style="color: white">Disparos en primera persona </a>
                <a href="#" style="color: white">Disparos en tercera persona </a>
                <a href="#" style="color: white">Shoot 'em up </a>
                <a href="#" style="color: white"> Estrategia</a>
                <a href="#" style="color: white">Estrategia en tiempo real</a>
                <a href="#" style="color: white">Estrategia por turnos</a>
                <a href="#" style="color: white">Simulación</a>
                <a href="#" style="color: white">Simulación de vehículos</a>
                <a href="#" style="color: white">Simulación de construcción</a>
                <a href="#" style="color: white">Simulación de vida</a>
                <a href="#" style="color: white">Simulación de combate</a>
                <a href="#" style="color: white">Deporte</a>
                <a href="#" style="color: white">Carreras</a>
                <a href="#" style="color: white">Aventura</a>
                <a href="#" style="color: white">Aventura conversacional</a>
                <a href="#" style="color: white">Aventura gráfica</a>
                <a href="#" style="color: white">Acción-aventura</a>
                <a href="#" style="color: white">Survival horror</a>
                <a href="#" style="color: white">Sigilo</a>
                <a href="#" style="color: white">Battle Royale</a>
                <a href="#" style="color: white">Rol</a>
                <a href="#" style="color: white">Sandbox</a>
                <a href="#" style="color: white">Musical</a>
                <a href="#" style="color: white">Agilidad mental / Puzzle</a>
                <a href="#" style="color: white">Party games</a>
                <a href="#" style="color: white">Educación</a>
                <a href="#" style="color: white">Tipos de videojuegos</a>
              </div>
            </div>
            <br>
          </div>
        </center>

          <div class="col-xl-4">                   
            <center>
              <a href="#">
              <div class="card" style="max-width: 35rem; border-color: rgb(0, 60, 255); background-color: rgba(133, 133, 133, 0)">
                  <div class="card-header">
                    <H1 align="center" style="color: rgb(0, 89, 255)" >playstation 4</H1>
                  </div>
                  <div class="card-body text-success">
                        <img  height="400" src="https://fotos.subefotos.com/b0e2baf7c6561a42651cc4c08700011do.png" class="card-img-top">                  
                    </div>
                </div>
              </a>
            <button class="btn btn-primary btn-block" type="button" data-toggle="collapse" data-target="#multiCollapse_ps4" aria-expanded="false" aria-controls="multiCollapseExample2"><h1>Categorias</h1></button>
            <div class="collapse multi-collapse" style="width: 35rem;"  id="multiCollapse_ps4">
              <div class="card card-body text-left" style="background-color: rgba(0, 58, 247, 0.336)">
                <a href="#" style="color: white">Acción </a>
                <a href="#" style="color: white">Lucha</a>
                <a href="#" style="color: white">Beat 'em up</a>
                <a href="#" style="color: white"> Arcade </a>
                <a href="#" style="color: white"> Plataformas </a>
                <a href="#" style="color: white">Disparos </a>
                <a href="#" style="color: white">Disparos en primera persona </a>
                <a href="#" style="color: white">Disparos en tercera persona </a>
                <a href="#" style="color: white">Shoot 'em up </a>
                <a href="#" style="color: white"> Estrategia</a>
                <a href="#" style="color: white">Estrategia en tiempo real</a>
                <a href="#" style="color: white">Estrategia por turnos</a>
                <a href="#" style="color: white">Simulación</a>
                <a href="#" style="color: white">Simulación de vehículos</a>
                <a href="#" style="color: white">Simulación de construcción</a>
                <a href="#" style="color: white">Simulación de vida</a>
                <a href="#" style="color: white">Simulación de combate</a>
                <a href="#" style="color: white">Deporte</a>
                <a href="#" style="color: white">Carreras</a>
                <a href="#" style="color: white">Aventura</a>
                <a href="#" style="color: white">Aventura conversacional</a>
                <a href="#" style="color: white">Aventura gráfica</a>
                <a href="#" style="color: white">Acción-aventura</a>
                <a href="#" style="color: white">Survival horror</a>
                <a href="#" style="color: white">Sigilo</a>
                <a href="#" style="color: white">Battle Royale</a>
                <a href="#" style="color: white">Rol</a>
                <a href="#" style="color: white">Sandbox</a>
                <a href="#" style="color: white">Musical</a>
                <a href="#" style="color: white">Agilidad mental / Puzzle</a>
                <a href="#" style="color: white">Party games</a>
                <a href="#" style="color: white">Educación</a>
                <a href="#" style="color: white">Tipos de videojuegos</a>
              </div>
            </div>
          </div>
        </center>

          <div class="col-xl-4">
              <center>

              <a href="#">
              <div class="card" style="max-width: 35rem; border-color: rgb(121, 123, 126); background-color: rgba(133, 133, 133, 0)">
                  <div class="card-header">
                      <H1 align="center" style="color: rgb(94, 95, 99)" >PC</H1>
                    </div>
                  <div class="card-body text-success">
                        <img  height="400" src="https://www.logolynx.com/images/logolynx/45/4571bf8e100a1b5253b6dd545e43c77b.jpeg" class="card-img-top">                  
                    </div>
                </div>
              </a>
              <button class="btn btn-secondary btn-block"  type="button" data-toggle="collapse" data-target="#multiCollapseExample2" aria-expanded="false" aria-controls="multiCollapseExample2"><h1>Categorias</h1></button>
              <div class="collapse multi-collapse" style="width: 35rem;"  id="multiCollapseExample2">
                <div class="card card-body text-left" style="background-color: rgba(119, 119, 119, 0.336)">
                  <a href="#" style="color: white">Acción </a>
                  <a href="#" style="color: white">Lucha</a>
                  <a href="#" style="color: white">Beat 'em up</a>
                  <a href="#" style="color: white"> Arcade </a>
                  <a href="#" style="color: white"> Plataformas </a>
                  <a href="#" style="color: white">Disparos </a>
                  <a href="#" style="color: white">Disparos en primera persona </a>
                  <a href="#" style="color: white">Disparos en tercera persona </a>
                  <a href="#" style="color: white">Shoot 'em up </a>
                  <a href="#" style="color: white"> Estrategia</a>
                  <a href="#" style="color: white">Estrategia en tiempo real</a>
                  <a href="#" style="color: white">Estrategia por turnos</a>
                  <a href="#" style="color: white">Simulación</a>
                  <a href="#" style="color: white">Simulación de vehículos</a>
                  <a href="#" style="color: white">Simulación de construcción</a>
                  <a href="#" style="color: white">Simulación de vida</a>
                  <a href="#" style="color: white">Simulación de combate</a>
                  <a href="#" style="color: white">Deporte</a>
                  <a href="#" style="color: white">Carreras</a>
                  <a href="#" style="color: white">Aventura</a>
                  <a href="#" style="color: white">Aventura conversacional</a>
                  <a href="#" style="color: white">Aventura gráfica</a>
                  <a href="#" style="color: white">Acción-aventura</a>
                  <a href="#" style="color: white">Survival horror</a>
                  <a href="#" style="color: white">Sigilo</a>
                  <a href="#" style="color: white">Battle Royale</a>
                  <a href="#" style="color: white">Rol</a>
                  <a href="#" style="color: white">Sandbox</a>
                  <a href="#" style="color: white">Musical</a>
                  <a href="#" style="color: white">Agilidad mental / Puzzle</a>
                  <a href="#" style="color: white">Party games</a>
                  <a href="#" style="color: white">Educación</a>
                  <a href="#" style="color: white">Tipos de videojuegos</a>
                </div>
              </div>
            </div>
        </div>
</div>
</center>

<hr>

<div class="container-fluid" style="background-size: 100%; background-image:url(https://media.kingston.com/hyperx/downloads/logo-products-screensaver-1920x1200.jpg)">
    <div class="row" >
      <div class="col-xl-12">
        <center>
            <a HREF="/Productos_1.html">
            <strong><h1  style="color: rgb(255, 153, 0)">PRODUCTOS Y ACCESORIOS</h1></strong>
            </a>
        </center>
      </div>
    </div>
    <BR>
      <div class="row">
            <div class="col-lg-2">
                <br>
                <br>
                <CENTER>
                <div class="card text-white bg-warning mb-3" style="max-width: 18rem;">
                        <div class="card-header">CATEGORIAS</div>
                        <div class="card-body">
                                <a href="juegos_Xbox_one_pagina_1.html" class="dropdown-item" style="color: rgb(0, 0, 0)"><h6 align="left">Accesorios para celulares</h6></a>
                                <a class="dropdown-item" style="color: rgb(0, 0, 0)" href="#"><h6 align="left">Gaming</h6></a>
                                <a class="dropdown-item" style="color: rgb(0, 0, 0)" href="#"><h6 align="left">Infantil</h6></a>
                                <a class="dropdown-item" style="color: rgb(0, 0, 0)" href="#"><h6 align="left">Belleza</h6></a>
                                <a class="dropdown-item" style="color: rgb(0, 0, 0)" href="#"><h6 align="left">Deportes</h6></a>
                                <a class="dropdown-item" style="color: rgb(0, 0, 0)" href="#"><h6 align="left">Celulares</h6></a>

                                <div class="col clearfix">
                                        <span class="float-left">
                                            <div align="left" class="btn-group dropright">
                                               <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                               Hogar
                                               </button>
                                               <div class="dropdown-menu bg-warning">
                                                    <a class="dropdown-item" style="color: rgb(0, 0, 0)" href="#"><h6 align="left">Mantas</h6></a>
                                                    <a class="dropdown-item" style="color: rgb(0, 0, 0)" href="#"><h6 align="left">Toalllas</h6></a>
                                                    <a class="dropdown-item" style="color: rgb(0, 0, 0)" href="#"><h6 align="left">Decoración</h6></a>
                                                    <a class="dropdown-item" style="color: rgb(0, 0, 0)" href="#"><h6 align="left">Edredones y sábanas</h6></a>
                                               </div>
                                            </div>
                                        </span>
                                       </div>
                                
                                       <div class="col clearfix">
                                          <span class="float-left">
                                              <div align="left" class="btn-group dropright">
                                                 <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                   Consolas
                                                 </button>
                                                 <div class="dropdown-menu bg-warning">
                                                      <a class="dropdown-item" style="color: rgb(0, 0, 0)" href="#"><h6 align="left">Xbox One</h6></a>
                                                      <a class="dropdown-item" style="color: rgb(0, 0, 0)" href="#"><h6 align="left">Xbox 360</h6></a>
                                                      <a class="dropdown-item" style="color: rgb(0, 0, 0)" href="#"><h6 align="left">PS4</h6></a>
                                                      <a class="dropdown-item" style="color: rgb(0, 0, 0)" href="#"><h6 align="left">PS3</h6></a>
                                                 </div>
                                              </div>
                                          </span>
                                         </div>
                        </div>
                    </CENTER>
                </div>
          <div class="col-lg-10">
<!-- PRODUCTOS -->
<div class="container-fluid">
        <div class="row">
          <div class="col-md-12 ">
            <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="0">
              <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
              </ol>
              <div class="carousel-inner">
                <div class="item carousel-item active" style="background-color: rgba(0, 0, 0, 0.363)">
                  <div class="row">
                    <div class="col-sm-12" style="background-color: rgb(255, 208, 0)">
                      <h1 style="color: rgb(0, 0, 0)">GAMING</h1>
                    </div>
                  </div>
                  <div class="row">
                    <!-- Gaming -->
                    <div class="col-sm-3">
                      <div class="thumb-wrapper">
                        <span class="wish-icon"><i class="fa fa-star" aria-hidden="true"></i></span>
                        <div class="img-box" style="border-color:rgba(255, 255, 255, 0)">
                          <img src="https://media.flixcar.com/f360cdn/Logitech-1435850841-png"
                            class="img-responsive img-fluid" alt="">
                        </div>
                        <div class="thumb-content">
                          <h5 style="color:rgb(255, 217, 0)" class="card-title">Mouse Gamer Logitech G Pro</h5>
                          <div class="star-rating">
                            <ul class="list-inline">
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                            </ul>
                          </div>
                          <br>
                          <a href="#" class="btn btn-success" data-target="#Mouse_Gamer_Logitech_G_Pro_Gaming"
                            data-toggle="modal">Detalles</a>
                          <a href="#" class="btn btn-info">$100.000</a>
                        </div>
                      </div>
                    </div>
                    <div class="col-sm-3">
                      <div class="thumb-wrapper">
                        <span class="wish-icon"><i class="fa fa-star" aria-hidden="true"></i></span>
                        <div class="img-box">
                          <img
                            src="https://www.freepngimg.com/thumb/headphones/16-black-headphones-png-image-thumb.png"
                            class="img-responsive img-fluid" alt="">
                        </div>
                        <div class="thumb-content">
                          <h5 style="color:rgb(255, 217, 0)" class="card-title"> Audifonos negros</h5>
                          <div class="star-rating">
                            <ul class="list-inline">
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                            </ul>
                          </div>
                          <br>
                          <a href="#" class="btn btn-success" data-target="#Audifonos_negros"
                            data-toggle="modal">Detalles</a>
                          <a href="#" class="btn btn-info">$100.000</a>
                        </div>
                      </div>
                    </div>
                    <div class="col-sm-3">
                      <div class="thumb-wrapper">
                        <span class="wish-icon"><i class="fa fa-star" aria-hidden="true"></i></span>
                        <div class="img-box">
                          <img src="https://www.circuit.com.uy/content/images/thumbs/0007458_teclado-gamer-weibo-wb539_550.png"
                            class="img-responsive img-fluid" alt="">
                        </div>
                        <div class="thumb-content">
                          <h5 style="color:rgb(255, 217, 0)" class="card-title">Teclado Gamer Weibo</h5>
                          <div class="star-rating">
                            <ul class="list-inline">
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                            </ul>
                          </div>
                          <br>
                          <a href="#" class="btn btn-success" data-target="#Teclado_Gamer_Weibo_Wb539"
                            data-toggle="modal">Detalles</a>
                          <a href="#" class="btn btn-info">$100.000</a>
                        </div>
                      </div>
                    </div>
                    <div class="col-sm-3">
                      <div class="thumb-wrapper">
                        <span class="wish-icon"><i class="fa fa-star" aria-hidden="true"></i></span>
                        <div class="img-box">
                          <img
                            src="https://www.nitro-pc.es/image/cache/catalog/Perifericos/Altavoces/Tacens%20Mars%20Gaming%20Altavoces%202.1%20MS2/Imagen%202-300x300.png"
                            class="img-responsive img-fluid" alt="">
                        </div>
                        <div class="thumb-content">
                          <h5 style="color:rgb(255, 217, 0)" class="card-title">Altavoces gaming</h5>
                          <div class="star-rating">
                            <ul class="list-inline">
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                            </ul>
                          </div>
                          <br>
                          <a href="#" class="btn btn-success" data-target="#Altavoces_gaming"
                            data-toggle="modal">Detalles</a>
                          <a href="#" class="btn btn-info">$100.000</a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="item carousel-item" style="background-color: rgba(0, 0, 0, 0.363)">
                  <div class="row">
                    <div class="col-sm-12" style="background-color: rgb(255, 208, 0)">
                      <h1 style="color: rgb(0, 0, 0)">CONSOLAS</h1>
                    </div>
                  </div>
                  <!-- Consolas -->
                  <div class="row">
                    <div class="col-sm-3">
                      <div class="thumb-wrapper">
                        <span class="wish-icon"><i class="fa fa-star" aria-hidden="true"></i></span>
                        <div class="img-box">
                          <img
                            src="https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RW2OuB?ver=2804"
                            class="img-responsive img-fluid" alt="">
                        </div>
                        <div class="thumb-content">
                          <h5 style="color:rgb(255, 217, 0)" class="card-title">Xbox One S</h5>
                          <div class="star-rating">
                            <ul class="list-inline">
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                            </ul>
                          </div>
                          <br>
                          <a href="#" class="btn btn-success" data-target="#Xbox_One_S"
                            data-toggle="modal">Detalles</a>
                          <a href="#" class="btn btn-info">$100.000</a>
                        </div>
                      </div>
                    </div>
                    <div class="col-sm-3">
                      <div class="thumb-wrapper">
                        <span class="wish-icon"><i class="fa fa-star" aria-hidden="true"></i></span>
                        <div class="img-box">
                          <img
                            src="https://upload.wikimedia.org/wikipedia/commons/1/17/Xbox_360_S.png"
                            class="img-responsive img-fluid" alt="">
                        </div>
                        <div class="thumb-content">
                          <h5 style="color:rgb(255, 217, 0)" class="card-title">xbox 360</h5>
                          <div class="star-rating">
                            <ul class="list-inline">
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                            </ul>
                          </div>
                          <br>
                          <a href="#" class="btn btn-success" data-target="#xbox_360" data-toggle="modal">Detalles</a>
                          <a href="#" class="btn btn-info">$100.000</a>
                        </div>
                      </div>
                    </div>
                    <div class="col-sm-3">
                      <div class="thumb-wrapper">
                        <span class="wish-icon"><i class="fa fa-star" aria-hidden="true"></i></span>
                        <div class="img-box">
                          <img
                            src="https://www.stickpng.com/assets/images/585ea27bcb11b227491c350b.png"
                            class="img-responsive img-fluid" alt="">
                        </div>
                        <div class="thumb-content">
                          <h5 style="color:rgb(255, 217, 0)" class="card-title">PS4</h5>
                          <div class="star-rating">
                            <ul class="list-inline">
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                            </ul>
                          </div>
                          <br>
                          <a href="#" class="btn btn-success" data-target="#PS4" data-toggle="modal">Detalles</a>
                          <a href="#" class="btn btn-info">$100.000</a>
                        </div>
                      </div>
                    </div>
                    <div class="col-sm-3">
                      <div class="thumb-wrapper">
                        <span class="wish-icon"><i class="fa fa-star" aria-hidden="true"></i></span>
                        <div class="img-box">
                          <img src="https://upload.wikimedia.org/wikipedia/commons/4/40/PS3-slim-console.png"
                            class="img-responsive img-fluid" alt="">
                        </div>
                        <div class="thumb-content">
                          <h5 style="color:rgb(255, 217, 0)" class="card-title">PS3</h5>
                          <div class="star-rating">
                            <ul class="list-inline">
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                            </ul>
                          </div>
                          <br>
                          <a href="#" class="btn btn-success" data-target="#PS3" data-toggle="modal">Detalles</a>
                          <a href="#" class="btn btn-info">$100.000</a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="item carousel-item" style="background-color: rgba(0, 0, 0, 0.363)">
                  <div class="row">
                    <div class="col-sm-12" style="background-color: rgb(255, 208, 0)">
                      <h1 style="color: rgb(0, 0, 0)">Accesorios</h1>
                    </div>
                  </div>
                  <!-- Accesorios -->
                  <div class="row">
                    <div class="col-sm-3">
                      <div class="thumb-wrapper">
                        <span class="wish-icon"><i class="fa fa-star" aria-hidden="true"></i></span>
                        <div class="img-box">
                          <img src="https://img.fcbayern.com/image/upload/f_auto,q_auto/t_productstage/eCommerce/produkte/23618/inear-kopfhoerer.png"
                            class="img-responsive img-fluid" alt="">
                        </div>
                        <div class="thumb-content">
                          <h5 style="color:rgb(255, 217, 0)" class="card-title">Auriculares oscuros</h5>
                          <div class="star-rating">
                            <ul class="list-inline">
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                            </ul>
                          </div>
                          <br>
                          <a href="#" class="btn btn-success" data-target="#Auriculares_oscuros"
                            data-toggle="modal">Detalles</a>
                          <a href="#" class="btn btn-info">$100.000</a>
                        </div>
                      </div>
                    </div>
                    <div class="col-sm-3">
                      <div class="thumb-wrapper">
                        <span class="wish-icon"><i class="fa fa-star" aria-hidden="true"></i></span>
                        <div class="img-box">
                          <img
                            src="https://shopincdn.ovh/costomovil/cache/images/_product_catalogue_/8/1/1/0/565x565_q91_cr0_fix1/Memoria-USB-Samsung-BAR-Plus-256GB-Plata-i2.png"
                            class="img-responsive img-fluid" alt="">
                        </div>
                        <div class="thumb-content">
                          <h5 style="color:rgb(255, 217, 0)" class="card-title">Memoria USB Samsung</h5>
                          <div class="star-rating">
                            <ul class="list-inline">
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                            </ul>
                          </div>
                          <br>
                          <a href="#" class="btn btn-success" data-target="#Memoria_USB_Samsung" data-toggle="modal">Detalles</a>
                          <a href="#" class="btn btn-info">$100.000</a>
                        </div>
                      </div>
                    </div>
                    <div class="col-sm-3">
                      <div class="thumb-wrapper">
                        <span class="wish-icon"><i class="fa fa-star" aria-hidden="true"></i></span>
                        <div class="img-box">
                          <img
                            src="https://mobomx.vteximg.com.br/arquivos/ids/156268-600-600/zagg-protector-glass-defense-friendly-screen-fg-iphone-7-6-6s-4-7-pulgadas-portada-01.png?v=636724782989930000"
                            class="img-responsive img-fluid" alt="">
                        </div>
                        <div class="thumb-content">
                          <h5 style="color:rgb(255, 217, 0)" class="card-title">Vidrios Protectores</h5>
                          <div class="star-rating">
                            <ul class="list-inline">
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                            </ul>
                          </div>
                          <br>
                          <a href="#" class="btn btn-success" data-target="#Vidrios_Protectores" data-toggle="modal">Detalles</a>
                          <a href="#" class="btn btn-info">$100.000</a>
                        </div>
                      </div>
                    </div>
                    <div class="col-sm-3">
                      <div class="thumb-wrapper">
                        <span class="wish-icon"><i class="fa fa-star" aria-hidden="true"></i></span>
                        <div class="img-box">
                          <img src="https://i.pinimg.com/originals/f1/07/70/f107707875ea2228c1169e81ccfbbcbe.png"
                            class="img-responsive img-fluid" alt="">
                        </div>
                        <div class="thumb-content">
                          <h5 style="color:rgb(255, 217, 0)" class="card-title">Fundas de para celular</h5>
                          <div class="star-rating">
                            <ul class="list-inline">
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                              <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                            </ul>
                          </div>
                          <br>
                          <a href="#" class="btn btn-success" data-target="#Fundas_para_celular"
                            data-toggle="modal">Detalles</a>
                          <a href="#" class="btn btn-info">$100.000</a>
                        </div>
                      </div>
                    </div>
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
  
      <!-- Detalles de zona gaming-->
      <div class="modal fade" id="Mouse_Gamer_Logitech_G_Pro_Gaming" tabindex="-1" role="dialog"
        aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
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
                  <img width="350" height="450"
                    src="https://media.flixcar.com/f360cdn/Logitech-1435850841-png">
                </div>
                <div class="col-md-6">
                  <table class="table table-borderless">
                    <tr>
                      <th>Nombre del Producto:</th>
                      <td>Mouse Gamer Logitech G Pro Gaming</td>
                    </tr>
                    <tr>
                      <th>Descripción:</th>
                      <td>...</td>
                    </tr>
                    <tr>
                      <th>Caracteristicas:</th>
                      <td>...</td>
                    </tr>
                    <tr>
                      <th>Valoración del Producto</th>
                      <td>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                      </td>
                    </tr>
                    <tr>
                      <th>Precio:</th>
                      <td>$100.000</td>
                    </tr>
                  </table>
                </div>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
          </div>
        </div>
      </div>
      </div>
      <div class="modal fade" id="Audifonos_negros" tabindex="-1" role="dialog"
        aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
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
                  <img width="350" height="450"
                    src="https://www.freepngimg.com/thumb/headphones/16-black-headphones-png-image-thumb.png">
                </div>
                <div class="col-md-6">
                  <table class="table table-borderless">
                    <tr>
                    <tr>
                      <th>Nombre del Producto:</th>
                      <td>Audifonos negros</td>
                    </tr>
                    <tr>
                      <th>Descripción:</th>
                      <td>...</td>
                    </tr>
                    <tr>
                      <th>Caracteristicas:</th>
                      <td>...</td>
                    </tr>
                    <tr>
                      <th>Valoración del Producto</th>
                      <td>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                      </td>
                    </tr>
                    <tr>
                      <th>Precio:</th>
                      <td>$100.000</td>
                    </tr>
                  </table>
                </div>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
          </div>
        </div>
      </div>
      </div>
      <div class="modal fade" id="Teclado_Gamer_Weibo_Wb539" tabindex="-1" role="dialog"
        aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
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
                  <img width="350" height="450"
                    src="https://www.circuit.com.uy/content/images/thumbs/0007458_teclado-gamer-weibo-wb539_550.png">
                </div>
                <div class="col-md-6">
                  <table class="table table-borderless">
                    <tr>
                      <th>Nombre del Producto:</th>
                      <td>Teclado Gamer Weibo Wb539</td>
                    </tr>
                    <tr>
                      <th>Descripción:</th>
                      <td>...</td>
                    </tr>
                    <tr>
                      <th>Caracteristicas:</th>
                      <td>...</td>
                    </tr>
                    <tr>
                      <th>Valoración del Producto</th>
                      <td>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                      </td>
                    </tr>
                    <tr>
                      <th>Precio:</th>
                      <td>$100.000</td>
                    </tr>
                  </table>
                </div>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
          </div>
        </div>
      </div>
      </div>
      <div class="modal fade" id="Altavoces_gaming" tabindex="-1" role="dialog"
        aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
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
                  <img width="350" height="450"
                    src="https://www.nitro-pc.es/image/cache/catalog/Perifericos/Altavoces/Tacens%20Mars%20Gaming%20Altavoces%202.1%20MS2/Imagen%202-300x300.png">
                </div>
                <div class="col-md-6">
                  <table class="table table-borderless">
                    <tr>
                      <th>Nombre del Producto:</th>
                      <td>Altavoces gaming</td>
                    </tr>
                    <tr>
                      <th>Descripción:</th>
                      <td>...</td>
                    </tr>
                    <tr>
                      <th>Caracteristicas:</th>
                      <td>...</td>
                    </tr>
                    <tr>
                      <th>Valoración del Producto</th>
                      <td>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                      </td>
                    </tr>
                    <tr>
                      <th>Precio:</th>
                      <td>$100.000</td>
                    </tr>
                  </table>
                </div>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
          </div>
        </div>
      </div>
      </div>
  
      <!-- Detalles de Consolas -->
      <div class="modal fade" id="Xbox_One_S" tabindex="-1" role="dialog"
        aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
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
                  <img width="350" height="450"
                    src="https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RW2OuB?ver=2804">
                </div>
                <div class="col-md-6">
                  <table class="table table-borderless">
                    <tr>
                      <th>Nombre del Producto:</th>
                      <td>Xbox One S</td>
                    </tr>
                    <tr>
                      <th>Descripción:</th>
                      <td>...</td>
                    </tr>
                    <tr>
                      <th>Caracteristicas:</th>
                      <td>...</td>
                    </tr>
                    <tr>
                      <th>Valoración del Producto</th>
                      <td>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                      </td>
                    </tr>
                    <tr>
                      <th>Precio:</th>
                      <td>$100.000</td>
                    </tr>
                  </table>
                </div>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
          </div>
        </div>
      </div>
      </div>
      <div class="modal fade" id="xbox_360" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle"
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
                  <img width="350" height="450"
                    src="https://upload.wikimedia.org/wikipedia/commons/1/17/Xbox_360_S.png">
                </div>
                <div class="col-md-6">
                  <table class="table table-borderless">
                    <tr>
                      <th>Nombre del Producto:</th>
                      <td>xbox 360</td>
                    </tr>
                    <tr>
                      <th>Descripción:</th>
                      <td>...</td>
                    </tr>
                    <tr>
                      <th>Caracteristicas:</th>
                      <td>...</td>
                    </tr>
                    <tr>
                      <th>Valoración del Producto</th>
                      <td>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                      </td>
                    </tr>
                    <tr>
                      <th>Precio:</th>
                      <td>$100.000</td>
                    </tr>
                  </table>
                </div>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
          </div>
        </div>
      </div>
      </div>
      <div class="modal fade" id="PS4" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle"
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
                  <img width="350" height="450"
                    src="https://www.stickpng.com/assets/images/585ea27bcb11b227491c350b.png">
                </div>
                <div class="col-md-6">
                  <table class="table table-borderless">
                    <tr>
                      <th>Nombre del Producto:</th>
                      <td>PS4</td>
                    </tr>
                    <tr>
                      <th>Descripción:</th>
                      <td>...</td>
                    </tr>
                    <tr>
                      <th>Caracteristicas:</th>
                      <td>...</td>
                    </tr>
                    <tr>
                      <th>Valoración del Producto</th>
                      <td>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                      </td>
                    </tr>
                    <tr>
                      <th>Precio:</th>
                      <td>$100.000</td>
                    </tr>
                  </table>
                </div>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
          </div>
        </div>
      </div>
      </div>
      <div class="modal fade" id="PS3" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle"
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
                  <img width="350" height="450"
                    src="https://upload.wikimedia.org/wikipedia/commons/4/40/PS3-slim-console.png">
                </div>
                <div class="col-md-6">
                  <table class="table table-borderless">
                    <tr>
                      <th>Nombre del Producto:</th>
                      <td>PS3</td>
                    </tr>
                    <tr>
                      <th>Descripción:</th>
                      <td>...</td>
                    </tr>
                    <tr>
                      <th>Caracteristicas:</th>
                      <td>...</td>
                    </tr>
                    <tr>
                      <th>Valoración del Producto</th>
                      <td>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                      </td>
                    </tr>
                    <tr>
                      <th>Precio:</th>
                      <td>$100.000</td>
                    </tr>
                  </table>
                </div>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
          </div>
        </div>
      </div>
      </div>
  
      <!-- Detalles accesorios -->
      <div class="modal fade" id="Auriculares_oscuros" tabindex="-1" role="dialog"
        aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
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
                  <img width="350" height="450" src="https://img.fcbayern.com/image/upload/f_auto,q_auto/t_productstage/eCommerce/produkte/23618/inear-kopfhoerer.png">
                </div>
                <div class="col-md-6">
                  <table class="table table-borderless">
                    <tr>
                      <th>Nombre del Producto:</th>
                      <td>Auriculares oscuros</td>
                    </tr>
                    <tr>
                      <th>Descripción:</th>
                      <td>...</td>
                    </tr>
                    <tr>
                      <th>Caracteristicas:</th>
                      <td>...</td>
                    </tr>
                    <tr>
                      <th>Valoración del Producto</th>
                      <td>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                      </td>
                    </tr>
                    <tr>
                      <th>Precio:</th>
                      <td>$100.000</td>
                    </tr>
                  </table>
                </div>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
          </div>
        </div>
      </div>
      </div>
      <div class="modal fade" id="Memoria_USB_Samsung" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle"
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
                  <img width="350" height="450" src="https://shopincdn.ovh/costomovil/cache/images/_product_catalogue_/8/1/1/0/565x565_q91_cr0_fix1/Memoria-USB-Samsung-BAR-Plus-256GB-Plata-i2.png">
                </div>
                <div class="col-md-6">
                  <table class="table table-borderless">
                    <tr>
                      <th>Nombre del Producto:</th>
                      <td>Memoria USB Samsung</td>
                    </tr>
                    <tr>
                      <th>Descripción:</th>
                      <td>...</td>
                    </tr>
                    <tr>
                      <th>Caracteristicas:</th>
                      <td>...</td>
                    </tr>
                    <tr>
                      <th>Valoración del Producto</th>
                      <td>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                      </td>
                    </tr>
                    <tr>
                      <th>Precio:</th>
                      <td>$100.000</td>
                    </tr>
                  </table>
                </div>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
          </div>
        </div>
      </div>
      </div>

      <div class="modal fade" id="Vidrios_Protectores" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle"
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
                  <img width="350" height="450"
                    src="https://mobomx.vteximg.com.br/arquivos/ids/156268-600-600/zagg-protector-glass-defense-friendly-screen-fg-iphone-7-6-6s-4-7-pulgadas-portada-01.png?v=636724782989930000">
                </div>
                <div class="col-md-6">
                  <table class="table table-borderless">
                    <tr>
                      <th>Nombre del Producto:</th>
                      <td>Vidrios Protectores</td>
                    </tr>
                    <tr>
                      <th>Descripción:</th>
                      <td>...</td>
                    </tr>
                    <tr>
                      <th>Caracteristicas:</th>
                      <td>...</td>
                    </tr>
                    <tr>
                      <th>Valoración del Producto</th>
                      <td>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                      </td>
                    </tr>
                    <tr>
                      <th>Precio:</th>
                      <td>$100.000</td>
                    </tr>
                  </table>
                </div>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
          </div>
        </div>
      </div>
      </div>
      <div class="modal fade" id="Fundas_para_celular" tabindex="-1" role="dialog"
        aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
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
                  <img width="350" height="450" src="https://i.pinimg.com/originals/f1/07/70/f107707875ea2228c1169e81ccfbbcbe.png">
                </div>
                <div class="col-md-6">
                  <table class="table table-borderless">
                    <tr>
                      <th>Nombre del Producto:</th>
                      <td>Fundas para celular</td>
                    </tr>
                    <tr>
                      <th>Descripción:</th>
                      <td>...</td>
                    </tr>
                    <tr>
                      <th>Caracteristicas:</th>
                      <td>...</td>
                    </tr>
                    <tr>
                      <th>Valoración del Producto</th>
                      <td>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star-half-o text-warning" aria-hidden="true"></i>
                        <i class="fa fa-star-o text-warning" aria-hidden="true"></i>
                      </td>
                    </tr>
                    <tr>
                      <th>Precio:</th>
                      <td>$100.000</td>
                    </tr>
                  </table>
                </div>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-danger" data-dismiss="modal">VOLVER</button>
            </div>
          </div>
        </div>
      </div>
      </div>
          </div>

      </div>
</div>

<hr>
    <footer class="page-footer font-small indigo" style="background-color:rgba(180, 180, 180, 0)">
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
                <a href="#!" style="color:rgb(255, 230, 0)">Información corporativa</a>
              </li>
            </ul>
          </div>
          <hr class="clearfix w-100 d-md-none">
          <div class="col-md-3 mx-auto">
            <ul class="list-unstyled">
              <li>
                <br>
                <a href="#!"style="color:rgb(255, 230, 0)">Términos de uso</a>
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

