package modelo;

public class Juegos {
    int codigo_juego;
    String nombre_juego;
    String precio_juego;
    int cantidad_juegos;
    String dir_img_juego;
    int id_categoria_juegos;
    String nombre_categoria_juegos;
    int id_consola;
    String nombre_consola;

    public Juegos(int codigo_juego, String nombre_juego,String precio_juego,int cantidad_juegos,String dir_img_juego,int id_categoria_juegos,String nombre_categoria_juegos,int id_consola,String nombre_consola) {
        this.codigo_juego = codigo_juego;
        this.nombre_juego = nombre_juego;
        this.precio_juego = precio_juego;
        this.cantidad_juegos = cantidad_juegos;
        this.dir_img_juego = dir_img_juego;
        this.id_categoria_juegos = id_categoria_juegos;
        this.nombre_categoria_juegos = nombre_categoria_juegos;
        this.id_consola = id_consola;
        this.nombre_consola = nombre_consola;
    }
    public Juegos() {
        this.codigo_juego = codigo_juego;
        this.nombre_juego = nombre_juego;
        this.precio_juego = precio_juego;
        this.cantidad_juegos = cantidad_juegos;
        this.dir_img_juego = dir_img_juego;
        this.id_categoria_juegos = id_categoria_juegos;
        this.nombre_categoria_juegos = nombre_categoria_juegos;
        this.id_consola = id_consola;
        this.nombre_consola = nombre_consola;
    }

    public int getcodigo_juego() {
        return codigo_juego;
    }

    public void setcodigo_juego(int codigo_juego) {
        this.codigo_juego = codigo_juego;
    }

    public String getnombre_juego() {
        return nombre_juego;
    }

    public void setnombre_juego(String nombre_juego) {
        this.nombre_juego = nombre_juego;
    }
    
        public String getprecio_juego() {
        return precio_juego;
    }

    public void setprecio_juego(String precio_juego) {
        this.precio_juego = precio_juego;
    }
    
    public int getcantidad_juegos() {
        return cantidad_juegos;
    }

    public void setcantidad_juegos(int cantidad_juegos) {
        this.cantidad_juegos = cantidad_juegos;
    }
    
    public String getdir_img_juego() {
        return dir_img_juego;
    }

    public void setdir_img_juego(String dir_img_juego) {
        this.dir_img_juego = dir_img_juego;
    }
   
    public int getid_categoria_juegos() {
    return id_categoria_juegos;
    }

    public void setid_categoria_juegos(int id_categoria_juegos) {
    this.id_categoria_juegos = id_categoria_juegos;
    }

    public String getnombre_categoria_juegos() {
    return nombre_categoria_juegos;
    }

    public void setnombre_categoria_juegos(String nombre_categoria_juegos) {
    this.nombre_categoria_juegos = nombre_categoria_juegos;
    }
    
        public int getid_consola() {
    return id_consola;
    }

    public void setid_consola(int id_consola) {
    this.id_consola = id_consola;
    }

    public String getnombre_consola() {
    return nombre_consola;
    }

    public void setnombre_consola(String nombre_consola) {
    this.nombre_consola = nombre_consola;
    }
}
