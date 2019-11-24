package controlador;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Conexion.Conexion;


@WebServlet(name = "registrar_admin", urlPatterns = {"/registrar_admin"})
public class registrar_admin extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        
        int id = Integer.parseInt(request.getParameter("id"));
        String pnombre = request.getParameter("pnombre");
        String snombre = request.getParameter("snombre");
        String papellido = request.getParameter("papellido");
        String sapellido = request.getParameter("sapellido");
        String correo = request.getParameter("correo");
        String tel = request.getParameter("tel");
        String contra = request.getParameter("contra");
        
        Conexion c = new Conexion();
        Connection conn = c.getConnection();
        
        Statement st = null;
        st = conn.createStatement();
        String sql = "insert into administrador values("+ id + ",'" + pnombre + "','" + snombre + "','" + papellido + "','" + sapellido + "','" + correo + "','" + tel + "','" + contra + "')";
        st.executeUpdate(sql);
        String message_gg = "Registro satisfactorio";
        String message_error = "Registro repetido";
         if(sql==null){
                request.getSession().setAttribute("message", message_error);
                response.sendRedirect("registrar_administrador.jsp");                
            }else{
                request.getSession().setAttribute("message", message_gg);
                response.sendRedirect("CRUD_Administrador.jsp");               
            }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(insertar_producto.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(insertar_producto.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(insertar_producto.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(insertar_producto.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
