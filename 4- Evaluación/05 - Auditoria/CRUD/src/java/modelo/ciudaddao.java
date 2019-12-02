package modelo;

import Conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.ciudad;
import interfaz.crud_ciudad;


public class ciudaddao implements crud_ciudad {
    Conexion cn= new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    ciudad CJ =new ciudad();

    @Override
    public List listar() {
        ArrayList<ciudad>list=new ArrayList<>();
        String sql="select * from ciudad ORDER BY codigo_ciudad asc limit 40";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                ciudad ma=new ciudad();
                ma.setcodigo_ciudad(rs.getInt("codigo_ciudad"));
               ma.setnombre_ciudad(rs.getString("nombre_ciudad"));
                list.add(ma);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public ciudad list(int codigo_ciudad) {
        String sql="select * from ciudad where codigo_ciudad="+ codigo_ciudad;
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
    public boolean add(ciudad ma) {
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
    public boolean edit(ciudad ma) {
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
