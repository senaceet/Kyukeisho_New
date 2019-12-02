package modelo;

import Conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.persona;
import interfaz.crud_persona;


public class personadao implements crud_persona {
    Conexion cn= new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    persona CJ =new persona();

    @Override
    public List listar() {
        ArrayList<persona>list=new ArrayList<>();
        String sql="select documento_persona,primer_nombre_persona,segundo_nombre_persona,primer_apellido_persona,segundo_apellido_persona,ciudad.nombre_ciudad"
                    +" from persona"
                    +" inner join ciudad"
                    +" on persona.codigo_ciudad = ciudad.codigo_ciudad";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                persona ma=new persona();
                ma.setdocumento_persona(rs.getInt("documento_persona"));
                ma.setprimer_nombre_persona(rs.getString("primer_nombre_persona"));
                ma.setsegundo_nombre_persona(rs.getString("segundo_nombre_persona"));
                ma.setprimer_apellido_persona(rs.getString("primer_apellido_persona"));
                ma.setsegundo_apellido_persona(rs.getString("segundo_apellido_persona"));
                
                ma.setnombre_ciudad(rs.getString("nombre_ciudad"));
                list.add(ma);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public persona list(int documento_persona) {
        String sql="select documento_persona,primer_nombre_persona,segundo_nombre_persona,primer_apellido_persona,segundo_apellido_persona,ciudad.nombre_ciudad"
                    +" from persona"
                    +" inner join ciudad"
                    +" on persona.codigo_ciudad = ciudad.codigo_ciudad="+ documento_persona;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){                
                CJ.setdocumento_persona(rs.getInt("documento_persona"));
                CJ.setprimer_nombre_persona(rs.getString("primer_nombre_persona"));
                CJ.setsegundo_nombre_persona(rs.getString("segundo_nombre_persona"));
                CJ.setprimer_apellido_persona(rs.getString("primer_apellido_persona"));
                CJ.setsegundo_apellido_persona(rs.getString("segundo_apellido_persona"));
                
                CJ.setnombre_ciudad(rs.getString("nombre_ciudad"));
 
            }
        } catch (Exception e) {
        }
        return CJ;
    }

    @Override
    public boolean add(persona ma) {
       String sql="insert into persona (documento_persona,primer_nombre_persona,segundo_nombre_persona,primer_apellido_pesona,segundo_apellido_persona,codigo_ciudad) values("+ma.getdocumento_persona()+",'"+ma.getprimer_nombre_persona()+"','"+ma.getsegundo_nombre_persona()+"','"+ma.getprimer_apellido_persona()+"','"+ma.getsegundo_apellido_persona()+"',"+ma.getcodigo_ciudad()+")";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }


    @Override
    public boolean edit(persona ma) {
        String sql="update persona set documento_persona="+ma.getdocumento_persona()+",primer_nombre_persona='"+ma.getprimer_nombre_persona()+"',segundo_nombre_persona='"+ma.getsegundo_nombre_persona()+"',primer_apellido_persona='"+ma.getprimer_apellido_persona()+"',segundo_apellido_persona='"+ma.getsegundo_apellido_persona()+"',codigo_ciudad="+ma.getcodigo_ciudad()+" where documento_persona="+ma.getdocumento_persona();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
