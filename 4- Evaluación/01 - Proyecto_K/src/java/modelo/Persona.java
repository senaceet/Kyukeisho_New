
package modelo;

public class Persona {
    String correo_usuario;
    String contraseña_usuario;
    
    public Persona() {        
    }
    
    public Persona(String correo_usuario, String contraseña_usuario) {
        this.correo_usuario = correo_usuario;
        this.contraseña_usuario = contraseña_usuario;
    }

    public String getCorreo_usuario() {
        return correo_usuario;
    }

    public void setCorreo_usuario(String correo_usuario) {
        this.correo_usuario = correo_usuario;
    }

    public String getContraseña_usuario() {
        return contraseña_usuario;
    }

    public void setContraseña_usuario(String contraseña_usuario) {
        this.contraseña_usuario = contraseña_usuario;
    }
    
}
