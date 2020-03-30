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
      out.write("        <title>HomePage Kyukeisho</title>\n");
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
      out.write(" <!-- Main navigation -->\n");
      out.write("        <header>\n");
      out.write("          <!--Navbar-->\n");
      out.write("          <nav class=\"navbar navbar-expand-lg navbar navbar-dark bg-dark fixed-top scrolling-navbar\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("              <a class=\"navbar-brand\" href=\"#\">\n");
      out.write("                <strong>Kyukeisho</strong>\n");
      out.write("              </a>\n");
      out.write("              <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent-7\" aria-controls=\"navbarSupportedContent-7\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("              </button>\n");
      out.write("              <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent-7\">\n");
      out.write("                <ul class=\"navbar-nav mr-auto\">\n");
      out.write("                  <li class=\"nav-item active\">\n");
      out.write("                    <a class=\"nav-link\" href=\"index.html\">Página Principal\n");
      out.write("                      <span class=\"sr-only\"></span>\n");
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
      out.write("                    <h1 class=\"h1-responsive font-weight-bold mt-sm-5\">Make purchases with our app </h1>\n");
      out.write("                    <hr class=\"hr-light\">\n");
      out.write("                    <h6 class=\"mb-4\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem repellendus quasi fuga nesciunt\n");
      out.write("                    dolorum nulla magnam veniam sapiente, fugiat! Commodi sequi non animi ea dolor molestiae\n");
      out.write("                    iste.</h6>\n");
      out.write("                    <a class=\"btn btn-white\">Download</a>\n");
      out.write("                    <a class=\"btn btn-outline-white\">Learn more</a>\n");
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
      out.write("        <!-- Main navigation -->\n");
      out.write("        <!--Main Layout-->\n");
      out.write("        <main>\n");
      out.write("          <div class=\"container\">\n");
      out.write("            <!--Grid row-->\n");
      out.write("            <div class=\"row py-5\">\n");
      out.write("              <!--Grid column-->\n");
      out.write("              <div class=\"col-md-12 text-center\">\n");
      out.write("                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n");
      out.write("              </div>\n");
      out.write("              <!--Grid column-->\n");
      out.write("            </div>\n");
      out.write("            <!--Grid row-->\n");
      out.write("          </div>\n");
      out.write("        </main>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("<!--------------------------------------------------------------------------------------------------------------------------->                \n");
      out.write("        <div class=\"copyright text-center  font-weight-bold p-2\" style=\"background-color: #343a40\">\n");
      out.write("          <p style=\"color:rgb(255, 217, 0)\">Desarrollado por Kyukeisho Copyright<i class=\"fa fa-copyright\"\n");
      out.write("              aria-hidden=\"true\"></i> 2019</p>\n");
      out.write("        </div>\n");
      out.write("<!--------------------------------------------------------------------------------------------------------------------------->                \n");
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
