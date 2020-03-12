package controlador;

import Conexion.Conexion;
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
import javax.servlet.http.HttpSession;


@WebServlet(name = "registro_reservacion", urlPatterns = {"/registro_reservacion"})
public class registro_reservacion extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        
        
        String fecha = request.getParameter("fecha");
        String hora = request.getParameter("hora");
        int consola = Integer.parseInt(request.getParameter("consola"));

        HttpSession session=request.getSession();
        String correo_e = (String)session.getAttribute("correo_e");
        
        
        Conexion c = new Conexion();
        Connection conn = c.getConnection();
        
        
        Statement st = null;
        st = conn.createStatement();
        String sql = "insert into reservaciones (fecha_incio,hora_incio,id_consola,correo_usuario)  values('" + fecha + "','" + hora + "'," + consola + ",'" + correo_e + "')";
        st.executeUpdate(sql);
     
        Statement st2 = null;
        st2 = conn.createStatement();
        String sql2 = "update consola set id_estado_consola=2 where id_consola=" + consola +" ";
        st.executeUpdate(sql2);
        
        response.sendRedirect("Cliente/Reservacion.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(registro_reservacion.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(registro_reservacion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(registro_reservacion.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(registro_reservacion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}