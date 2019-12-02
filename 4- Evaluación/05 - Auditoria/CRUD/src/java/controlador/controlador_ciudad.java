package controlador;

import modelo.ciudaddao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.ciudad;


@WebServlet(name = "controlador_ciudad", urlPatterns = {"/controlador_ciudad"})
public class controlador_ciudad extends HttpServlet {
String listar="/ciudad.jsp";

    ciudad CJ=new ciudad();
    ciudaddao dao=new ciudaddao();
    
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
            dao.add(CJ);
            acceso=listar;
        }
        
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("id_categoria_juegos",request.getParameter("id_categoria_juegos"));
            request.setAttribute("a",1);
            acceso=listar;
        }
      
        else if(action.equalsIgnoreCase("Actualizar")){
            CJ.setcodigo_ciudad(codigo_ciudad=Integer.parseInt(request.getParameter("codigo_ciudad2")));
            CJ.setnombre_ciudad(request.getParameter("nombre2"));
            dao.edit(CJ);
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