package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.PreguntasDAO;
import modelo.Preguntas;
//----------------------------------------------------------------------------
public class Controlador_Preguntas extends HttpServlet {
//-----------------------------------------------------------------------------
    Preguntas CJ = new Preguntas();
    PreguntasDAO dao=new PreguntasDAO();
    int r;
    
    int id_pregunta;
    String message = "El Mensaje No A Sido Enviado, Intente Nuevamente";
    String message1 = "El Mensaje Se Envio Correctamente, Gracias";
//-----------------------------------------------------------------------------    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action=request.getParameter("accion");
        
        if(action.equalsIgnoreCase("Enviar")){
            CJ.setPregunta(request.getParameter("pregunta"));
            CJ.setCorreo(request.getParameter("correo"));
            dao.add(CJ);
            
            if(r==1){                    
                response.sendRedirect("HomePage.jsp");  
            }else{
                response.sendRedirect("HomePage.jsp"); 
                System.out.print("El Mensaje Se Envio Correctamente, Gracias");
        }
    }
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>



}
