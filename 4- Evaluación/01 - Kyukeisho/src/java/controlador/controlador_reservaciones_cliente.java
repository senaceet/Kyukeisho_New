package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.reservaciones;
import modelo.reservaciones_DAO;

@WebServlet(name = "controlador_reservaciones", urlPatterns = {"/controlador_reservaciones"})
public class controlador_reservaciones_cliente extends HttpServlet {
String listar="/CRUD_reservaciones.jsp";

    reservaciones PV = new reservaciones();
    reservaciones_DAO dao=new reservaciones_DAO();
    
    int id_reservacion;
    
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
            PV.setfecha_incio(request.getParameter("fecha_i"));
            PV.sethora_incio(request.getParameter("hora_i"));
            PV.setid_consola(Integer.parseInt(request.getParameter("id_c")));
            PV.setcorreo_usuario(request.getParameter("correo_u"));
            dao.add(PV);
            dao.update(PV);
            acceso=listar;
        }
        
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("id_reservacion",request.getParameter("id_reservacion"));
            request.setAttribute("a",1);
            acceso=listar;
        }
      
        else if(action.equalsIgnoreCase("Actualizar")){
            PV.setid_reservacion(id_reservacion=Integer.parseInt(request.getParameter("id_reservacion2")));
            PV.setfecha_incio(request.getParameter("fecha_i2"));
            PV.sethora_incio(request.getParameter("hora_i2"));
            PV.setid_consola(Integer.parseInt(request.getParameter("id_c2")));
            PV.setcorreo_usuario(request.getParameter("correo_u2"));
            dao.edit(PV);
            acceso=listar;
        }
        
         else if(action.equalsIgnoreCase("elimi")){
            request.setAttribute("id_reservacion",request.getParameter("id_reservacion"));
            request.setAttribute("a1",1);
            acceso=listar;
        }
      
        
        else if(action.equalsIgnoreCase("Eliminar")){
            id_reservacion=Integer.parseInt(request.getParameter("id_reservacion3"));
            PV.setid_reservacion(id_reservacion);
            dao.eliminar(id_reservacion);
            dao.update2(PV);
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