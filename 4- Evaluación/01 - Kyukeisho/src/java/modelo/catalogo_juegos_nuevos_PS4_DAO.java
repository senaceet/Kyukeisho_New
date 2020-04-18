package modelo;

import Conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.Juegos;
import java_interfaces.catalogo_juegos;


public class catalogo_juegos_nuevos_PS4_DAO implements catalogo_juegos {
    Conexion cn= new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Juegos CJ =new Juegos();

    @Override
    public List listar() {
        ArrayList<Juegos>list=new ArrayList<>();
        String sql="select codigo_juego, nombre_juego,FORMAT(precio_juego,-3),cantidad_juegos,dir_img_juego,nombre_categoria_juegos,nombre_consola"
                    +" from categoria_juegos"
                    +" inner join juegos"
                    +" on categoria_juegos.id_categoria_juegos = juegos.id_categoria_juegos"
                    +" join consola"
                    +" on consola.id_consola = juegos.id_consola  where cantidad_juegos>0 and juegos.id_consola=04 order by codigo_juego desc limit 4";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Juegos ma=new Juegos();
                ma.setcodigo_juego(rs.getInt("codigo_juego"));
                ma.setnombre_juego(rs.getString("nombre_juego"));
                ma.setprecio_juego(rs.getString("FORMAT(precio_juego,-3)"));
                ma.setcantidad_juegos(rs.getInt("cantidad_juegos"));
                ma.setdir_img_juego(rs.getString("dir_img_juego"));
                ma.setnombre_categoria_juegos(rs.getString("nombre_categoria_juegos"));
                ma.setnombre_consola(rs.getString("nombre_consola"));

                list.add(ma);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Juegos list(int codigo_juego) {
        String sql="select codigo_juego, nombre_juego,FORMAT(precio_juego,-3),cantidad_juegos,dir_img_juego,nombre_categoria_juegos,nombre_consola"
                    +" from categoria_juegos"
                    +" inner join juegos"
                    +" on categoria_juegos.id_categoria_juegos = juegos.id_categoria_juegos"
                    +" join consola"
                    +" on consola.id_consola = juegos.id_consola where codigo_juego=" + codigo_juego;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){                
                CJ.setcodigo_juego(rs.getInt("codigo_juego"));
                CJ.setnombre_juego(rs.getString("nombre_juego"));
                CJ.setprecio_juego(rs.getString("FORMAT(precio_juego,-3)"));
                CJ.setcantidad_juegos(rs.getInt("cantidad_juegos"));
                CJ.setdir_img_juego(rs.getString("dir_img_juego"));
                CJ.setnombre_categoria_juegos(rs.getString("nombre_categoria_juegos"));
                CJ.setnombre_consola(rs.getString("nombre_consola"));
            }
        } catch (Exception e) {
        }
        return CJ;
    }



    @Override
    public boolean edit(Juegos ma) {
        String sql="update juegos set nombre_juego= '"+ma.getnombre_juego()+"' ,dir_img_juego= '"+ma.getdir_img_juego()+"',id_categoria_juegos= "+ma.getid_categoria_juegos()+",id_consola= "+ma.getid_consola()+" where codigo_juego="+ma.getcodigo_juego();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    

    
}
