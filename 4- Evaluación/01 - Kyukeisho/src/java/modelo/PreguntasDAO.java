package modelo;

import Conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import modelo.Preguntas;
import java_interfaces.InterfazPreguntas;
//----------------------------------------------------------------------------        
public class PreguntasDAO implements InterfazPreguntas{
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Preguntas CJ = new Preguntas();   
//----------------------------------------------------------------------------
    DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS"); 
    Calendar cal = Calendar.getInstance();    
//-----------------------------------------------------------------------------        
    @Override
    public boolean add(Preguntas ma){
        String sql="INSERT INTO preguntas (correo, pregunta, fecha)VALUES('"+ma.getCorreo()+"','"+ma.getPregunta()+"','"+ dateFormat.format(cal.getTime())+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }
    
}
