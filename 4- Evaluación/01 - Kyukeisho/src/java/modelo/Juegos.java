package modelo;

public class Juegos {
    int codigo_juego;
    String nombre_juego;

    public Juegos(int codigo_juego, String nombre_juego) {
        this.codigo_juego = codigo_juego;
        this.nombre_juego = nombre_juego;
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
    
}
