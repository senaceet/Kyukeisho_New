package org.apache.jsp.Administrador;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.Connection;

public final class editar_005fadministrador_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Editar Administrador</title>\r\n");
      out.write("                  <link rel=\"icon\" type=\"image/png\" href=\"https://cdn4.iconfinder.com/data/icons/royal-crowns/154/vip-corona-royal-crown-512.png\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\"\r\n");
      out.write("    integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\r\n");
      out.write("  <link href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\"\r\n");
      out.write("    integrity=\"sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN\" crossorigin=\"anonymous\">\r\n");
      out.write("\r\n");
      out.write("  <style>\r\n");
      out.write("    body\r\n");
      out.write("{\r\n");
      out.write("    background: url(\"https://image.jimcdn.com/app/cms/image/transf/none/path/sb8c837d4d7c85402/backgroundarea/i2b9df53d8f4515d3/version/1484918239/image.jpg\") ;\r\n");
      out.write("    background-size:100%;\r\n");
      out.write("    \r\n");
      out.write("} \r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <font style=\"color:white\">\r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("        <h2 align=\"center\">Editar Administrador</h2>\r\n");
      out.write("        ");

            String cod = request.getParameter("cod");
            

             Connection conn = null;
            ResultSet rs = null;
            Statement sta = null;
            
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Kyukeisho?user=root&password=");
            
            sta = conn.createStatement();
            rs = sta.executeQuery("select * from administrador where id_administrador = '"+cod+"'");
            
            while(rs.next()){
              

        
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    <center>\r\n");
      out.write("        <div class=\"card\" style=\"background-color: rgb(96, 104, 99, 0.26); width: 23rem;\">\r\n");
      out.write("        <form action=\"\">\r\n");
      out.write("            <table  border=\"0\" width=\"350\" align=\"center\">\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td >Id Administrador: </td>\r\n");
      out.write("                    <td ><input  class=\"p-2 mb-2 bg-dark text-white form-control\" type=\"text\" name=\"txtid\" value=\"");
      out.print(rs.getString(1));
      out.write("\" readonly=\"readonly\"></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td>Primer Nombre:</td>\r\n");
      out.write("                    <td><input class=\"p-2 mb-2 bg-dark text-white form-control\" type=\"text\" value=\"");
      out.print(rs.getString(2));
      out.write("\" name=\"pnom\"></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td>Segundo Nombre:</td>\r\n");
      out.write("                    <td><input class=\"p-2 mb-2 bg-dark text-white form-control\" type=\"text\" value=\"");
      out.print(rs.getString(3));
      out.write("\" name=\"snom\"></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td >Primer Apellido:</td>\r\n");
      out.write("                    <td><input class=\"p-2 mb-2 bg-dark text-white form-control\" type=\"text\" value=\"");
      out.print(rs.getString(4));
      out.write("\" name=\"pape\"></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td >Segundo Apellido:</td>\r\n");
      out.write("                    <td><input class=\"p-2 mb-2 bg-dark text-white form-control\" type=\"text\" value=\"");
      out.print(rs.getString(5));
      out.write("\" name=\"sape\"></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td >Correo:</td>\r\n");
      out.write("                    <td><input class=\"p-2 mb-2 bg-dark text-white form-control\" type=\"email\" value=\"");
      out.print(rs.getString(6));
      out.write("\" name=\"correo\"></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td >Telefono:</td>\r\n");
      out.write("                    <td><input class=\"p-2 mb-2 bg-dark text-white form-control\" type=\"text\" value=\"");
      out.print(rs.getString(7));
      out.write("\" name=\"tel\"></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td >Contraseña:</td>\r\n");
      out.write("                    <td><input class=\"p-2 mb-2 bg-dark text-white form-control\" type=\"password\" value=\"");
      out.print(rs.getString(8));
      out.write("\" name=\"con\" disabled=\"disable\"></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                <br>\r\n");
      out.write("                    <td  colspan=\"2\"><input class=\"btn btn-info btn-block\" type=\"submit\" name=\"btngrabar\" value=\"Guardar\"></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("            </table>\r\n");
      out.write("        </form>\r\n");
      out.write("        </div>\r\n");
      out.write("        ");

            }
        }catch(Exception e){} 

        if(request.getParameter("btngrabar")!= null){
        
        int id = Integer.parseInt(request.getParameter("txtid"));
        String pnom = request.getParameter("pnom");
        String snom = request.getParameter("snom");
        String pape = request.getParameter("pape");
        String sape = request.getParameter("sape");
        String correo = request.getParameter("correo");
        String tel = request.getParameter("tel");
        String con = request.getParameter("con");
        
        sta.executeUpdate("update administrador set primer_nombre_administrador='"+ pnom +"',segundo_nombre_administrador='"+snom+"',primer_apellido_administrador='"+pape+"',segundo_apellido_administardor='"+sape+"' correo_administrador='"+correo+"' telefono_administrador='"+tel+"' contraseña_administardor='"+con+"' where id_administrador = '"+id+"'");

        request.getRequestDispatcher("CRUD_Administrador.jsp").forward(request, response);
        }
        
      out.write("\r\n");
      out.write("                        \r\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js\" integrity=\"sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js\" integrity=\"sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ\" crossorigin=\"anonymous\"></script>                    \r\n");
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
