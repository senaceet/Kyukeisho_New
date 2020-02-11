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
import Conexion.Conexion;
import modelo.Encriptacion_MD5;
import modelo.usuario_DAO;

@WebServlet(name = "registro_usuario", urlPatterns = {"/registro_usuario"})
public class registro_usuario extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        
        
        String pri_nom_user = request.getParameter("primer_nombre_cliente");
        String seg_nom_user = request.getParameter("segundo_nombre_cliente");
        String pri_ape_user = request.getParameter("primer_apellido_cliente");
        String seg_ape_user = request.getParameter("segundo_apellido_cliente");
        String email_user = request.getParameter("email_cliente");
        long tel_user =Long.parseLong(request.getParameter("telefono_cliente"));
        String direc_user = request.getParameter("direccion_cliente");
        String contra_user = request.getParameter("contra_cliente");
        String contra_encriptada = Encriptacion_MD5.Encriptar(contra_user);
        
        usuario_DAO d = new usuario_DAO(pri_nom_user,seg_nom_user,pri_ape_user,seg_ape_user,email_user,tel_user,direc_user,contra_user,contra_encriptada);
        String doc1 = d.connection();
        
        Conexion c = new Conexion();
        Connection conn = c.getConnection();
        
        Statement st = null;
        st = conn.createStatement();
        String sql = "insert into usuario (primer_nombre_usuario,segundo_nombre_usuario,primer_apellido_usuario,segundo_apellido_usuario,correo_usuario,telefono_usuario,direccion,contraseña_usuario) values('" + pri_nom_user + "','" + seg_nom_user + "','" + pri_ape_user + "','" + seg_ape_user + "','" + email_user + "'," + tel_user + ",'" + direc_user + "','" + contra_encriptada + "')";
        st.executeUpdate(sql);
        response.sendRedirect("Cliente/Inicio_Sesion_Cliente.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(registro_usuario.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(registro_usuario.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(registro_usuario.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(registro_usuario.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}