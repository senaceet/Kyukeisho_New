package modelo;

public class Ciudad {
    int codigo_ciudad;
    String nombre_ciudad;

    public Ciudad(int codigo_ciudad, String nombre_ciudad) {
        this.codigo_ciudad = codigo_ciudad;
        this.nombre_ciudad = nombre_ciudad;
    }
    
    public Ciudad() {
        this.codigo_ciudad = codigo_ciudad;
        this.nombre_ciudad = nombre_ciudad;
    }

    public int getcodigo_ciudad() {
        return codigo_ciudad;
    }

    public void setcodigo_ciudad(int codigo_ciudad) {
        this.codigo_ciudad = codigo_ciudad;
    }

    public String getnombre_ciudad() {
        return nombre_ciudad;
    }

    public void setnombre_ciudad(String nombre_ciudad) {
        this.nombre_ciudad = nombre_ciudad;
    }        
}