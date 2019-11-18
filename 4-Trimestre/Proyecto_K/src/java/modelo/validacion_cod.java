package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class validacion_cod implements Validar_codigo{
    Connection con;
    conexion cn=new conexion();
    PreparedStatement ps;
    ResultSet rs;
    
    @Override
    public int Validar_codigo(recuperacion_de_contraseña rec) {
        int r=0;
        
        String sql = "select * from usuario where correo_usuario=? and contraseña_usuario=?";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInteger (1, rec.getCodigo_usuario());
            rs = ps.executeQuery();
            while (rs.next()){ 
                r=r+1;            
                rec.setCorreo_usuario(rs.getString("correo_usuario"));
                rec.setCodigo_usuario(rs.getString("codigo_usuario"));
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