package org.apache.jsp.Cliente;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Inicio_005fSesion_005fCliente_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("  \n");
      out.write("<html>\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("    \n");
      out.write("      <link rel=\"shortcut icon\" href=\"https://fotos.subefotos.com/9f07d19705d6bde4351c7e17c87c4d7fo.png\">\n");
      out.write("    \n");
      out.write("      <meta charset=\"utf-8\">\n");
      out.write("      <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("      <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\"\n");
      out.write("        integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("      <link href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\"\n");
      out.write("        integrity=\"sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN\" crossorigin=\"anonymous\">\n");
      out.write("      <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">\n");
      out.write("    \n");
      out.write("      <title>\n");
      out.write("        Kuykeisho Cliente\n");
      out.write("      </title>\n");
      out.write("    \n");
      out.write("      <style> \n");
      out.write("          body {\n");
      out.write("              background-size: 100%;\n");
      out.write("              background-image: url( https://i.pinimg.com/originals/17/0b/2b/170b2bba7048acbb7ef07424405abe1a.jpg);\n");
      out.write("          }\n");
      out.write("          </style>\n");
      out.write("    \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"header fixed-top\">\n");
      out.write("            <nav class=\"navbar navbar-expand-lg navbar-light \" style=\"background-color: #343a40\">\n");
      out.write("              <a href=\"../index.html\">\n");
      out.write("                <img width=\"380\" height=\"70\" src=\"https://fotos.subefotos.com/105fb41d255ed1489a748b723f448441o.png\" class=\"img-fluid\" alt=\"Responsive image\">\n");
      out.write("                </a>\n");
      out.write("            <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\"\n");
      out.write("              aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("              <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("            </button>\n");
      out.write("            <div class=\"collapse navbar-collapse \" id=\"navbarSupportedContent\" >\n");
      out.write("              <ul class=\"navbar-nav mr-auto\">\n");
      out.write("              </ul>\n");
      out.write("              <ul class=\"navbar-nav \">\n");
      out.write("                  <li class=\"nav-item disable\">\n");
      out.write("                      <a class=\"nav-link\" href=\"#\" style=\"color: #ffffff\">Ayuda<span class=\"sr-only\"></span></a>\n");
      out.write("                    </li>\n");
      out.write("                  <li class=\"nav-item dropdown\">\n");
      out.write("                      <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\"\n");
      out.write("                        aria-haspopup=\"true\" aria-expanded=\"false\" style=\"color: #ffffff\">\n");
      out.write("                        ¿Como Registrarme?\n");
      out.write("                      </a>\n");
      out.write("                      <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\" style=\"width:13rem; background-color: #343a40\">\n");
      out.write("                        <a class=\"dropdown-item\" href=\"../Administrador/Inicio_Sesion_Administrador.jsp\" style=\"color: #ffffff\">Administrador</a>\n");
      out.write("                      </div>\n");
      out.write("                </li>\n");
      out.write("              </ul>\n");
      out.write("            </div>\n");
      out.write("          </nav>\n");
      out.write("        </div>\n");
      out.write("    \n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("    \n");
      out.write("      <br><br><br>\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("          <div class=\"col-xl-6\">\n");
      out.write("    \n");
      out.write("            <style type=\"text/css\">\n");
      out.write("              .login-form {\n");
      out.write("                width: 340px;\n");
      out.write("              }\n");
      out.write("              .login-form form {\n");
      out.write("                margin-bottom: 15px;\n");
      out.write("                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);\n");
      out.write("                padding: 30px;\n");
      out.write("              }\n");
      out.write("            </style>\n");
      out.write("    <center>\n");
      out.write("            <div class=\"login-form\">\n");
      out.write("              <h4 class=\"text-center\">\n");
      out.write("                <p style=\"color:rgb(255, 255, 255)\" ;>Inicio Sesión</p>\n");
      out.write("              </h4>\n");
      out.write("              <hr>\n");
      out.write("              <form action=\"../Controlador\" method=\"post\">\n");
      out.write("                <div class=\"form-group\">                   \n");
      out.write("                    <input class=\"form-control\" type=\"email\" name=\"txtcorreo\"  placeholder=\"Correo Electrónico\"\n");
      out.write("                        style=\"width: 18rem\" required=\"required\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <input class=\"form-control\" type=\"password\" name=\"txtcontraseña\"  placeholder=\"Contraseña\"\n");
      out.write("                        style=\"width: 18rem\" required=\"required\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                <div align=\"center\">\n");
      out.write("                    <input style=\"width: 18rem;\" class=\"btn btn-danger btn-block\" type=\"submit\" name=\"accion\" value=\"Ingresar\"> \n");
      out.write("                </div>                    \n");
      out.write("                </div>\n");
      out.write("                <div class=\"clearfix \">            \n");
      out.write("                  <p style=\"color:rgb(255, 255, 255);\"><label class=\"pull-left checkbox-inline\"><input type=\"checkbox\"> Recordar Cuenta</p>\n");
      out.write("                </label>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"clearfix text-left\">    \n");
      out.write("                <a href=\"Recuperar contrasena/Recuperar_contrasena_1.jsp\">\n");
      out.write("                <h9 style=\"color:rgb(255, 255, 255)\">¿Olvidaste tu contraseña?</h9>\n");
      out.write("                </a>        \n");
      out.write("              </div>\n");
      out.write("              <br>  \n");
      out.write("              <br>\n");
      out.write("              <center>\n");
      out.write("              <h3 style=\"color: rgb(255, 255, 255)\">¿No tienes cuenta?</h3>\n");
      out.write("              <a href=\"Crear_Cuenta_Cliente.html\">\n");
      out.write("                  <button type=\"button\" class=\"btn btn-outline-warning\">Crear cuenta</button>\n");
      out.write("                </a>\n");
      out.write("              </center>\n");
      out.write("            </form>\n");
      out.write("            </div>\n");
      out.write("          </center>\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("          <div class=\"col-lg-6\">\n");
      out.write("            <center>\n");
      out.write("            <div class=\"login-form\">\n");
      out.write("              <div class=\"col-lg-1\">\n");
      out.write("                <div class=\"login-form\">\n");
      out.write("                  <form action=\"/examples/actions/confirmation.php\" method=\"post\">\n");
      out.write("                    <h2 class=\"text-center\">\n");
      out.write("                      <p style=\"color:rgb(255, 255, 255)\" >Iniciar Sesión</p>\n");
      out.write("                    </h2>\n");
      out.write("                    <div class=\"text-center social-btn\">\n");
      out.write("                      <a href=\"https://es-la.facebook.com/\" class=\"btn btn-primary btn-block\"><i class=\"fa fa-facebook\"></i>\n");
      out.write("                        Iniciar Con <b>Facebook</b></a>\n");
      out.write("                      <a href=\"https://twitter.com/?lang=es\" class=\"btn btn-info btn-block\"><i class=\"fa fa-twitter\"></i>\n");
      out.write("                        Iniciar Con <b>Twitter</b></a>\n");
      out.write("                      <a href=\"https://accounts.google.com/signin/v2/identifier?continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&service=mail&sacu=1&rip=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin\"\n");
      out.write("                        class=\"btn btn-danger btn-block\"><i class=\"fa fa-google\"></i> Iniciar Con <b>Google</b></a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </center>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    \n");
      out.write("      <br>\n");
      out.write("      <br>\n");
      out.write("      <br>\n");
      out.write("      <br>\n");
      out.write("      <br>\n");
      out.write("      <br>\n");
      out.write("      <br>\n");
      out.write("      <br>\n");
      out.write("      <br>\n");
      out.write("      <br>\n");
      out.write("      <br>\n");
      out.write("      <br>\n");
      out.write("      <br>\n");
      out.write("    \n");
      out.write("      <div class=\"copyright text-center  font-weight-bold p-2\" style=\"background-color:rgb(0, 0, 0)\">\n");
      out.write("          <p style=\"color:rgb(255, 217, 0)\">Desarrollado por Kyukeisho Copyright<i class=\"fa fa-copyright\"\n");
      out.write("              aria-hidden=\"true\"></i> 2019</p>\n");
      out.write("    \n");
      out.write("      <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\"\n");
      out.write("        integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\"\n");
      out.write("        crossorigin=\"anonymous\"></script>\n");
      out.write("      <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js\"\n");
      out.write("        integrity=\"sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh\"\n");
      out.write("        crossorigin=\"anonymous\"></script>\n");
      out.write("      <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js\"\n");
      out.write("        integrity=\"sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ\"\n");
      out.write("        crossorigin=\"anonymous\"></script>\n");
      out.write("    </body>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    </html>");
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
