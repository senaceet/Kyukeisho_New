package modelo;

public class Juegos {
    int codigo_juego;
    String nombre_juego;
    int id_categoria_juegos;
    String nombre_categoria_juegos;

    public Juegos(int codigo_juego, String nombre_juego,int id_categoria_juegos,String nombre_categoria_juegos) {
        this.codigo_juego = codigo_juego;
        this.nombre_juego = nombre_juego;
        this.id_categoria_juegos = id_categoria_juegos;
        this.nombre_categoria_juegos = nombre_categoria_juegos;
    }
    public Juegos() {
        this.codigo_juego = codigo_juego;
        this.nombre_juego = nombre_juego;
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
}
