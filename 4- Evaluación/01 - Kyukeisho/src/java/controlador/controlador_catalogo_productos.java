package controlador;


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Productos_vendidos;
import modelo.Catalogo_productos_DAO;

@WebServlet(name = "controlador_catalogo_productos", urlPatterns = {"/controlador_catalogo_productos"})
public class controlador_catalogo_productos extends HttpServlet {
String listar="/Productos.jsp";

    Productos_vendidos PV = new Productos_vendidos();
    Catalogo_productos_DAO dao=new Catalogo_productos_DAO();
    
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
            PV.setespecificaciones(request.getParameter("especificaciones2"));
            PV.setdir_img_producto(request.getParameter("dir_img_producto2"));
            PV.setid_tipo_producto(Integer.parseInt(request.getParameter("Tipo_P2")));
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