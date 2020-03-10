package modelo;

public class consolas_ocupadas {
    int id_consola;
    String nombre_consola;
    String precio_hora;
    int id_estado_consola;
    String estado_consola;

    
    public consolas_ocupadas(int id_consola, String nombre_consola,String precio_hora,int id_estado_consola,String estado_consola) {
        this.id_consola = id_consola;
        this.nombre_consola = nombre_consola;
        this.precio_hora = precio_hora;
        this.id_estado_consola = id_estado_consola;
        this.estado_consola = estado_consola;

    }
    public consolas_ocupadas() {
        this.id_consola = id_consola;
        this.nombre_consola = nombre_consola;
        this.precio_hora = precio_hora;
        this.id_estado_consola = id_estado_consola;// posible error
        this.estado_consola = estado_consola;
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
   
    public String getprecio_hora() {
    return precio_hora;
    }

    public void setprecio_hora(String precio_hora) {
    this.precio_hora = precio_hora;
    }

    public int getid_estado_consola() {
    return id_estado_consola;
    }

    public void setid_estado_consola(int id_estado_consola) {
    this.id_estado_consola = id_estado_consola;
    }
    
    public String getestado_consola() {
    return estado_consola;
    }

    public void setestado_consola(String estado_consola) {
    this.estado_consola = estado_consola;
    }
}
