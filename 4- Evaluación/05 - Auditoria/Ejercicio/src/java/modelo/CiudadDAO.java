package modelo;

import Conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.Ciudad;
import interfaz.CRUD_Ciudad;


public class CiudadDAO implements CRUD_Ciudad {
    Conexion cn= new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Ciudad CJ =new Ciudad();

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
    
}
