package modelo;

public class categorias_productos {
    int id_tipo_producto;
    String nombre_tipo_producto;

    public categorias_productos(String nombre_tipo_producto) {
        this.nombre_tipo_producto = nombre_tipo_producto;
    }
    
     public categorias_productos() {
        this.nombre_tipo_producto = nombre_tipo_producto;
    }

    public int getid_tipo_producto() {
        return id_tipo_producto;
    }

    public void setid_tipo_producto(int id_tipo_producto) {
        this.id_tipo_producto = id_tipo_producto;
    }

    public String getnombre_tipo_producto() {
        return nombre_tipo_producto;
    }

    public void setnombre_tipo_producto(String nombre_tipo_producto) {
        this.nombre_tipo_producto = nombre_tipo_producto;
    }
    
    
}