package controlador;

import modelo.usuarios_DAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Encriptacion_MD5;
import modelo.usuarios;


@WebServlet(name = "controlador_usuarios", urlPatterns = {"/controlador_usuarios"})
public class controlador_usuarios extends HttpServlet {
String listar="/CRUD_usuarios.jsp";

    usuarios CJ = new usuarios();
    usuarios_DAO dao=new usuarios_DAO();
    
    int id_usuario;
    
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
            CJ.setprimer_nombre_usuario(request.getParameter("pnom"));
            CJ.setsegundo_nombre_usuario(request.getParameter("snom"));
            CJ.setprimer_apellido_usuario(request.getParameter("pape"));
            CJ.setsegundo_apellido_usuario(request.getParameter("sape"));
            CJ.setcorreo_usuario(request.getParameter("cor"));
            CJ.settelefono_usuario(Long.parseLong(request.getParameter("tel")));
            CJ.setdireccion(request.getParameter("dir"));
            String contraseña= request.getParameter("con");
            String contraseña_encriptada = Encriptacion_MD5.Encriptar(contraseña);
            CJ.setcontraseña_usuario(contraseña_encriptada);
            CJ.setid_estado_cliente(Integer.parseInt(request.getParameter("es")));
            dao.add(CJ);
            acceso=listar;
        }
        
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("id_usuario",request.getParameter("id_usuario"));
            request.setAttribute("a",1);
            acceso=listar;
        }
      
        else if(action.equalsIgnoreCase("Actualizar")){
            CJ.setid_usuario(id_usuario=Integer.parseInt(request.getParameter("id_usuario2")));
            CJ.setprimer_nombre_usuario(request.getParameter("pnom2"));
            CJ.setsegundo_nombre_usuario(request.getParameter("snom2"));
            CJ.setprimer_apellido_usuario(request.getParameter("pape2"));
            CJ.setsegundo_apellido_usuario(request.getParameter("sape2"));
            CJ.setcorreo_usuario(request.getParameter("cor2"));
            CJ.settelefono_usuario(Long.parseLong(request.getParameter("tel2")));
            CJ.setdireccion(request.getParameter("dir2"));
            CJ.setcontraseña_usuario(request.getParameter("con2"));
            CJ.setid_estado_cliente(Integer.parseInt(request.getParameter("es2")));
            dao.edit(CJ);
            acceso=listar;
        }
        
       
        RequestDispatcher vistas=getServletContext().getRequestDispatcher(acceso);
        vistas.forward( request, response );

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