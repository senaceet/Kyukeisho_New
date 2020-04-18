package modelo;

import Conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.consolas;
import java_interfaces.CRUD_consolas;


public class consolas_DAO implements CRUD_consolas {
    Conexion cn= new Conexion();
    Connection con;
    
    PreparedStatement ps;
    ResultSet rs;
    
    consolas CJ =new consolas();

    @Override
    public List listar() {
        ArrayList<consolas>list=new ArrayList<>();
        String sql="select id_consola, nombre_consola,precio_hora,estado_consola"
                    +" from consola"
                    +" inner join estado_consola"
                    +" on consola.id_estado_consola = estado_consola.id_estado_consola where consola.id_estado_consola=1 order by (nombre_consola)";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                consolas ma=new consolas();
                ma.setid_consola(rs.getInt("id_consola"));
                ma.setnombre_consola(rs.getString("nombre_consola"));
                ma.setprecio_hora(rs.getString("precio_hora"));
                ma.setestado_consola(rs.getString("estado_consola"));

                list.add(ma);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public consolas list(int id_consola) {
        String sql="select id_consola, nombre_consola,precio_hora,estado_consola"
                    +" from consola"
                    +" inner join estado_consola"
                    +" on consola.id_estado_consola = estado_consola.id_estado_consola where id_consola=" + id_consola;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){                
                CJ.setid_consola(rs.getInt("id_consola"));
                CJ.setnombre_consola(rs.getString("nombre_consola"));
                CJ.setprecio_hora(rs.getString("precio_hora"));
                CJ.setestado_consola(rs.getString("estado_consola"));
            }
        } catch (Exception e) {
        }
        return CJ;
    }

    @Override
    public boolean add(consolas ma) {
       String sql="insert into consola (nombre_consola,precio_hora,id_estado_consola)values('"+ma.getnombre_consola()+"','"+ma.getprecio_hora()+"',"+ma.getid_estado_consola()+")";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }


    @Override
    public boolean edit(consolas ma) {
        String sql="update consola set nombre_consola= '"+ma.getnombre_consola()+"' ,precio_hora= '"+ma.getprecio_hora()+"', id_estado_consola= "+ma.getid_estado_consola()+" where id_consola="+ma.getid_consola();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    @Override
    public boolean eliminar(int id_consola) {
        String sql="delete from consola where id_consola="+ id_consola;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
