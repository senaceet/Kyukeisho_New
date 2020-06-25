<%@page contentType="text/html"%> <%-- para acentos --%> 
<%@page pageEncoding="UTF-8"%> <%-- para acentos --%> 
<%@page import="modelo.Persona"%>
<%@page import="modelo.Admin"%>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Conocenos</title>
        <link rel="icon" type="image/png" href="IMG/GF.png">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
              integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <style>
            hr {
                background-color: rgba(255, 251, 0, 0.438);
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
            .carousel .item h4, .carousel .item p, .carousel .item ul {
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
            .carousel-indicators li, .carousel-indicators li.active {
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
                    <div class="col-xl-3 text-left" style="background-color: rgb(255, 251, 0)">
                        <a href="Reservacion_sin_inicar_sesion.jsp">
                            <button type="button" style="border-color: rgba(133, 133, 133, 0)" class="btn btn-outline-dark">
                                <h5><strong><i class="fa fa-gamepad" aria-hidden="true"></i> Reservaciones</strong></h5>
                            </button>
                        </a>
                    </div>
    <%
        }else if(p!= null && a == null){
 %>

<ul class="navbar-nav ">
                        <li class="nav-item dropdown mr-2">
                            <a class="nav-link dropdown-toggle navbar-DARK" href="#" id="navbarDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color:rgb(255, 217, 0)">
                               ${correo} <%-- Cliente --%> 
                            </a>
                            <div class="dropdown-menu mr-sm-2 " aria-labelledby="navbarDropdown" style="width:15rem; background-color: #343a40">
                                <a class="dropdown-item" href="Cliente/Cliente.jsp" style="color:rgb(255, 217, 0)">Inicio</a>
                                <a class="dropdown-item" href="Cliente/Perfil_Cliente.jsp" style="color:rgb(255, 217, 0)">Perfil</a>
                                <hr>
                                <form action="Controlador" method="post">
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
                    <div class="col-xl-3 text-left" style="background-color: rgb(255, 251, 0)">
                        <a href="Cliente/Reservacion.jsp">
                            <button type="button" style="border-color: rgba(133, 133, 133, 0)" class="btn btn-outline-dark">
                                <h5><strong><i class="fa fa-gamepad" aria-hidden="true"></i> Reservaciones</strong></h5>
                            </button>
                        </a>
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
                    <div class="col-xl-3 text-left" style="background-color: rgb(255, 251, 0)">
                        <a href="Reservacion_sin_inicar_sesion.jsp">
                            <button type="button" style="border-color: rgba(133, 133, 133, 0)" class="btn btn-outline-dark">
                                <h5><strong><i class="fa fa-gamepad" aria-hidden="true"></i> Reservaciones</strong></h5>
                            </button>
                        </a>
                    </div>
    <%
        }
 %>

                    <div class="col-xl-3 text-left" style="background-color: rgb(255, 251, 0)">
                        <a href="contactenos.jsp">
                            <button type="button" style="border-color: rgba(133, 133, 133, 0)" class="btn btn-outline-dark">
                                <h5><strong><i class="fa fa-phone" aria-hidden="true"></i> Contactenos</strong></h5>
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
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <div class="container-fluid">
            <div class="row"> 
                <div class="col-xl" align="center">
                    <h1 class="display-3"  >CONOCENOS</h1>
                    <hr>
                    <div class="accordion" id="accordionExample">
                        <div class="card" style="background-color: rgba(20, 19, 19, 0.904)">
                            <div class="card-header" id="headingOne">
                                <h2 class="mb-0">
                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" style="color: white">
                                        <h3>¿Quienes somos?</h3>
                                    </button>
                                </h2>
                            </div>

                            <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div class="card-body">
                                    Somo una empresa desarrolladora de software, dedicada a solucionar problemas de comunicación, dando a comocer a los clientes las mejores ofertas realizadas por la empresa contratadora.
                                </div>
                            </div>
                        </div>
                        <div class="card" style="background-color: rgba(20, 19, 19, 0.904)">
                            <div class="card-header" id="headingTwo">
                                <h2 class="mb-0">
                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" style="color: white">
                                        <h3>Misión</h3>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                                <div class="card-body">
                                    Kyukeisho es una empresa de desarrollo de software profesional, kyukeisho ha realizado sofware de calidad, dando a la empresa la mejor solución para sus problemas o requerimientos, esta empresa se centra en la empresa que lo necesita, ya que no hay crecimiento sin un servicio de excelente calidad el cual le ofrecemos a nustras empresa solicitantes. 
                                </div>
                            </div>
                        </div>
                        <div class="card" style="background-color: rgba(20, 19, 19, 0.904)">
                            <div class="card-header" id="headingThree">
                                <h2 class="mb-0">
                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree" style="color: white">
                                        <h2>Vision</h2>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                                <div class="card-body">
                                    Priorizar el manejo de información a todo los usuarios, controlar la publicidad a nivel mundial, llegando a cada rincon del mundo con nuestros servicios.
                                </div>
                            </div>
                        </div>
                        <div class="card" style="background-color: rgba(20, 19, 19, 0.904)">
                            <div class="card-header" id="headingFour">
                                <h2 class="mb-0">
                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour" style="color: white">
                                        <h2>Politica de privacidad</h2>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
                                <div class="card-body">

<p><strong>POLÍTICA DE PRIVACIDAD</strong></p>
<p align="justify">
El presente Política de Privacidad establece los términos en los que Endeavor España usa y protege la información que es proporcionada por sus usuarios al momento de utilizar su sitio web. Esta compañía está comprometida con la seguridad de los datos de sus usuarios. Cuando le pedimos llenar los campos de información personal con la cual usted pueda ser identificado, lo hacemos asegurando que solo se emplearán de acuerdo con los términos de este documento. Sin embargo, esta Política de Privacidad puede cambiar con el tiempo o ser actualizada, por lo que le recomendamos y enfatizamos revisar continuamente esta página para asegurarse de que está de acuerdo con dichos cambios.
</p>
<p><strong>Información que es recogida</strong></p>
<p align="justify">
Nuestro sitio web podrá recoger información personal como por ejemplo su nombre, su información de contacto (como su dirección de correo electrónico) e información demográfica. Así mismo, cuando sea necesario, podrá ser requerida información específica para procesar algún pedido o realizar una entrega o facturación.
</p>
<p><strong>Uso de la información recogida</strong></p>
<p align="justify">
Nuestro sitio web emplea la información con el fin de proporcionar el mejor servicio posible, particularmente para mantener un registro de usuarios, de pedidos en caso que aplique, y mejorar nuestros productos y servicios. Es posible que sean enviados correos electrónicos periódicamente a través de nuestro sitio con ofertas especiales, nuevos productos y otra información publicitaria que consideremos relevante para usted o que pueda brindarle algún beneficio, estos correos electrónicos serán enviados a la dirección que usted proporcione y podrán ser cancelados en cualquier momento.
</p>
<p align="justify">
Endeavor España está altamente comprometido con cumplir con el compromiso de mantener su información segura. Usamos los sistemas más avanzados y los actualizamos constantemente para asegurarnos que no exista ningún acceso no autorizado.
</p>
<p><strong>Cookies</strong></p>
<p align="justify">
Una cookie se refiere a un fichero que es enviado con la finalidad de solicitar permiso para almacenarse en su ordenador. Al aceptar dicho fichero este se crea y la cookie sirve entonces para tener información respecto al tráfico web y también facilita las futuras visitas a una web recurrente. Otra función que tienen las cookies es que con ellas la web pueden reconocerte individualmente y por tanto brindarte el mejor servicio personalizado de su web.
</p>
<p align="justify">
Nuestro sitio web emplea las cookies para poder identificar las páginas que son visitadas y su frecuencia. Esta información es empleada únicamente para análisis estadístico y después la información se elimina de forma permanente. Usted puede eliminar las cookies en cualquier momento desde su ordenador. Sin embargo, las cookies ayudan a proporcionar un mejor servicio de los sitios web. Estas no dan acceso a información de su ordenador ni de usted, a menos que usted así lo quiera y la proporcione directamente. Usted puede aceptar o negar el uso de cookies. Sin embargo, la mayoría de navegadores aceptan cookies automáticamente pues sirve para tener un mejor servicio web. También usted puede cambiar la configuración de su ordenador para declinar las cookies. Si se declinan es posible que no pueda utilizar algunos de nuestros servicios.
</p>
<p><strong>Enlaces a Terceros</strong></p>
<p align="justify">
Este sitio web pudiera contener enlaces a otros sitios que pudieran ser de su interés. Una vez que usted de clic en estos enlaces y abandone nuestra página, ya no tendremos control sobre al sitio al que es redirigido y por lo tanto no somos responsables de los términos o privacidad ni de la protección de sus datos en esos otros sitios terceros. Dichos sitios están sujetos a sus propias políticas de privacidad por lo cual es recomendable que los consulte para confirmar que usted está de acuerdo con estas.
</p>
<p><strong>Control de su información personal</strong></p>
<p align="justify">
En cualquier momento usted puede restringir la recopilación o el uso de la información personal que es proporcionada a nuestro sitio web. Cada vez que se le solicite rellenar un formulario, como el de alta de usuario, puede marcar o desmarcar la opción de recibir información por correo electrónico. En caso de que haya marcado la opción de recibir nuestro boletín o publicidad usted puede cancelarla en cualquier momento.                                </div>
</p>                            
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <hr style="background-color: green">
            <br>
            <br>
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
</footer>

            <div class="copyright text-center  font-weight-bold p-2" style="background-color: #000">
                <p style="font-family: Times New Roman; color:rgb(255, 217, 0)">Desarrollado por Kyukeisho Copyright<i class="fa fa-copyright"
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