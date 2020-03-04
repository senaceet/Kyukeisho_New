package controlador;

import modelo.consolas_DAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.consolas;


@WebServlet(name = "controlador_consolas", urlPatterns = {"/controlador_consolas"})
public class controlador_consolas extends HttpServlet {
String listar="/Crud_consolas.jsp";

    consolas PV = new consolas();
    consolas_DAO dao=new consolas_DAO();
    
    int id_consola;
    
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
            PV.setnombre_consola(request.getParameter("nombre"));
            PV.setprecio_hora(request.getParameter("precio"));
            PV.setid_estado_consola(Integer.parseInt(request.getParameter("id_e")));
            dao.add(PV);
            acceso=listar;
        }
        
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("id_consola",request.getParameter("id_consola"));
            request.setAttribute("a",1);
            acceso=listar;
        }
      
        else if(action.equalsIgnoreCase("Actualizar")){
            PV.setid_consola(id_consola=Integer.parseInt(request.getParameter("id_consola2")));
            PV.setnombre_consola(request.getParameter("nombre2"));
            PV.setprecio_hora(request.getParameter("precio2"));
            PV.setid_estado_consola(Integer.parseInt(request.getParameter("id_e2")));
            dao.edit(PV);
            acceso=listar;
        }
        
         else if(action.equalsIgnoreCase("elimi")){
            request.setAttribute("id_consola",request.getParameter("id_consola"));
            request.setAttribute("a1",1);
            acceso=listar;
        }
      
        
        else if(action.equalsIgnoreCase("Eliminar")){
            id_consola=Integer.parseInt(request.getParameter("id_consola3"));
            PV.setid_consola(id_consola);
            dao.eliminar(id_consola);
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