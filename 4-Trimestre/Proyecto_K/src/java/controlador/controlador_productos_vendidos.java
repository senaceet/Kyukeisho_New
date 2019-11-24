package controlador;

import modelo.Productos_vendidos_DAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Productos_vendidos;


@WebServlet(name = "controlador_productos_vendidos", urlPatterns = {"/controlador_productos_vendidos"})
public class controlador_productos_vendidos extends HttpServlet {
String listar="/Crud_Productos_Vendidos.jsp";

    Productos_vendidos PV = new Productos_vendidos();
    Productos_vendidos_DAO dao=new Productos_vendidos_DAO();
    
    int id_producto;
    
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
            PV.setnombre_producto(request.getParameter("Nom_P"));
            PV.setcantidad_producto(Integer.parseInt(request.getParameter("Can_P")));
            PV.setprecio_unitario_producto(Integer.parseInt(request.getParameter("Pre_P")));
            PV.setid_tipo_producto(Integer.parseInt(request.getParameter("tipo_P")));
            dao.add(PV);
            acceso=listar;
        }
        
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("id_producto",request.getParameter("id_producto"));
            request.setAttribute("a",1);
            acceso=listar;
        }
      
        else if(action.equalsIgnoreCase("Actualizar")){
            PV.setid_producto(id_producto=Integer.parseInt(request.getParameter("id_producto2")));
            PV.setnombre_producto(request.getParameter("Nom_P2"));
            PV.setcantidad_producto(Integer.parseInt(request.getParameter("Can_P2")));
            PV.setprecio_unitario_producto(Integer.parseInt(request.getParameter("Pre_P2")));
            PV.setid_tipo_producto(Integer.parseInt(request.getParameter("Tipo_P2")));
            dao.edit(PV);
            acceso=listar;
        }
        
         else if(action.equalsIgnoreCase("elimi")){
            request.setAttribute("id_producto",request.getParameter("id_producto"));
            request.setAttribute("a1",1);
            acceso=listar;
        }
      
        
        else if(action.equalsIgnoreCase("Eliminar")){
            id_producto=Integer.parseInt(request.getParameter("id_producto3"));
            PV.setid_producto(id_producto);
            dao.eliminar(id_producto);
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