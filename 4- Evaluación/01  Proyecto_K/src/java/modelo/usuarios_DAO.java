package modelo;

import Conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.usuarios;
import java_interfaces.CRUD_usuarios;


public class usuarios_DAO implements CRUD_usuarios {
    Conexion cn= new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    usuarios CJ =new usuarios();

    @Override
    public List listar() {
        ArrayList<usuarios>list=new ArrayList<>();
        String sql="select  id_usuario, primer_nombre_usuario, segundo_nombre_usuario, primer_apellido_usuario, segundo_apellido_usuario,correo_usuario  from usuario";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                usuarios ma=new usuarios();
                ma.setid_usuario(rs.getInt("id_usuario"));
                ma.setprimer_nombre_usuario(rs.getString("primer_nombre_usuario"));
                ma.setsegundo_nombre_usuario(rs.getString("segundo_nombre_usuario"));
                ma.setprimer_apellido_usuario(rs.getString("primer_apellido_usuario"));
                ma.setsegundo_apellido_usuario(rs.getString("segundo_apellido_usuario"));
                ma.setcorreo_usuario(rs.getString("correo_usuario"));
                list.add(ma);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public usuarios list(int id_usuario) {
        String sql="select  id_usuario, primer_nombre_usuario, segundo_nombre_usuario, primer_apellido_usuario, segundo_apellido_usuario,correo_usuario from usuario" + id_usuario;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){                
                 CJ.setid_usuario(rs.getInt("id_usuario"));
                CJ.setprimer_nombre_usuario(rs.getString("primer_nombre_usuario"));
                CJ.setsegundo_nombre_usuario(rs.getString("segundo_nombre_usuario"));
                CJ.setprimer_apellido_usuario(rs.getString("primer_apellido_usuario"));
                CJ.setsegundo_apellido_usuario(rs.getString("segundo_apellido_usuario"));
                CJ.setcorreo_usuario(rs.getString("correo_usuario"));

            }
        } catch (Exception e) {
        }
        return CJ;
    }

    @Override
    public boolean add(usuarios ma) {
       String sql="insert into usuario primer_nombre_usuario values('"+ma.getprimer_nombre_usuario()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }


    @Override
    public boolean edit(usuarios ma) {
        String sql="update usuario set primer_nombre_usuario= '"+ma.getprimer_nombre_usuario()+"' where id_usuario="+ma.getid_usuario();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    @Override
    public boolean eliminar(int id_usuario) {
        String sql="delete from productos where id_producto="+id_usuario;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
