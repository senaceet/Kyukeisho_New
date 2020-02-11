package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.Email;
import modelo.Persona_email;
import modelo.Persona_email_DAO;
import Conexion.Conexion;

@WebServlet(name = "envio_correo", urlPatterns = {"/envio_correo"})
public class envio_correo extends HttpServlet {

    Persona_email_DAO dao=new Persona_email_DAO();
    Persona_email p = new Persona_email();
    int r;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        
        response.setContentType("text/html;charset=UTF-8");
            
            Email email = new Email();
            
            String de = "kyukeisho@gmail.com";
            String clave = "kyukeisho2019";
            String para = request.getParameter("correo");
            String asunto = "Codigo de recuperacion de contraseña" ;
            int cod = (int)(Math.random()*10000+1000);
            
            String mensaje = "Este es tu codigo de recuperacion: "+cod;
            
            HttpSession session=request.getSession(); 
            session.setAttribute("codigo", cod);
            session.setAttribute("correo", para);
           
            Conexion c = new Conexion();
            Connection conn = c.getConnection();
            
        String message_error = "Este correo no existe en nuestro sistema,Vuelve a ingresar un correo valido.";
        
        String accion = request.getParameter("accion");
        
        if(accion.equals("Ingresar")){
            
            p.setCorreo_usuario(para);
            r = dao.Validar_email(p);
            
            if(r==1){
                request.getSession().setAttribute("correo", para);
                
                response.sendRedirect("Cliente/Recuperar contrasena/Recuperar_contrasena_2.jsp");
                
                boolean resultado = email.enviarEmail(de, clave, para, mensaje, asunto);
            }else{
                request.getSession().setAttribute("message_e", message_error);
                response.sendRedirect("Cliente/Recuperar contrasena/Recuperar_contrasena_1.jsp");                     
            }
        }
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