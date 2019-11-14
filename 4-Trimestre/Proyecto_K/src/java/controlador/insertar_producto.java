package controlador;
import java.io.IOException;
import java.io.PrintWriter;
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
import modelo.conexion;


@WebServlet(name = "insertar_producto", urlPatterns = {"/insertar_producto"})
public class insertar_producto extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        
        int id = Integer.parseInt(request.getParameter("id"));
        String nom = request.getParameter("nombre");
        String can = request.getParameter("cantidad");
        String pre = request.getParameter("precio");
        String tip = request.getParameter("tipo");
        
        conexion c = new conexion();
        Connection conn = c.getConnection();
        
        Statement st = null;
        st = conn.createStatement();
        String sql = "insert into productos values("+ id + ",'" + nom + "','" + can + "','" + pre + "','" + tip + "')";
        st.executeUpdate(sql);
        String message_gg = "Registro satisfactorio";
        String message_error = "Registro repetido";
         if(sql==null){
                request.getSession().setAttribute("message", message_error);
                response.sendRedirect("Administrador/CRUD Productos/insertar producto.jsp");                
            }else{
                request.getSession().setAttribute("message", message_gg);
                response.sendRedirect("Administrador/CRUD Productos/insertar producto.jsp");               
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
