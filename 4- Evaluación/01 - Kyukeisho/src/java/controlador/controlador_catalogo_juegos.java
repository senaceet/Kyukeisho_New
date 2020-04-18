package controlador;


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Juegos;
import modelo.catalogo_juegos_DAO;


@WebServlet(name = "controlador_catalogo_juegos", urlPatterns = {"/controlador_catalogo_juegos"})
public class controlador_catalogo_juegos extends HttpServlet {
String listar="/Juegos.jsp";

    Juegos PV = new Juegos();
    catalogo_juegos_DAO dao=new catalogo_juegos_DAO();
    
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
       
      

        
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("codigo_juego",request.getParameter("codigo_juego"));
            request.setAttribute("a",1);
            acceso=listar;
        }
      
        else if(action.equalsIgnoreCase("Actualizar")){
            PV.setcodigo_juego(codigo_juego=Integer.parseInt(request.getParameter("codigo_juego2")));
            PV.setnombre_juego(request.getParameter("nombre2"));
            PV.setdir_img_juego(request.getParameter("dir_img_juego2"));
            PV.setid_categoria_juegos(Integer.parseInt(request.getParameter("id_c2")));
            PV.setid_consola(Integer.parseInt(request.getParameter("id_consola2")));
            dao.edit(PV);
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