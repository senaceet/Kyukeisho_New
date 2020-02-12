package controlador;

import modelo.CiudadDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.Ciudad;


@WebServlet(name = "Controlador_Ciudad", urlPatterns = {"/Controlador_Ciudad"})
public class Controlador_Ciudad extends HttpServlet {
String listar="/Ciudad.jsp";

    Ciudad CJ=new Ciudad();
    CiudadDAO dao=new CiudadDAO();
    
    int codigo_ciudad;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso="";
        String action=request.getParameter("accion");
        if(action.equalsIgnoreCase("listar")){
            acceso=listar;            
        }
       
      
        else if(action.equalsIgnoreCase("Agregar")){
            CJ.setnombre_ciudad(request.getParameter("nombre"));
            HttpSession session=request.getSession();
            String correo_g = (String)session.getAttribute("correo_g");
            CJ.setcorreo(correo_g);
            
            dao.add(CJ);
            dao.auditoria_añadir_ciudad(CJ);
            acceso=listar;
        }
        
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("codigo_ciudad",request.getParameter("codigo_ciudad"));
            request.setAttribute("a",1);
            acceso=listar;
        }
      
        else if(action.equalsIgnoreCase("Actualizar")){
            CJ.setcodigo_ciudad(codigo_ciudad=Integer.parseInt(request.getParameter("codigo_ciudad2")));
            CJ.setnombre_ciudad(request.getParameter("nombre2"));
            
            HttpSession session=request.getSession();
            String correo_g = (String)session.getAttribute("correo_g");
            CJ.setcorreo(correo_g);
            
            dao.auditoria_editar_ciudad_viejo(CJ);
            dao.edit(CJ);
            dao.auditoria_editar_ciudad_nuevo(CJ);
            acceso=listar;
        }
        
        else if(action.equalsIgnoreCase("elimi")){
            request.setAttribute("codigo_ciudad",request.getParameter("codigo_ciudad"));
            request.setAttribute("a1",1);
            acceso=listar;
        }
      
        
        else if(action.equalsIgnoreCase("Eliminar")){
            codigo_ciudad=Integer.parseInt(request.getParameter("codigo_ciudad3"));
            CJ.setcodigo_ciudad(codigo_ciudad);
            HttpSession session=request.getSession();
            String correo_g = (String)session.getAttribute("correo_g");
            CJ.setcorreo(correo_g);
            
            dao.auditoria_eliminar_ciudad(CJ);
            dao.eliminar(codigo_ciudad);
            acceso=listar;
        }
       
        RequestDispatcher vista=getServletContext().getRequestDispatcher(acceso);
        vista.forward( request, response );

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}