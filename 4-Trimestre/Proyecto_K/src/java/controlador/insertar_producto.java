package controlador;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.conexion;


@WebServlet(name = "insertar_producto", urlPatterns = {"/insertar_producto"})
public class insertar_producto extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        
        int id = Integer.parseInt(request.getParameter("id"));
        String nom = request.getParameter("nombre");
        String can = request.getParameter("cantidad");
        String pre = request.getParameter("precio");
        String tip = request.getParameter("tipo");
        
        conexion c = new conexion();
        Connection conn = c.getConnection();
        
        Statement st = null;
        st = conn.createStatement();
        String sql = "insert into productos values("+ id + ",'" + nom + "','" + can + "','" + pre + "','" + tip + "')";
        st.executeUpdate(sql);
        
        
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet operacion</title>");    
            out.println("<link rel='icon' type='image/png' href='https://cdn4.iconfinder.com/data/icons/royal-crowns/154/vip-corona-royal-crown-512.png'>");
            out.println("</head>");
            out.println("<style>");
            out.println("body");
            out.println("{");
            out.println("background: url(\'https://s3.amazonaws.com/battlefy-user-generated-assets-with-permissions%2Ffacebook%7C1520153248069868/1511051605527.negro.jpg') ;");
            out.println("background-size:100%;");
            out.println("}");
            out.println("</style>");
            out.println("<body>");
            out.println("<font style='color:rgb(255, 255, 255)'>");
            out.println("<br>");
            out.println("<br>");
            out.println("<br>");
            out.println("<br>");
            out.println("<br>");
            out.println("<br>");
            out.println("<br>");
            out.println("<br>");
            out.println("<br>");
            out.println("<br>");
            out.println("<br>");
            out.println("<br>");
            out.println("<center>");
            out.println("<h1 ><strong>Resultados:</strong></h1>");
            out.println("<div class='card' style='background-color:rgb(96, 104, 99, 0.26); width: 20rem;'>");
            out.println("<br>");
            out.println("<div class='container-fluid'>");
            out.println("<div class='row'>");
            out.println("<div class='col-xl-12'>");
            out.println("<h1>Registro satisfactorio.</h1>");
            out.println("<br>");
            out.println("<a style=\"color:rgb(255, 255, 255)\" href='javascript:history.back()'> Volver Atrás</a>");
            out.println("</div>");
            out.println("</div>");
            out.println("</div>");
            out.println("<br>");
            out.println("</div>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(insertar_producto.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(insertar_producto.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(insertar_producto.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(insertar_producto.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
