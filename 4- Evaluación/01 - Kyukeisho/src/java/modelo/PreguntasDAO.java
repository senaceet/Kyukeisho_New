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
    public List listar(){
        ArrayList<Preguntas>list=new ArrayList<>();
        String sql="SELECT id_pregunta, correo, pregunta, fecha FROM preguntas";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Preguntas ma=new Preguntas();
                ma.setId_pregunta(rs.getInt("id_pregunta"));
                ma.setCorreo(rs.getString("correo"));
                ma.setPregunta(rs.getString("pregunta"));
                ma.setFecha(rs.getString("fecha"));
                list.add(ma);
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    @Override
    public Preguntas list(int id_pregunta){
         String sql="SELECT id_pregunta, correo, pregunta, fecha FROM preguntas WHERE id_pregunta=" +id_pregunta;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Preguntas ma=new Preguntas();
                ma.setId_pregunta(rs.getInt("id_pregunta"));
                ma.setCorreo(rs.getString("correo"));
                ma.setPregunta(rs.getString("pregunta"));
                ma.setFecha(rs.getString("fecha"));
            }
        } catch (Exception e) {
        }
        return CJ;
    }
    @Override
    public boolean add(Preguntas ma){
        String sql="INSERT INTO pregunta (pregunta, correo, fecha)VALUES('"+ma.getPregunta()+"','"+ma.getCorreo()+ "','"+ dateFormat.format(cal.getTime())+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }
    
}
