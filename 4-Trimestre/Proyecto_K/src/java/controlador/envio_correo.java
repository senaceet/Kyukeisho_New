package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Email;
import modelo.recuperacion_de_contraseña;
import modelo.conexion;

@WebServlet(name = "envio_correo", urlPatterns = {"/envio_correo"})
public class envio_correo extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
            
            Email email = new Email();
            recuperacion_de_contraseña rec  = new recuperacion_de_contraseña();
            
            String de = "emisor2000@gmail.com";
            String clave = "emisor1379";
            String para = request.getParameter("correo");
            String asunto = "Codigo de recuperacion de contraseña" ;
            int cod = (int)(Math.random()*10000+1000);
            
            String mensaje = "Este es tu codigo de recuperacion: "+cod;
            
           recuperacion_de_contraseña re = new recuperacion_de_contraseña(para,cod); 
           
            
            boolean resultado = email.enviarEmail(de, clave, para, mensaje, asunto);
           
            conexion c = new conexion();
            Connection conn = c.getConnection();
            
            
            
            response.sendRedirect("Cliente/Recuperar contrasena/Recuperar_contrasena_2.jsp");
            
            
    }

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(envio_correo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(envio_correo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
