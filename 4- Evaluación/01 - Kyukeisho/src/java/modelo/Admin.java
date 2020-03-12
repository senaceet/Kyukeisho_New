
package modelo;

public class Admin {
    String correo_administrador;
    String contraseña_administrador;
    
    public Admin() {        
    }
    
    public Admin(String Correo_administrador, String Contraseña_administrador) {
        this.correo_administrador = correo_administrador;
        this.contraseña_administrador = contraseña_administrador;
    }

    public String getCorreo_administrador() {
        return correo_administrador;
    }

    public void setCorreo_administrador(String correo_administrador) {
        this.correo_administrador = correo_administrador;
    }

    public String getContraseña_administrador() {
        return contraseña_administrador;
    }

    public void setContraseña_administrador(String contraseña_administrador) {
        this.contraseña_administrador = contraseña_administrador;
    }
    
}
