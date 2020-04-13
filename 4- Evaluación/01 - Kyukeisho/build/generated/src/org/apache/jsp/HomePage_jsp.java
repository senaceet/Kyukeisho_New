package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class HomePage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!--------------------------------------------------------------------------------------------------------------------------->        \n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <title>HomePage Kyukeisho Official</title>\n");
      out.write("        \n");
      out.write("        <link rel=\"icon\" type=\"image/png\" href=\"IMG/GF.png\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">        \n");
      out.write("<!--------------------------------------------------------------------------------------------------------------------------->        \n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\" \n");
      out.write("        integrity=\"sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh\" crossorigin=\"anonymous\">\n");
      out.write("    </head>\n");
      out.write("<!--------------------------------------------------------------------------------------------------------------------------->            \n");
      out.write("    <body>\n");
      out.write("<!--------------------------------------------------------------------------------------------------------------------------->            \n");
      out.write("        <header>\n");
      out.write("          <!--Navbar-->\n");
      out.write("          <nav class=\"navbar navbar-expand-lg navbar navbar-dark bg-dark fixed-top scrolling-navbar\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("              <a class=\"navbar-brand\" href=\"#\">\n");
      out.write("                <strong>\n");
      out.write("                    <p style=\"font-family:Times New Roman;\"> Kyukeisho Official</p> \n");
      out.write("                </strong>\n");
      out.write("              </a>\n");
      out.write("              <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent-7\" aria-controls=\"navbarSupportedContent-7\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("              </button>\n");
      out.write("              <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent-7\">\n");
      out.write("                <ul class=\"navbar-nav mr-auto\">\n");
      out.write("                  <li class=\"nav-item active\">\n");
      out.write("                      <a class=\"nav-link\" href=\"HomePage.jsp\"><p style=\"font-family:Times New Roman;\"> Página Principal </p>\n");
      out.write("                      <span class=\"sr-only\"></span>                      \n");
      out.write("                    </a>\n");
      out.write("                  </li>\n");
      out.write("                  <li class=\"nav-item active\">\n");
      out.write("                      <a class=\"nav-link\" href=\"index.html\"><p style=\"font-family:Times New Roman;\"> Proyectos </p>\n");
      out.write("                      <span class=\"sr-only\"></span>                      \n");
      out.write("                    </a>\n");
      out.write("                  </li>\n");
      out.write("                </ul>\n");
      out.write("                <form class=\"form-inline\">\n");
      out.write("                  <div class=\"md-form my-0\">\n");
      out.write("                    <input class=\"form-control mr-sm-2\" type=\"text\" placeholder=\"Buscar\" aria-label=\"Search\">\n");
      out.write("                  </div>\n");
      out.write("                </form>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </nav>\n");
      out.write("          <br><br>\n");
      out.write("          <!-- Full Page Intro -->\n");
      out.write("          <div class=\"view\" style=\"background-image: url('https://mdbootstrap.com/img/Photos/Others/architecture.jpg'); background-repeat: no-repeat; background-size: cover; background-position: center center;\">\n");
      out.write("            <!-- Mask & flexbox options-->\n");
      out.write("            <div class=\"mask rgba-gradient align-items-center\">\n");
      out.write("              <!-- Content -->\n");
      out.write("              <div class=\"container\">\n");
      out.write("                <!--Grid row-->\n");
      out.write("                <div class=\"row\">\n");
      out.write("                  <!--Grid column-->\n");
      out.write("                  <div class=\"col-md-6 white-text text-center text-md-left mt-xl-5 mb-5 wow fadeInLeft\" data-wow-delay=\"0.3s\">\n");
      out.write("                      <h1 class=\"h1-responsive font-weight-bold mt-sm-5\"><p style=\"font-family:Times New Roman;\"> Kyukeisho Official Es Una Empresa Desarrolladora De Software </p></h1>\n");
      out.write("                    <hr class=\"hr-light\">\n");
      out.write("                    <h6 class=\"mb-4\"><p style=\"font-family:Times New Roman;\"> Kyukeisho Official, empresa desarrolladora de software de alta cálidad, con el fin de dar a conocer las nuevas tecnologias creando las mejores soluciones para nuestras empresas contratantes </p></h6>\n");
      out.write("                  </div>\n");
      out.write("                  <!--Grid column-->\n");
      out.write("                  <!--Grid column-->\n");
      out.write("                  <div class=\"col-md-6 col-xl-5 mt-xl-5 wow fadeInRight\" data-wow-delay=\"0.3s\">\n");
      out.write("                    <img src=\"https://mdbootstrap.com/img/Mockups/Transparent/Small/admin-new.png\" alt=\"\" class=\"img-fluid\">\n");
      out.write("                  </div>\n");
      out.write("                  <!--Grid column-->\n");
      out.write("                </div>\n");
      out.write("                <!--Grid row-->\n");
      out.write("              </div>\n");
      out.write("              <!-- Content -->\n");
      out.write("            </div>\n");
      out.write("            <!-- Mask & flexbox options-->\n");
      out.write("          </div>\n");
      out.write("          <!-- Full Page Intro -->\n");
      out.write("        </header>\n");
      out.write("    </body>\n");
      out.write("    <hr><br><br>    \n");
      out.write(" <!Contenedor Imagen Css ----------------------------------------------------------------------------------------------------->                \n");
      out.write(" <div class=\"container\">\n");
      out.write("     <div class=\"row\">\n");
      out.write("         <div class=\"col-lg-4\" style=\"font-family:Times New Roman; background-color: #FFFFFF\">\n");
      out.write("             <h4>\n");
      out.write("                 <p style=\"color: black\">Disfruta Del Mejor Diseño Para Tu Página</p>\n");
      out.write("             </h4>\n");
      out.write("             <br>\n");
      out.write("             <h6>\n");
      out.write("                 <p style=\"font-family:Times New Roman; color: black\">Creamos Diseños Unicos, Personalizados, <br> Siempre Pensando En El Gusto De La Empresa</p>\n");
      out.write("             </h6>\n");
      out.write("         </div>\n");
      out.write("            <div class=\"col-lg-4\" style=\"background-color: #FFFFFF\">             \n");
      out.write("                </div>\n");
      out.write("         <div class=\"col-lg-4\" style=\"background-color: #FFFFFF\">\n");
      out.write("             <h1>\n");
      out.write("                <img src=\"IMG/Css.jpg\" width=\"300\" height=\"200\">\n");
      out.write("             </h1>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write(" </div>\n");
      out.write(" <hr><br>\n");
      out.write("<!---------------------------------------------------------------------------------------------------------------------------->\n");
      out.write("<!-- Contenedor Imagen Html -------------------------------------------------------------------------------------------------->               \n");
      out.write(" <div class=\"container\">\n");
      out.write("     <div class=\"row\">\n");
      out.write("         <div class=\"col-lg-4\" style=\"background-color: #FFFFFF\">\n");
      out.write("             <h1>\n");
      out.write("                <img src=\"IMG/Html.jpg\" width=\"300\" height=\"200\">\n");
      out.write("             </h1>\n");
      out.write("         </div>\n");
      out.write("            <div class=\"col-lg-4\" style=\"background-color: #FFFFFF\">             \n");
      out.write("                </div>\n");
      out.write("         <div class=\"col-lg-4\" style=\"background-color: #FFFFFF\">\n");
      out.write("             <h4>\n");
      out.write("                 <p style=\"font-family:Times New Roman; color: black\">Disfruta De Tú Propia Personalización Para Tu Página</p>\n");
      out.write("             </h4>\n");
      out.write("             <br>\n");
      out.write("             <h6>\n");
      out.write("                 <p style=\"font-family:Times New Roman; color: black\">Creamos La Página Deseada <br> Por Nuestra Empresa, Siempre Implementando <br> Para Tener Una Página Unica</p>\n");
      out.write("             </h6>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write(" </div>\n");
      out.write("<hr><br>\n");
      out.write("<!----------------------------------------------------------------------------------------------------------------------------> \n");
      out.write("<!Contenedor Imagen Java ----------------------------------------------------------------------------------------------------->\n");
      out.write(" <div class=\"container\">\n");
      out.write("     <div class=\"row\">\n");
      out.write("         <div class=\"col-lg-4\" style=\"background-color: #FFFFFF\">\n");
      out.write("             <h4>\n");
      out.write("                 <p style=\"font-family:Times New Roman; color: black\">La Programación Es Indispensable </p>\n");
      out.write("             </h4>\n");
      out.write("             <br>\n");
      out.write("             <h6>\n");
      out.write("                 <p style=\"font-family:Times New Roman; color: black\">Programamos En El Lenguaje Que Desees <br> Dandote A Conocer El Proceso A Realizar <br> Para Llegar A Un Software Unico </p>\n");
      out.write("             </h6>\n");
      out.write("         </div>\n");
      out.write("            <div class=\"col-lg-4\" style=\"background-color: #FFFFFF\">             \n");
      out.write("                </div>\n");
      out.write("         <div class=\"col-lg-4\" style=\"background-color: #FFFFFF\">\n");
      out.write("             <h1>\n");
      out.write("                <img src=\"IMG/Programación.jpg\" width=\"300\" height=\"200\">\n");
      out.write("             </h1>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write(" </div>\n");
      out.write("<hr><hr><br>\n");
      out.write("<!-- Input De Comentarios----------- --------------------------------------------------------------------------------------->\n");
      out.write("<div class=\"container\">\n");
      out.write("     <div class=\"row\">\n");
      out.write("         <div class=\"col-lg-4\">\n");
      out.write("                <h5>\n");
      out.write("                    <p style=\"font-family:Times New Roman; color: #000\">\n");
      out.write("                        Ingresa Tus Preguntas Juntos Con Tus Datos Y Trataremos De Darte Respuesta Lo Mas Rapido Posible\n");
      out.write("                    </p>\n");
      out.write("                </h5>             \n");
      out.write("         </div>\n");
      out.write("            <div class=\"col-lg-4\" style=\"background-color: #FFFFFF\">                     \n");
      out.write("                <form action=\"Controlador_Preguntas\" method=\"post\">\n");
      out.write("                    <div class=\"form-group\">               \n");
      out.write("                        <input class=\"form-control\" type=\"email\" name=\"correo\" placeholder=\"example@gmail.com\"\n");
      out.write("                            style=\"width: 18rem\" required=\"required\">\n");
      out.write("                    </div>               \n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <input class=\"form-control\" type=\"text\" name=\"pregunta\" placeholder=\"Ingrese Su Pregunta, O Sugerencia\"\n");
      out.write("                            style=\"width: 30rem;\" required=\"required\">                       \n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <div align=\"center\">\n");
      out.write("                        <input style=\"width: 10rem;\" class=\"btn btn-dark btn-block\" type=\"submit\" name=\"accion\" value=\"Enviar\"> \n");
      out.write("                        </div> \n");
      out.write("                    </div>                    \n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("            <h6 style=\"color:red; text-align:center\">\n");
      out.write("                ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${message}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" \n");
      out.write("            <c:remove var=\"message\" scope=\"session\" />\n");
      out.write("            </h6> \n");
      out.write("         <div class=\"col-lg-4\">                        \n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write(" </div>\n");
      out.write(" <hr><br>\n");
      out.write("<!-------------------------------------------------------------------------------------------------------------------------->\n");
      out.write("<style type=\"text/css\">\n");
      out.write("    body {\n");
      out.write("\t\tfont-family: 'Varela Round', sans-serif;\n");
      out.write("\t}\n");
      out.write("\t.modal-confirm {\t\t\n");
      out.write("\t\tcolor: #636363;\n");
      out.write("\t\twidth: 325px;\n");
      out.write("\t}\n");
      out.write("\t.modal-confirm .modal-content {\n");
      out.write("\t\tpadding: 20px;\n");
      out.write("\t\tborder-radius: 5px;\n");
      out.write("\t\tborder: none;\n");
      out.write("\t}\n");
      out.write("\t.modal-confirm .modal-header {\n");
      out.write("\t\tborder-bottom: none;   \n");
      out.write("        position: relative;\n");
      out.write("\t}\n");
      out.write("\t.modal-confirm h4 {\n");
      out.write("\t\ttext-align: center;\n");
      out.write("\t\tfont-size: 26px;\n");
      out.write("\t\tmargin: 30px 0 -15px;\n");
      out.write("\t}\n");
      out.write("\t.modal-confirm .form-control, .modal-confirm .btn {\n");
      out.write("\t\tmin-height: 40px;\n");
      out.write("\t\tborder-radius: 3px; \n");
      out.write("\t}\n");
      out.write("\t.modal-confirm .close {\n");
      out.write("        position: absolute;\n");
      out.write("\t\ttop: -5px;\n");
      out.write("\t\tright: -5px;\n");
      out.write("\t}\t\n");
      out.write("\t.modal-confirm .modal-footer {\n");
      out.write("\t\tborder: none;\n");
      out.write("\t\ttext-align: center;\n");
      out.write("\t\tborder-radius: 5px;\n");
      out.write("\t\tfont-size: 13px;\n");
      out.write("\t}\t\n");
      out.write("\t.modal-confirm .icon-box {\n");
      out.write("\t\tcolor: #fff;\t\t\n");
      out.write("\t\tposition: absolute;\n");
      out.write("\t\tmargin: 0 auto;\n");
      out.write("\t\tleft: 0;\n");
      out.write("\t\tright: 0;\n");
      out.write("\t\ttop: -70px;\n");
      out.write("\t\twidth: 95px;\n");
      out.write("\t\theight: 95px;\n");
      out.write("\t\tborder-radius: 50%;\n");
      out.write("\t\tz-index: 9;\n");
      out.write("\t\tbackground: #82ce34;\n");
      out.write("\t\tpadding: 15px;\n");
      out.write("\t\ttext-align: center;\n");
      out.write("\t\tbox-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);\n");
      out.write("\t}\n");
      out.write("\t.modal-confirm .icon-box i {\n");
      out.write("\t\tfont-size: 58px;\n");
      out.write("\t\tposition: relative;\n");
      out.write("\t\ttop: 3px;\n");
      out.write("\t}\n");
      out.write("\t.modal-confirm.modal-dialog {\n");
      out.write("\t\tmargin-top: 80px;\n");
      out.write("\t}\n");
      out.write("    .modal-confirm .btn {\n");
      out.write("        color: #fff;\n");
      out.write("        border-radius: 4px;\n");
      out.write("\t\tbackground: #82ce34;\n");
      out.write("\t\ttext-decoration: none;\n");
      out.write("\t\ttransition: all 0.4s;\n");
      out.write("        line-height: normal;\n");
      out.write("        border: none;\n");
      out.write("    }\n");
      out.write("\t.modal-confirm .btn:hover, .modal-confirm .btn:focus {\n");
      out.write("\t\tbackground: #6fb32b;\n");
      out.write("\t\toutline: none;\n");
      out.write("\t}\n");
      out.write("\t.trigger-btn {\n");
      out.write("\t\tdisplay: inline-block;\n");
      out.write("\t\tmargin: 100px auto;\n");
      out.write("\t}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div class=\"text-center\">\n");
      out.write("\t<!-- Button HTML (to Trigger Modal) -->\n");
      out.write("\t<a href=\"#myModal\" class=\"trigger-btn\" data-toggle=\"modal\">Click to Open Confirm Modal</a>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<!-- Modal HTML -->\n");
      out.write("<div id=\"myModal\" class=\"modal fade\">\n");
      out.write("\t<div class=\"modal-dialog modal-confirm\">\n");
      out.write("\t\t<div class=\"modal-content\">\n");
      out.write("\t\t\t<div class=\"modal-header\">\n");
      out.write("\t\t\t\t<div class=\"icon-box\">\n");
      out.write("\t\t\t\t\t<i class=\"material-icons\">&#xE876;</i>\n");
      out.write("\t\t\t\t</div>\t\t\t\t\n");
      out.write("\t\t\t\t<h4 class=\"modal-title\">Awesome!</h4>\t\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"modal-body\">\n");
      out.write("\t\t\t\t<p class=\"text-center\">Your booking has been confirmed. Check your email for detials.</p>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"modal-footer\">\n");
      out.write("\t\t\t\t<button class=\"btn btn-success btn-block\" data-dismiss=\"modal\">OK</button>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("</div>     \n");
      out.write("\n");
      out.write("<!-------------------------------------------------------------------------------------------------------------------------->\n");
      out.write("<!-- Ayuda, Parte Final De La Página --------------------------------------------------------------------------------------->\n");
      out.write("<footer class=\"page-footer font-small indigo\" style=\"background-color: #000\"><br>\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("          <h5 style=\"color: #FFFFFF\">¿Preguntas? Llama al ** *** *** ****</h5>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"row\">\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"container text-center text-md-left\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("          <div class=\"col-md-3 mx-auto\">\n");
      out.write("            <br>\n");
      out.write("            <ul class=\"list-unstyled\">\n");
      out.write("              <li>\n");
      out.write("                <a href=\"#!\" style=\"color: #FFFFFF\">Preferencias de cookies</a>\n");
      out.write("                <br>\n");
      out.write("                <a href=\"ConocenosOficial.html\" style=\"color: #FFFFFF\">Información corporativa</a>\n");
      out.write("              </li>\n");
      out.write("            </ul>\n");
      out.write("            <br>\n");
      out.write("            <div class=\"dropdown\">\n");
      out.write("              <button class=\"btn btn-outline-success dropdown-toggle\" type=\"button\" id=\"dropdownMenuButton\"\n");
      out.write("                data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                <i class=\"fa fa-globe\" aria-hidden=\"true\"></i> Idioma\n");
      out.write("              </button>\n");
      out.write("              <div class=\"dropdown-menu\" style=\"background-color: #FFFFFF\" aria-labelledby=\"dropdownMenuButton\">\n");
      out.write("                <a class=\"dropdown-item\" href=\"#\">Español</a>\n");
      out.write("                <a class=\"dropdown-item\" href=\"#\">Ingles</a>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("            <br>\n");
      out.write("          </div>\n");
      out.write("          <hr class=\"clearfix w-100 d-md-none\">\n");
      out.write("          <div class=\"col-md-3 mx-auto\">\n");
      out.write("            <ul class=\"list-unstyled\">\n");
      out.write("              <li>\n");
      out.write("                <br>\n");
      out.write("                <a href=\"contactenosOficial.html\" style=\"color: #FFFFFF\">Centro de ayuda</a>                \n");
      out.write("              </li>\n");
      out.write("            </ul>\n");
      out.write("          </div>\n");
      out.write("          <hr class=\"clearfix w-100 d-md-none\">\n");
      out.write("          <div class=\"col-md-3 mx-auto\">\n");
      out.write("            <ul class=\"list-unstyled\">\n");
      out.write("              <li>\n");
      out.write("                <br>\n");
      out.write("                <a href=\"ConocenosOficial.html\"style=\"color: #FFFFFF\">Términos de uso</a>\n");
      out.write("              </li>\n");
      out.write("            </ul>\n");
      out.write("          </div>\n");
      out.write("          <hr class=\"clearfix w-100 d-md-none\">\n");
      out.write("          <div class=\"col-md-3 mx-auto\">\n");
      out.write("            <ul class=\"list-unstyled\">\n");
      out.write("              <li>\n");
      out.write("                <br>\n");
      out.write("                <a href=\"ConocenosOficial.html\" style=\"color: #FFFFFF\">Privacidad</a>\n");
      out.write("              </li>\n");
      out.write("            </ul>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("<!------------------------------------------------------------------------------------------------------------------------->\n");
      out.write("<!-- Clase Final De La Página --------------------------------------------------------------------------------------------->    \n");
      out.write("        <div class=\"copyright text-center  font-weight-bold p-2\" style=\"background-color: #000\">\n");
      out.write("          <p style=\"color: #ffffff\">Desarrollado por Kyukeisho Official Copyright<i class=\"fa fa-copyright\"\n");
      out.write("              aria-hidden=\"true\"></i> 2019</p>\n");
      out.write("        </div>\n");
      out.write("    </footer>\n");
      out.write("<!--------------------------------------------------------------------------------------------------------------------------->                        \n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.4.1.slim.min.js\" integrity=\"sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js\" integrity=\"sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js\" integrity=\"sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6\" crossorigin=\"anonymous\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
