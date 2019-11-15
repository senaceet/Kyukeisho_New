package controlador;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Admin;
import modelo.AdminDAO;


public class ControladorAdmin extends HttpServlet {
    AdminDAO dao=new AdminDAO();
    Admin p = new Admin();
    int r;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String accion = request.getParameter("accion");
        if(accion.equals("Ingresar")){
            String correo= request.getParameter("txtcorreo");
            String contraseña= request.getParameter("txtcontraseña");
            p.setCorreo_administrador(correo);
            p.setContraseña_administrador(contraseña);
            r = dao.ValidarAdmin(p);
            if(r==1){
                
                request.getSession().setAttribute("correo", correo);
                
                response.sendRedirect("Administrador/Inicio_Administrador.jsp");                
            }else{
                response.sendRedirect("Administrador/Inicio_Sesion_Administrador.jsp");                
            }
        }else{
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
