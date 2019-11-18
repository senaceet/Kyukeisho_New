package org.apache.jsp.Cliente.Recuperar_0020contrasena;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Recuperar_005fcontrasena_005f3_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("\r\n");
      out.write("    <link rel=\"shortcut icon\" href=\"https://fotos.subefotos.com/9f07d19705d6bde4351c7e17c87c4d7fo.png\">\r\n");
      out.write("\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\"\r\n");
      out.write("        integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\r\n");
      out.write("    <link href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\"\r\n");
      out.write("        integrity=\"sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN\" crossorigin=\"anonymous\">\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">\r\n");
      out.write("\r\n");
      out.write("    <title>\r\n");
      out.write("        Kuykeisho\r\n");
      out.write("    </title>\r\n");
      out.write("\r\n");
      out.write("    <style> \r\n");
      out.write("            body {\r\n");
      out.write("                background-size: 100%;\r\n");
      out.write("                background-image: url( https://i.pinimg.com/originals/17/0b/2b/170b2bba7048acbb7ef07424405abe1a.jpg);\r\n");
      out.write("            }\r\n");
      out.write("            </style>\r\n");
      out.write("      \r\n");
      out.write("      </head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("        <div class=\"header fixed-top\" >\r\n");
      out.write("                <nav class=\"navbar navbar-expand-lg navbar-light \" style=\"background-color: #343a40\">\r\n");
      out.write("                    <a href=\"../../index.html\">\r\n");
      out.write("                        <img width=\"380\" height=\"70\" src=\"https://fotos.subefotos.com/105fb41d255ed1489a748b723f448441o.png\" class=\"img-fluid\" alt=\"Responsive image\">\r\n");
      out.write("                        </a>\r\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\"\r\n");
      out.write("                  aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("                  <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("                </button>\r\n");
      out.write("                <div class=\"collapse navbar-collapse \" id=\"navbarSupportedContent\">\r\n");
      out.write("                  <ul class=\"navbar-nav mr-auto\">\r\n");
      out.write("                  </ul>\r\n");
      out.write("                  <ul class=\"navbar-nav \">\r\n");
      out.write("                      <li class=\"nav-item disable\">\r\n");
      out.write("                          <a class=\"nav-link\" href=\"#\" style=\"color: #ffffff\">Ayuda<span class=\"sr-only\"></span></a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                  </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("              </nav>\r\n");
      out.write("            </div>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <br><br><br>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("            <div class=\"col-lg-4\">\r\n");
      out.write("\r\n");
      out.write("                <style type=\"text/css\">\r\n");
      out.write("                    .login-form {\r\n");
      out.write("                        width: 340px;\r\n");
      out.write("                    }\r\n");
      out.write("\r\n");
      out.write("                    .login-form form {\r\n");
      out.write("                        margin-bottom: 15px;\r\n");
      out.write("                        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);\r\n");
      out.write("                        padding: 30px;\r\n");
      out.write("                    }\r\n");
      out.write("                </style>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"login-form\">\r\n");
      out.write("                    <h4 class=\"text-center\">\r\n");
      out.write("                        </form>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"col-lg-2\">\r\n");
      out.write("                <div class=\"login-form\">\r\n");
      out.write("                    <h4 class=\"text-center\">\r\n");
      out.write("                        <p style=\"color:rgb(255, 255, 255)\" ;>Recuperar ContraseÃ±a</p>\r\n");
      out.write("                    </h4>\r\n");
      out.write("                    <hr>\r\n");
      out.write("                    <div class=\"form-group\">\r\n");
      out.write("                        <input type=\"password\" class=\"form-control\" placeholder=\"Escriba Nueva ContraseÃ±a\"\r\n");
      out.write("                            required=\"required\">\r\n");
      out.write("                        <br>\r\n");
      out.write("                        <input type=\"password\" class=\"form-control\" placeholder=\"Verificar Nueva ContraseÃ±a\"\r\n");
      out.write("                            required=\"required\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <a href=\"#\" class=\"btn btn-primary btn-block\" data-target=\"#produk2\" data-toggle=\"modal\">Cambiar\r\n");
      out.write("                        ContraseÃ±a</a>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"modal fade\" id=\"produk2\" tabindex=\"-1\" role=\"dialog\"\r\n");
      out.write("                        aria-labelledby=\"exampleModalScrollableTitle\" aria-hidden=\"true\">\r\n");
      out.write("                        <div class=\"modal-dialog modal-lg\" role=\"document\">\r\n");
      out.write("                            <div class=\"modal-content\">\r\n");
      out.write("                                <div class=\"modal-header\">\r\n");
      out.write("\r\n");
      out.write("                                    <th>Su ContraseÃ±a Se Ha Cambiado ExitosamenteÂ¡Â¡</th>\r\n");
      out.write("\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    </form>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("  \r\n");
      out.write("    <div class=\"copyright text-center  font-weight-bold p-2\" style=\"background-color:rgb(0, 0, 0)\">\r\n");
      out.write("        <p style=\"color:rgb(255, 217, 0)\">Desarrollado por Kyukeisho Copyright<i class=\"fa fa-copyright\"\r\n");
      out.write("            aria-hidden=\"true\"></i> 2019</p>\r\n");
      out.write("\r\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\"\r\n");
      out.write("            integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\"\r\n");
      out.write("            crossorigin=\"anonymous\"></script>\r\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js\"\r\n");
      out.write("            integrity=\"sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh\"\r\n");
      out.write("            crossorigin=\"anonymous\"></script>\r\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js\"\r\n");
      out.write("            integrity=\"sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ\"\r\n");
      out.write("            crossorigin=\"anonymous\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("</html>");
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
