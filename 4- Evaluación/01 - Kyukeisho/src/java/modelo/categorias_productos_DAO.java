package modelo;

import Conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.categorias_productos;
import java_interfaces.CRUD_Categorias_productos;


public class categorias_productos_DAO implements CRUD_Categorias_productos {
    Conexion cn= new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    categorias_productos CJ =new categorias_productos();

    @Override
    public List listar() {
        ArrayList<categorias_productos>list=new ArrayList<>();
        String sql="select * from tipo_producto ORDER BY nombre_tipo_producto";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
               categorias_productos ma=new categorias_productos();
               ma.setid_tipo_producto(rs.getInt("id_tipo_producto"));
               ma.setnombre_tipo_producto(rs.getString("nombre_tipo_producto"));
                list.add(ma);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public categorias_productos list(int id_tipo_producto) {
        String sql="select * from tipo_producto where  id_tipo_producto="+ id_tipo_producto;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){                
                CJ.setid_tipo_producto(rs.getInt("id_tipo_producto"));
                CJ.setnombre_tipo_producto(rs.getString("nombre_tipo_producto"));
 
            }
        } catch (Exception e) {
        }
        return CJ;
    }

    @Override
    public boolean add(categorias_productos ma) {
       String sql="insert into tipo_producto (nombre_tipo_producto)values('"+ma.getnombre_tipo_producto()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }


    @Override
    public boolean edit(categorias_productos ma) {
        String sql="update tipo_producto set nombre_tipo_producto='"+ma.getnombre_tipo_producto()+"'where id_tipo_producto="+ma.getid_tipo_producto();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
    @Override
    public boolean eliminar(int id_tipo_producto) {
        String sql="delete from tipo_producto where id_tipo_producto="+id_tipo_producto;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
