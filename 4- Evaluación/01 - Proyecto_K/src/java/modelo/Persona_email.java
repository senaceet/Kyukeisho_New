package modelo;

public class Persona_email {
    String correo_usuario;
    
    public Persona_email() {        
    }
    
    public Persona_email(String correo_usuario) {
        this.correo_usuario = correo_usuario;
    }

    public String getCorreo_usuario() {
        return correo_usuario;
    }

    public void setCorreo_usuario(String correo_usuario) {
        this.correo_usuario = correo_usuario;
    }
    
}
