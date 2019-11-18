package controlador;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.validacion_cod;
import modelo.recuperacion_de_contraseña;


public class controlador_validacion extends HttpServlet {
    
    validacion_cod dao=new validacion_cod();
    recuperacion_de_contraseña rec = new recuperacion_de_contraseña();
    int r;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
   
        String accion = request.getParameter("accion");
        
        if(accion.equals("enviar")){
            int codigo_i= Integer.parseInt(request.getParameter("codigo_i"));
            
            p.setCorreo_usuario(correo);
            p.setContraseña_usuario(contraseña);
            r = dao.Validar(p);
            if(r==1){
                
                request.getSession().setAttribute("correo", correo);
                
                response.sendRedirect("Cliente/Cliente.jsp");                
            }else{
                response.sendRedirect("Cliente/Inicio_Sesion_Cliente.jsp");                
            }
        }else{
            response.sendRedirect("Cliente/Inicio_Sesion_Cliente.jsp");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}