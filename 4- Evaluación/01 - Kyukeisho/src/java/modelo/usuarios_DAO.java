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
        String sql="select  id_usuario, primer_nombre_usuario, segundo_nombre_usuario, primer_apellido_usuario, segundo_apellido_usuario,correo_usuario,telefono_usuario,direccion,contraseña_usuario,estado_cliente.estado_cliente"
                  +" from usuario"
                  +" inner join estado_cliente"
                  +" on usuario.id_estado_cliente = estado_cliente.id_estado_cliente ORDER BY id_usuario asc limit 30";
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
                ma.settelefono_usuario(rs.getLong("telefono_usuario"));
                ma.setdireccion(rs.getString("direccion"));
                ma.setcontraseña_usuario(rs.getString("contraseña_usuario"));
                ma.setestado_cliente(rs.getString("estado_cliente"));
                list.add(ma);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public usuarios list(int id_usuario) {
        String sql="select  id_usuario, primer_nombre_usuario, segundo_nombre_usuario, primer_apellido_usuario, segundo_apellido_usuario,correo_usuario,telefono_usuario,direccion,contraseña_usuario,estado_cliente.estado_cliente"
                  +" from usuario"
                  +" inner join estado_cliente"
                  +" on usuario.id_estado_cliente = estado_cliente.id_estado_cliente where id_usuario=" + id_usuario;
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
                CJ.settelefono_usuario(rs.getLong("telefono_usuario"));
                CJ.setdireccion(rs.getString("direccion"));
                CJ.setcontraseña_usuario(rs.getString("contraseña_usuario"));
                CJ.setestado_cliente(rs.getString("estado_cliente"));
            }
        } catch (Exception e) {
        }
        return CJ;
    }

    @Override
    public boolean add(usuarios ma) {
       String sql="insert into usuario (primer_nombre_usuario,segundo_nombre_usuario,primer_apellido_usuario,segundo_apellido_usuario,correo_usuario,telefono_usuario,direccion,contraseña_usuario,id_estado_cliente)values('"+ma.getprimer_nombre_usuario()+"','"+ma.getsegundo_nombre_usuario()+"','"+ma.getprimer_apellido_usuario()+"','"+ma.getsegundo_apellido_usuario()+"','"+ma.getcorreo_usuario()+"',"+ma.gettelefono_usuario()+",'"+ma.getdireccion()+"','"+ma.getcontraseña_usuario()+"',"+ma.getid_estado_cliente()+")";
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
        String sql="update usuario set primer_nombre_usuario='"+ma.getprimer_nombre_usuario()+"',segundo_nombre_usuario= '"+ma.getsegundo_nombre_usuario()+"',primer_apellido_usuario= '"+ma.getprimer_apellido_usuario()+"',segundo_apellido_usuario= '"+ma.getsegundo_apellido_usuario()+"',correo_usuario= '"+ma.getcorreo_usuario()+"',telefono_usuario= "+ma.gettelefono_usuario()+",direccion= '"+ma.getdireccion()+"',contraseña_usuario= '"+ma.getcontraseña_usuario()+"',id_estado_cliente= "+ma.getid_estado_cliente()+" where id_usuario="+ma.getid_usuario();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
  
    
}
