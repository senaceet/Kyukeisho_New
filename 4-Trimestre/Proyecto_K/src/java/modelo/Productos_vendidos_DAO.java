package modelo;

import Conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.Productos_vendidos;
import java_interfaces.CRUD_productos_vendidos;


public class Productos_vendidos_DAO implements CRUD_productos_vendidos {
    Conexion cn= new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Productos_vendidos CJ =new Productos_vendidos();

    @Override
    public List listar() {
        ArrayList<Productos_vendidos>list=new ArrayList<>();
        String sql="select id_producto,nombre_producto,cantidad_producto,precio_unitario_producto,tipo_producto.nombre_tipo_producto"
                    +" from productos"
                    +" inner join tipo_producto"
                    +" on productos.id_tipo_producto = tipo_producto.id_tipo_producto ORDER BY id_producto asc limit 30";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Productos_vendidos ma=new Productos_vendidos();
                ma.setid_producto(rs.getInt("id_producto"));
                ma.setnombre_producto(rs.getString("nombre_producto"));
                ma.setcantidad_producto(rs.getInt("cantidad_producto"));
                ma.setprecio_unitario_producto(rs.getInt("precio_unitario_producto"));

                ma.setnombre_tipo_producto(rs.getString("nombre_tipo_producto"));
                list.add(ma);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Productos_vendidos list(int id_producto) {
        String sql="select id_producto,nombre_producto,cantidad_producto,precio_unitario_producto,tipo_producto.nombre_tipo_producto"
                    +" from productos"
                    +" inner join tipo_producto"
                    +" on productos.id_tipo_producto = tipo_producto.id_tipo_producto where id_producto=" + id_producto;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){                
                CJ.setid_producto(rs.getInt("id_producto"));
                CJ.setnombre_producto(rs.getString("nombre_producto"));
                CJ.setcantidad_producto(rs.getInt("cantidad_producto"));
                CJ.setprecio_unitario_producto(rs.getInt("precio_unitario_producto"));

                CJ.setnombre_tipo_producto(rs.getString("nombre_tipo_producto"));

            }
        } catch (Exception e) {
        }
        return CJ;
    }

    @Override
    public boolean add(Productos_vendidos ma) {
       String sql="insert into productos (nombre_producto,cantidad_producto,precio_unitario_producto,id_tipo_producto)values('"+ma.getnombre_producto()+"',"+ma.getcantidad_producto()+","+ma.getprecio_unitario_producto()+","+ma.getid_tipo_producto()+")";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }


    @Override
    public boolean edit(Productos_vendidos ma) {
        String sql="update productos set nombre_producto= '"+ma.getnombre_producto()+"',cantidad_producto= "+ma.getcantidad_producto()+",precio_unitario_producto= "+ma.getprecio_unitario_producto()+",id_tipo_producto= "+ma.getid_tipo_producto()+" where id_producto="+ma.getid_producto();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    @Override
    public boolean eliminar(int id_producto) {
        String sql="delete from productos where id_producto="+id_producto;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
