package modelo;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conexion {
   private static Connection conn;
   private static final String Driver = "com.mysql.jdbc.Driver";
   private static final String user = "root";
   private static final String password = "";
   private static final String url = "jdbc:mysql://localhost:3310/Kyukeisho";
   public conexion() throws SQLException {
    conn = null;
    try {
       Class.forName(Driver);
       conn = (Connection) DriverManager.getConnection(url, user, password);
       if (conn != null){
           System.out.println("Conexion establecida..");
       }
   } catch (ClassNotFoundException | SQLException e){
       System.out.println("error al conectar" + e);
   }
   }
//Este metodo nos retorna la conexion
   public Connection getConnection(){
       return conn;
   }
//Este metodo desconecta la conexion  de la base de datos
   public void desconectar(){
       conn = null;
       if (conn == null){
           System.out.println("Conexion terminada..");
       }
   }
}
