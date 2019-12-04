package modelo;

import Conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.Ciudad;
import interfaz.CRUD_Ciudad;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;


public class CiudadDAO implements CRUD_Ciudad {
    Conexion cn= new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Ciudad CJ =new Ciudad();
    DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS"); 
    Calendar cal = Calendar.getInstance(); 

    @Override
    public List listar() {
        ArrayList<Ciudad>list=new ArrayList<>();
        String sql="select * from ciudad";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Ciudad ma=new Ciudad();
                ma.setcodigo_ciudad(rs.getInt("codigo_ciudad"));
                ma.setnombre_ciudad(rs.getString("nombre_ciudad"));
                list.add(ma);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Ciudad list(int codigo_ciudad) {
        String sql="select * from ciudad where  codigo_ciudad="+ codigo_ciudad;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){                
                CJ.setcodigo_ciudad(rs.getInt("codigo_ciudad"));
                CJ.setnombre_ciudad(rs.getString("nombre_ciudad"));
 
            }
        } catch (Exception e) {
        }
        return CJ;
    }

    @Override
    public boolean add(Ciudad ma) {
       String sql="insert into ciudad (nombre_ciudad)values('"+ma.getnombre_ciudad()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }
    
    @Override
    public boolean auditoria_añadir_ciudad(Ciudad ma) {
       String sql="insert into auditoria_Ciudad (empleado,fecha,intervencion,accion,nombre_ciudad,codigo_ciudad) SELECT '"+ma.getcorreo()+"','" + dateFormat.format(cal.getTime()) + "','Entidad ciudad','Agrego','"+ma.getnombre_ciudad()+"',codigo_ciudad from ciudad where nombre_ciudad='"+ma.getnombre_ciudad()+"'";
        
       try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();            
        } catch (Exception e) {
        }
       return false;
    }


    @Override
    public boolean edit(Ciudad ma) {
        String sql="update ciudad set nombre_ciudad='"+ma.getnombre_ciudad()+"'where codigo_ciudad="+ma.getcodigo_ciudad();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
    @Override
    public boolean auditoria_editar_ciudad_nuevo(Ciudad ma) {
       String sql="insert into auditoria_Ciudad (empleado,fecha,intervencion,accion,codigo_ciudad,nombre_ciudad)values('"+ma.getcorreo()+"','" + dateFormat.format(cal.getTime()) + "','Entidad ciudad','editado',"+ma.getcodigo_ciudad()+",'"+ma.getnombre_ciudad()+"')";
        
       try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();            
        } catch (Exception e) {
        }
       return false;
    }
    
    @Override
    public boolean auditoria_eliminar_ciudad(Ciudad ma) {
       String sql="insert into auditoria_Ciudad (empleado,fecha,intervencion,accion,codigo_ciudad,nombre_ciudad) SELECT '"+ma.getcorreo()+"','" + dateFormat.format(cal.getTime()) + "','Entidad ciudad','eliminado',"+ma.getcodigo_ciudad()+",nombre_ciudad FROM ciudad WHERE codigo_ciudad=" + ma.getcodigo_ciudad();
        
       try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();            
        } catch (Exception e) {
        }
       return false;
    }
    
    
        @Override
    public boolean eliminar(int codigo_ciudad) {
        String sql="delete from ciudad where codigo_ciudad="+codigo_ciudad;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    

    
}
