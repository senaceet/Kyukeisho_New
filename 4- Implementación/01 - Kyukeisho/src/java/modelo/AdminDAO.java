
package modelo;

import Conexion.Conexion;
import java_interfaces.ValidarAdmin;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class AdminDAO implements ValidarAdmin{
    Connection con;
    Conexion cn=new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    
    @Override
    public int ValidarAdmin(Admin adm) {
        int r=0;
        
        String sql = "select * from administrador where correo_administrador=? and contraseña_administrador=?";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, adm.getCorreo_administrador());
            ps.setString(2, adm.getContraseña_administrador());
            rs = ps.executeQuery();
            while (rs.next()){ 
                r=r+1;            
                adm.setCorreo_administrador(rs.getString("correo_administrador"));
                adm.setContraseña_administrador(rs.getString("contraseña_administrador"));
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