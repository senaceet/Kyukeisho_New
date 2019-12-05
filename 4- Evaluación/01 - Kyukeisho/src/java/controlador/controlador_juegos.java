package controlador;

import modelo.JuegoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Juegos;


@WebServlet(name = "controlador_juegos", urlPatterns = {"/controlador_juegos"})
public class controlador_juegos extends HttpServlet {
String listar="/Crud_Juegos.jsp";

    Juegos PV = new Juegos();
    JuegoDAO dao=new JuegoDAO();
    
    int codigo_juego;
    
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
            PV.setnombre_juego(request.getParameter("nombre"));
            dao.add(PV);
            acceso=listar;
        }
        
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("codigo_juego",request.getParameter("codigo_juego"));
            request.setAttribute("a",1);
            acceso=listar;
        }
      
        else if(action.equalsIgnoreCase("Actualizar")){
            PV.setcodigo_juego(Integer.parseInt(request.getParameter("codigo_juego2")));
            PV.setnombre_juego(request.getParameter("nombre2"));
            dao.edit(PV);
            acceso=listar;
        }
        
         else if(action.equalsIgnoreCase("elimi")){
            request.setAttribute("codigo_juego",request.getParameter("codigo_juego"));
            request.setAttribute("a1",1);
            acceso=listar;
        }
      
        
        else if(action.equalsIgnoreCase("Eliminar")){
            codigo_juego=Integer.parseInt(request.getParameter("codigo3"));
            PV.setcodigo_juego(codigo_juego);
            dao.eliminar(codigo_juego);
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