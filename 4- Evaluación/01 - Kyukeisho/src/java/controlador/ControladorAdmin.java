package controlador;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.Admin;
import modelo.AdminDAO;


public class ControladorAdmin extends HttpServlet {
    AdminDAO dao=new AdminDAO();
    Admin a = new Admin();
    int r;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String accion = request.getParameter("accion");
        if(accion.equals("Ingresar")){
            String correo= request.getParameter("txtcorreo");
            String contraseña= request.getParameter("txtcontraseña");
            a.setCorreo_administrador(correo);
            a.setContraseña_administrador(contraseña);
            r = dao.ValidarAdmin(a);
            HttpSession session=request.getSession();
            if(r==1){
                
                request.getSession().setAttribute("correo", correo);
                
                session.setAttribute("administrador", a);
                
                response.sendRedirect("Administrador/Inicio_Administrador.jsp");                
            }else{
                response.sendRedirect("Administrador/Inicio_Sesion_Administrador.jsp");                
            }
        }
        
               if(accion.equals("Cerrar Sesion")){
            HttpSession session = request.getSession();
            session.removeAttribute("administrador");
            request.getSession().invalidate();
            response.sendRedirect("Administrador/Inicio_Sesion_Administrador.jsp");    
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
