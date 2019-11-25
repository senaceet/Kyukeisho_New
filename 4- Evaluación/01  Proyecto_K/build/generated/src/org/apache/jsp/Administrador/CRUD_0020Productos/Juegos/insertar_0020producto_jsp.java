package org.apache.jsp.Administrador.CRUD_0020Productos.Juegos;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class insertar_0020producto_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("    <!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"UTF-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("  <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n");
      out.write("  <title>FORMULARIO INSERCION DE USUARIOS</title>\n");
      out.write("  <link rel=\"icon\" type=\"image/png\" href=\"https://cdn4.iconfinder.com/data/icons/royal-crowns/154/vip-corona-royal-crown-512.png\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\"\n");
      out.write("    integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("  <link href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\"\n");
      out.write("    integrity=\"sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("  <style>\n");
      out.write("    body\n");
      out.write("{\n");
      out.write("    background: url(\"https://www.xtrafondos.com/descargar.php?id=3037&resolucion=3840x2160\") ;\n");
      out.write("    background-size:100%;\n");
      out.write("    \n");
      out.write("} \n");
      out.write("\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<font style=\"color:white\">\n");
      out.write("<br>\n");
      out.write("<br>\n");
      out.write("<br>\n");
      out.write("<br>\n");
      out.write("<br>\n");
      out.write("<br>\n");
      out.write("<br>\n");
      out.write("<br>\n");
      out.write("<br>\n");
      out.write("<br>\n");
      out.write("<br>\n");
      out.write("<br>\n");
      out.write("<center>\n");
      out.write("<h1 ><strong>Ingresa los datos:</strong></h1>\n");
      out.write("<div class=\"card\" style=\"background-color: rgb(96, 104, 99, 0.26); width: 30rem;\">\n");
      out.write("<br>\n");
      out.write("<form  method=\"POST\" action=\"resultados_insertar\">\n");
      out.write("<div class=\"container-fluid\">\n");
      out.write("<div class=\"row\">\n");
      out.write("<div class=\"col-xl-6\">\n");
      out.write("<p align=\"right\">Numero de documento:</p>\n");
      out.write("</div>\n");
      out.write("<div class=\"col-xl-6\">\n");
      out.write("        \t<div class=\"input-group\" >\n");
      out.write("                <span class=\"input-group-addon\"></span>\n");
      out.write("                <input type=\"text\" style=\"background-color: rgb(96, 104, 99)\"  class=\"form-control\" placeholder=\"ingrese id\" name=\"id\" required=\"required\">\t\n");
      out.write("          </div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("<div class=\"row\">\n");
      out.write("<div class=\"col-xl-6\">\n");
      out.write("<p align=\"right\">Nombre:</p>\n");
      out.write("</div>\n");
      out.write("<div class=\"col-xl-6\">\n");
      out.write("        \t<div class=\"input-group\" >\n");
      out.write("                <span class=\"input-group-addon\"></span>\n");
      out.write("                <input type=\"text\" style=\"background-color: rgb(96, 104, 99)\"  class=\"form-control\" placeholder=\"ingrese nombre\" name=\"nombre\" required=\"required\">\t\n");
      out.write("          </div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("<div class=\"row\">\n");
      out.write("<div class=\"col-xl-6\">\n");
      out.write("<p align=\"right\">Apellido:</p>\n");
      out.write("</div>\n");
      out.write("<div class=\"col-xl-6\">\n");
      out.write("        \t<div class=\"input-group\" >\n");
      out.write("                <span class=\"input-group-addon\"></span>\n");
      out.write("                <input type=\"text\" style=\"background-color: rgb(96, 104, 99)\"  class=\"form-control\" placeholder=\"ingrese cantidad\" name=\"cantidad\" required=\"required\">\t\n");
      out.write("          </div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("<div class=\"col-xl-6\">\n");
      out.write("        \t<div class=\"input-group\" >\n");
      out.write("                <span class=\"input-group-addon\"></span>\n");
      out.write("                <input type=\"text\" style=\"background-color: rgb(96, 104, 99)\"  class=\"form-control\" placeholder=\"ingrese precio\" name=\"precio\" required=\"required\">\t\n");
      out.write("          </div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("<br>\n");
      out.write("<td colspan=\"2\" align=\"center\"><input type=\"submit\" value=\"Registrar\"></td>\n");
      out.write("</form>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("<br>\n");
      out.write("</div>\n");
      out.write("<a style=\"color:rgb(255, 255, 255)\" href='index.jsp'><strong> Volver al menu</strong></a>\n");
      out.write("</font>\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js\" integrity=\"sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js\" integrity=\"sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
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
