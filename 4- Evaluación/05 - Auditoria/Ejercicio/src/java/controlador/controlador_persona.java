package controlador;

import modelo.personaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.persona;


@WebServlet(name = "controlador_persona", urlPatterns = {"/controlador_persona"})
public class controlador_persona extends HttpServlet {
String listar="/persona.jsp";


    persona CJ = new persona();
    personaDAO dao=new personaDAO();
    
    int documento_persona;
    
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
            CJ.setdocumento_persona(Integer.parseInt(request.getParameter("doc")));
            CJ.setprimer_nombre_persona(request.getParameter("pnom"));
            CJ.setsegundo_nombre_persona(request.getParameter("snom"));
            CJ.setprimer_apellido_persona(request.getParameter("pape"));
            CJ.setsegundo_apellido_persona(request.getParameter("sape"));
            CJ.setcodigo_ciudad(Integer.parseInt(request.getParameter("cod")));
            HttpSession session=request.getSession();
            String correo_g = (String)session.getAttribute("correo_g");
            CJ.setcorreo(correo_g);
            
            dao.add(CJ);
            dao.auditoria_añadir_persona(CJ);
            acceso=listar;
        }
        
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("documento_persona",request.getParameter("documento_persona"));
            request.setAttribute("a",1);
            acceso=listar;
        }
      
        else if(action.equalsIgnoreCase("Actualizar")){
            CJ.setdocumento_persona(documento_persona=Integer.parseInt(request.getParameter("documento_persona2")));
            CJ.setdocumento_persona(Integer.parseInt(request.getParameter("doc2")));
            CJ.setprimer_nombre_persona(request.getParameter("pnom2"));
            CJ.setsegundo_nombre_persona(request.getParameter("snom2"));
            CJ.setprimer_apellido_persona(request.getParameter("pape2"));
            CJ.setsegundo_apellido_persona(request.getParameter("sape2"));
            CJ.setcodigo_ciudad(Integer.parseInt(request.getParameter("cod2")));
            HttpSession session=request.getSession();
            String correo_g = (String)session.getAttribute("correo_g");
            CJ.setcorreo(correo_g);
            
            dao.edit(CJ);
            dao.auditoria_editar_persona_viejo(CJ);
            dao.auditoria_editar_persona_nuevo(CJ);
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