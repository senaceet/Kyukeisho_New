package controlador;


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.categorias_productos;
import modelo.categorias_productos_DAO;


@WebServlet(name = "controlador_categorias_productos", urlPatterns = {"/controlador_categorias_productos"})
public class controlador_categorias_productos extends HttpServlet {
String listar="/CRUD_Categorias_productos.jsp";

    categorias_productos CJ=new categorias_productos();
    categorias_productos_DAO dao=new categorias_productos_DAO();
    
    int id_tipo_producto;
    
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
            CJ.setnombre_tipo_producto(request.getParameter("nom_c"));
            dao.add(CJ);
            acceso=listar;
        }
        
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("id_tipo_producto",request.getParameter("id_tipo_producto"));
            request.setAttribute("a",1);
            acceso=listar;
        }
      
        else if(action.equalsIgnoreCase("Actualizar")){
            CJ.setid_tipo_producto(id_tipo_producto=Integer.parseInt(request.getParameter("id_c2")));
            CJ.setnombre_tipo_producto(request.getParameter("nom_2"));
            dao.edit(CJ);
            acceso=listar;
        }
        
         else if(action.equalsIgnoreCase("elimi")){
            request.setAttribute("id_tipo_producto",request.getParameter("id_tipo_producto"));
            request.setAttribute("a1",1);
            acceso=listar;
        }
      
        
        else if(action.equalsIgnoreCase("Eliminar")){
            id_tipo_producto=Integer.parseInt(request.getParameter("id_c3"));
            CJ.setid_tipo_producto(id_tipo_producto);
            dao.eliminar(id_tipo_producto);
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