package modelo;

public class recuperacion_de_contraseña {
    String correo_usuario;
    int codigo_usuario;
    
    public recuperacion_de_contraseña() {        
    }
    
    public recuperacion_de_contraseña(String correo_usuario, int codigo_usuario) {
        this.correo_usuario = correo_usuario;
        this.codigo_usuario = codigo_usuario;
    }

    public String getCorreo_usuario() {
        return correo_usuario;
    }

    public void setCorreo_usuario(String correo_usuario) {
        this.correo_usuario = correo_usuario;
    }

    public int getCodigo_usuario() {
        return codigo_usuario;
    }

    public void setCodigo_usuario(int codigo_usuario) {
        this.codigo_usuario = codigo_usuario;
    }
    
}