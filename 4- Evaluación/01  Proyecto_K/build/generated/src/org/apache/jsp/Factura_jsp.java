package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.util.*;
import net.sf.jasperreports.engine.*;
import net.sf.jasperreports.view.JasperViewer;
import javax.servlet.ServletResponse;
import java.sql.*;

public final class Factura_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/Conexion.jsp");
    _jspx_dependants.add("/ReportesPDF.jsp");
  }

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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>JSP Page</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        \r\n");
      out.write("        ");

        Connection con = null;
        try{
        Class.forName("com.mysql.jdbc.Driver");
        con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3310/kyukeisho","root","");
        out.print("Conexion en Linea");
        }catch(Exception ex){
        out.print("Error: "+ex.getMessage());
        }
        
      out.write("\r\n");
      out.write("        \r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write('\r');
      out.write('\n');
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>Reporte PDF</title>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("    <center>\r\n");
      out.write("        \r\n");
      out.write("        <form name=\"form1\" action=\"Productos.jsp\" target=\"_black\">\r\n");
      out.write("            <input type=\"submit\" value=\"Generar PDF Productos\" />\r\n");
      out.write("        </form>\r\n");
      out.write("        <br><br>\r\n");
      out.write("        \r\n");
      out.write("        <form name=\"form1\" action=\"Consola.jsp\" target=\"_black\">\r\n");
      out.write("            <input type=\"submit\" value=\"Generar PDF Consola\" />\r\n");
      out.write("        </form>\r\n");
      out.write("        <br><br>\r\n");
      out.write("        \r\n");
      out.write("        <form name=\"form1\" action=\"Factura.jsp\" target=\"_black\">\r\n");
      out.write("            <input type=\"submit\" value=\"Generar PDF Factura\" />\r\n");
      out.write("        </form>\r\n");
      out.write("        <br><br>\r\n");
      out.write("        \r\n");
      out.write("        <form name=\"form1\" action=\"Juegos.jsp\" target=\"_black\">\r\n");
      out.write("            <input type=\"submit\" value=\"Generar PDF Juegos\" />\r\n");
      out.write("        </form>\r\n");
      out.write("        <br><br>\r\n");
      out.write("        \r\n");
      out.write("        <form name=\"form1\" action=\"Reservaciones.jsp\" target=\"_black\">\r\n");
      out.write("            <input type=\"submit\" value=\"Generar PDF Reservaciones\" />\r\n");
      out.write("        </form>\r\n");
      out.write("        <br><br>\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("    </center>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>JSP Page</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("       \r\n");
      out.write("        ");

        File reportfile = new File (application.getRealPath("Factura.jasper"));
        
        Map<String,Object> parameter = new HashMap<String,Object>();
        
        //String valor = request.getParameter("txtparametro");
        //parameter.put("mar",new String(valor));
        
        byte[] bytes = JasperRunManager.runReportToPdf(reportfile.getPath(), parameter, con);
        
        response.setContentType("application/pdf");
        response.setContentLength(bytes.length);
        ServletOutputStream outputstream = response.getOutputStream();
        outputstream.write(bytes,0,bytes.length);
        
        outputstream.flush();
        outputstream.close();
        
      out.write("\r\n");
      out.write("        \r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
