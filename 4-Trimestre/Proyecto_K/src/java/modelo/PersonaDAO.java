package modelo;

import Conexion.Conexion;
import java_interfaces.Validar;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class PersonaDAO implements Validar{
    Connection con;
    Conexion cn=new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    
    @Override
    public int Validar(Persona per) {
        int r=0;
        
        String sql = "select * from usuario where correo_usuario=? and contraseña_usuario=?";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, per.getCorreo_usuario());
            ps.setString(2, per.getContraseña_usuario());
            rs = ps.executeQuery();
            while (rs.next()){ 
                r=r+1;            
                per.setCorreo_usuario(rs.getString("correo_usuario"));
                per.setContraseña_usuario(rs.getString("contraseña_usuario"));
            }
            if (r==1){
                return 1;
            }else {
                return 0;
            }
        }catch (Exception e) {
            return 0;
        }
    }
    
}