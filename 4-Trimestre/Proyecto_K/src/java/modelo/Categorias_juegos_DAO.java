package modelo;

import Conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.Categorias_juegos;
import java_interfaces.CRUD_Categoria_juegos;


public class Categorias_juegos_DAO implements CRUD_Categoria_juegos {
    Conexion cn= new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Categorias_juegos CJ =new Categorias_juegos();

    @Override
    public List listar() {
        ArrayList<Categorias_juegos>list=new ArrayList<>();
        String sql="select * from categoria_juegos ORDER BY id_categoria_juegos asc limit 40";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Categorias_juegos ma=new Categorias_juegos();
                ma.setid_categoria_juegos(rs.getInt("id_categoria_juegos"));
               ma.setnombre_categoria_juegos(rs.getString("nombre_categoria_juegos"));
                list.add(ma);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Categorias_juegos list(int id_categoria_juegos) {
        String sql="select * from categoria_juegos where  id_categoria_juegos="+ id_categoria_juegos;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){                
                CJ.setid_categoria_juegos(rs.getInt("id_categoria_juegos"));
                CJ.setnombre_categoria_juegos(rs.getString("nombre_categoria_juegos"));
 
            }
        } catch (Exception e) {
        }
        return CJ;
    }

    @Override
    public boolean add(Categorias_juegos ma) {
       String sql="insert into categoria_juegos (nombre_categoria_juegos)values('"+ma.getnombre_categoria_juegos()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }


    @Override
    public boolean edit(Categorias_juegos ma) {
        String sql="update categoria_juegos set nombre_categoria_juegos='"+ma.getnombre_categoria_juegos()+"'where id_categoria_juegos="+ma.getid_categoria_juegos();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
    @Override
    public boolean eliminar(int id_categoria_juegos) {
        String sql="delete from categoria_juegos where id_categoria_juegos="+id_categoria_juegos;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
