package modelo;

import java_interfaces.Validar_email;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class Persona_email_DAO implements Validar_email{
    Connection con;
    conexion cn=new conexion();
    PreparedStatement ps;
    ResultSet rs;
    
    @Override
    public int Validar_email(Persona_email per_email) {
        int r=0;
        
        String sql = "select * from usuario where correo_usuario=?";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1,per_email.getCorreo_usuario());
            rs = ps.executeQuery();
            while (rs.next()){ 
                r=r+1;            
                per_email.setCorreo_usuario(rs.getString("correo_usuario"));
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