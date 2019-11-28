package org.apache.jsp.Administrador;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class registrar_005fadministrador_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("    <!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("  <meta charset=\"UTF-8\">\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("  <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\r\n");
      out.write("  <title>Registro Administrador</title>\r\n");
      out.write("  <link rel=\"icon\" type=\"image/png\" href=\"https://cdn4.iconfinder.com/data/icons/royal-crowns/154/vip-corona-royal-crown-512.png\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\"\r\n");
      out.write("    integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\r\n");
      out.write("  <link href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\"\r\n");
      out.write("    integrity=\"sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN\" crossorigin=\"anonymous\">\r\n");
      out.write("\r\n");
      out.write("  <style>\r\n");
      out.write("    body\r\n");
      out.write("{\r\n");
      out.write("    background: url(\"https://s3.amazonaws.com/battlefy-user-generated-assets-with-permissions%2Ffacebook%7C1520153248069868/1511051605527.negro.jpg\") ;\r\n");
      out.write("    background-size:100%;\r\n");
      out.write("    \r\n");
      out.write("} \r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<font style=\"color:white\">\r\n");
      out.write("<br>\r\n");
      out.write("<br>\r\n");
      out.write("<br>\r\n");
      out.write("<br>\r\n");
      out.write("<br>\r\n");
      out.write("<br>\r\n");
      out.write("<br>\r\n");
      out.write("<br>\r\n");
      out.write("<br>\r\n");
      out.write("<br>\r\n");
      out.write("<center>\r\n");
      out.write("<h1 ><strong>Registre El Administrador</strong></h1>\r\n");
      out.write("<div class=\"card\" style=\"background-color: rgb(96, 104, 99, 0.26); width: 50rem;\">\r\n");
      out.write("<br>\r\n");
      out.write("<form  method=\"POST\" action=\"registrar_admin\">\r\n");
      out.write("<div class=\"container-fluid\">\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("<div class=\"col-xl-3\">\r\n");
      out.write("<p align=\"left\">Id Administrador:</p>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"col-xl-9\">\r\n");
      out.write("                <input type=\"text\"   class=\"p-2 mb-2 bg-dark text-white form-control\" placeholder=\"Ingrese Id\"  name=\"id\" required=\"required\">\t\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("<div class=\"col-xl-3\">\r\n");
      out.write("<p align=\"left\">Primer Nombre:</p>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"col-xl-9\">\r\n");
      out.write("        \t<div class=\"input-group\" >\r\n");
      out.write("                <span class=\"input-group-addon\"></span>\r\n");
      out.write("                <input type=\"text\"  class=\"p-2 mb-2 bg-dark text-white form-control\" placeholder=\"Ingrese Primer Nombre\" name=\"pnombre\" required=\"required\">\t\r\n");
      out.write("          </div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("<div class=\"col-xl-3\">\r\n");
      out.write("<p align=\"left\">Segundo Nombre</p>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"col-xl-9\">\r\n");
      out.write("        \t<div class=\"input-group\" >\r\n");
      out.write("                <span class=\"input-group-addon\"></span>\r\n");
      out.write("                <input type=\"text\" class=\"p-2 mb-2 bg-dark text-white form-control\" placeholder=\"Ingrese Segundo Nombre\" name=\"snombre\">\t\r\n");
      out.write("          </div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("<div class=\"col-xl-3\">\r\n");
      out.write("<p align=\"left\">Primer Apellido:</p>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"col-xl-9\">\r\n");
      out.write("        \t<div class=\"input-group\" >\r\n");
      out.write("                <span class=\"input-group-addon\"></span>\r\n");
      out.write("                <input type=\"text\"  class=\"p-2 mb-2 bg-dark text-white form-control\" placeholder=\"Ingrese Primer Apellido\" name=\"papellido\" required=\"required\">\t\r\n");
      out.write("          </div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("<div class=\"col-xl-3\">\r\n");
      out.write("<p align=\"left\">Segundo Apellido:</p>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"col-xl-9\">\r\n");
      out.write("        \t<div class=\"input-group\" >\r\n");
      out.write("                <span class=\"input-group-addon\"></span>\r\n");
      out.write("                <input type=\"text\"  class=\"p-2 mb-2 bg-dark text-white form-control\" placeholder=\"Ingrese Segundo Apellido\" name=\"sapellido\">\t\r\n");
      out.write("          </div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("<div class=\"col-xl-3\">\r\n");
      out.write("<p align=\"left\">Correo:</p>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"col-xl-9\">\r\n");
      out.write("        \t<div class=\"input-group\" >\r\n");
      out.write("                <span class=\"input-group-addon\"></span>\r\n");
      out.write("                <input type=\"text\"  class=\"p-2 mb-2 bg-dark text-white form-control\" placeholder=\"example@gmail.com\" name=\"correo\" required=\"required\">\t\r\n");
      out.write("          </div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("    <div class=\"row\">\r\n");
      out.write("<div class=\"col-xl-3\">\r\n");
      out.write("<p align=\"left\">Telefono: </p>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"col-xl-9\">\r\n");
      out.write("        \t<div class=\"input-group\" >\r\n");
      out.write("                <span class=\"input-group-addon\"></span>\r\n");
      out.write("                <input type=\"text\"  class=\"p-2 mb-2 bg-dark text-white form-control\" placeholder=\"Ej: 305256....\" name=\"tel\">\t\r\n");
      out.write("          </div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("<div class=\"col-xl-3\">\r\n");
      out.write("<p align=\"left\">Contraseña:</p>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"col-xl-9\">\r\n");
      out.write("        \t<div class=\"input-group\" >\r\n");
      out.write("                <span class=\"input-group-addon\"></span>\r\n");
      out.write("                <input type=\"password\"  class=\"p-2 mb-2 bg-dark text-white form-control\" placeholder=\"Ingrese Contraseña\" name=\"contra\" required=\"required\">\t\r\n");
      out.write("          </div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<br>\r\n");
      out.write("<div class=\"d-flex bd-highlight\">\r\n");
      out.write("  <div class=\"p-2 flex-fill bd-highlight\"><a href=\"CRUD_Administrador.jsp\"><button type=\"button\" class=\"btn btn-info btn-block\">Cancelar</button></a></div>\r\n");
      out.write("  <div class=\"p-2 flex-fill bd-highlight\"><input class=\"btn btn-info btn-block\" type=\"submit\" value=\"Registrar\"></div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("</form>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<br>\r\n");
      out.write("</div>\r\n");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${message}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" \r\n");
      out.write("<c:remove var=\"message\" scope=\"session\" /> \r\n");
      out.write("</font>\r\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js\" integrity=\"sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js\" integrity=\"sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
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
