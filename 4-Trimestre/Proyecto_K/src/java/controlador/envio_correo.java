package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Random;
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
            
            String de = "emisor2000@gmail.com";
            String clave = "emisor1379";
            String para = request.getParameter("correo");
            String asunto = "Codigo de recuperacion de contraseña" ;
            int cod = (int)(Math.random()*10000+1000);
            
            String mensaje = "Este es tu codigo de recuperacion: "+cod;
            
            recuperacion_de_contraseña r = new recuperacion_de_contraseña(para,cod);
            
            boolean resultado = email.enviarEmail(de, clave, para, mensaje, asunto);
            
            conexion c = new conexion();
            Connection conn = c.getConnection();
            
            String sql= 
            if(para==);
            response.sendRedirect("Cliente/Recuperar contrasena/Recuperar_contrasena_2.html");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
