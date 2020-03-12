package controlador;

import modelo.Categorias_juegos_DAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Categorias_juegos;


@WebServlet(name = "controlador_Categorias_juegos", urlPatterns = {"/controlador_Categorias_juegos"})
public class controlador_Categorias_juegos extends HttpServlet {
String listar="/Categorias_juegos.jsp";

    Categorias_juegos CJ=new Categorias_juegos();
    Categorias_juegos_DAO dao=new Categorias_juegos_DAO();
    
    int id_categoria_juegos;
    
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
            CJ.setnombre_categoria_juegos(request.getParameter("Nom_C"));
            dao.add(CJ);
            acceso=listar;
        }
        
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("id_categoria_juegos",request.getParameter("id_categoria_juegos"));
            request.setAttribute("a",1);
            acceso=listar;
        }
      
        else if(action.equalsIgnoreCase("Actualizar")){
            CJ.setid_categoria_juegos(id_categoria_juegos=Integer.parseInt(request.getParameter("id_categoria_juegos2")));
            CJ.setnombre_categoria_juegos(request.getParameter("nomC2"));
            dao.edit(CJ);
            acceso=listar;
        }
        
         else if(action.equalsIgnoreCase("elimi")){
            request.setAttribute("id_categoria_juegos",request.getParameter("id_categoria_juegos"));
            request.setAttribute("a1",1);
            acceso=listar;
        }
      
        
        else if(action.equalsIgnoreCase("Eliminar")){
            id_categoria_juegos=Integer.parseInt(request.getParameter("id_categoria_juegos3"));
            CJ.setid_categoria_juegos(id_categoria_juegos);
            dao.eliminar(id_categoria_juegos);
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