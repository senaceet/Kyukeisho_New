package modelo;

public class reservaciones {
    int id_reservacion;
    String fecha_incio;
    String hora_incio;
    int id_consola;
    String nombre_consola;
    String correo_usuario;

    public reservaciones(String fecha_incio,String hora_incio,int id_consola, String nombre_consola,String correo_usuario) {
        this.fecha_incio = fecha_incio;
        this.hora_incio = hora_incio;
        this.id_consola = id_consola;
        this.nombre_consola = nombre_consola;
        this.correo_usuario = correo_usuario;
    }
    
     public reservaciones() {
        this.fecha_incio = fecha_incio;
        this.hora_incio = hora_incio;
        this.id_consola = id_consola;
        this.nombre_consola = nombre_consola;
        this.correo_usuario = correo_usuario;
    }

    public int getid_reservacion() {
        return id_reservacion;
    }

    public void setid_reservacion(int id_reservacion) {
        this.id_reservacion = id_reservacion;
    }

    public String getfecha_incio() {
        return fecha_incio;
    }

    public void setfecha_incio(String fecha_incio) {
        this.fecha_incio = fecha_incio;
    }
    
    public String gethora_incio() {
        return hora_incio;
    }

    public void sethora_incio(String hora_incio) {
        this.hora_incio = hora_incio;
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
    
    public String getcorreo_usuario() {
        return correo_usuario;
    }

    public void setcorreo_usuario(String correo_usuario) {
        this.correo_usuario = correo_usuario;
    }
    
}
