
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
import javax.servlet.http.HttpSession;
import static jdk.nashorn.internal.runtime.Debug.id;
import Conexion.Conexion;

@WebServlet(name = "recuperar_contraseña", urlPatterns = {"/recuperar_contraseña"})
public class recuperar_contraseña extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        
        String con_1 = request.getParameter("contraseña_1");
        String con_2 = request.getParameter("contraseña_2");
        
        HttpSession session=request.getSession(); 
        String correo2 = (String) session.getAttribute("correo");
        
        String message_gg = "Actualizacion satisfactoria";
        String message_error = "Las contraseñas no coinciden";
        
        if(con_1 == null ? con_2 != null : !con_1.equals(con_2)){
                request.getSession().setAttribute("message", message_error);
                response.sendRedirect("Cliente/Recuperar contrasena/Recuperar_contrasena_3.jsp"); 
                
            }else{
              Conexion c = new Conexion();
              Connection conn = c.getConnection();
            
              Statement st = null;  
              st = conn.createStatement();
              String sql = "Update usuario Set contraseña_usuario= '"+ con_1 +"' where correo_usuario= '"+ correo2 +"'";
              st.executeUpdate(sql);
        
                request.getSession().setAttribute("message", message_gg);
                response.sendRedirect("Cliente/Recuperar contrasena/Recuperar_contrasena_3.jsp"); 
            }
              
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(recuperar_contraseña.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(recuperar_contraseña.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
