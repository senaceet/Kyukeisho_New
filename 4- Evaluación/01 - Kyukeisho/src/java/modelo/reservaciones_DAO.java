package modelo;

import Conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.reservaciones;
import java_interfaces.CRUD_reservaciones;


public class reservaciones_DAO implements CRUD_reservaciones {
    
    Conexion cn= new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    reservaciones CJ =new reservaciones();

    @Override
    public List listar() {
        ArrayList<reservaciones>list=new ArrayList<>();
        String sql="select id_reservacion,fecha_incio,hora_incio,consola.nombre_consola,correo_usuario"
                    +" from reservaciones"
                    +" inner join consola"
                    +" on reservaciones.id_consola = consola.id_consola ORDER BY id_reservacion asc limit 30";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                
                reservaciones ma=new reservaciones();
                
                ma.setid_reservacion(rs.getInt("id_reservacion"));
                ma.setfecha_incio(rs.getString("fecha_incio"));
                ma.sethora_incio(rs.getString("hora_incio"));  
                ma.setnombre_consola(rs.getString("nombre_consola"));
                ma.setcorreo_usuario(rs.getString("correo_usuario"));
                
                list.add(ma);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public reservaciones list(int id_reservacion) {
        String sql="select id_reservacion,fecha_incio,hora_incio,consola.nombre_consola,correo_usuario"
                    +" from reservaciones"
                    +" inner join consola"
                    +" on reservaciones.id_consola = consola.id_consola where id_reservacion=" + id_reservacion;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){            
                
                CJ.setid_reservacion(rs.getInt("id_reservacion"));
                CJ.setfecha_incio(rs.getString("fecha_incio"));
                CJ.sethora_incio(rs.getString("hora_incio"));
                CJ.setnombre_consola(rs.getString("nombre_consola"));
                CJ.setcorreo_usuario(rs.getString("correo_usuario"));

            }
        } catch (Exception e) {
        }
        return CJ;
    }

    @Override
    public boolean add(reservaciones ma) {
       String sql="insert into reservaciones (fecha_incio,hora_incio,id_consola,correo_usuario)values('"+ma.getfecha_incio()+"','"+ma.gethora_incio()+"',"+ma.getid_consola()+",'"+ma.getcorreo_usuario()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }


    @Override
    public boolean edit(reservaciones ma) {
        String sql="update reservaciones set fecha_incio= '"+ma.getfecha_incio()+"',hora_incio= '"+ma.gethora_incio()+"',id_consola= "+ma.getid_consola()+",correo_usuario= '"+ma.getcorreo_usuario()+"' where id_reservacion="+ma.getid_reservacion();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    @Override
    public boolean eliminar(int id_reservacion) {
        String sql="delete from reservaciones where id_reservacion="+id_reservacion;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
