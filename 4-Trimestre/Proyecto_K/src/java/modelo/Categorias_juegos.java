package modelo;

public class Categorias_juegos {
 int id_categoria_juegos;
    String nombre_categoria_juegos;

    public Categorias_juegos(String nombre_categoria_juegos) {
        this.nombre_categoria_juegos = nombre_categoria_juegos;
    }
    
     public Categorias_juegos() {
        this.nombre_categoria_juegos = nombre_categoria_juegos;
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
