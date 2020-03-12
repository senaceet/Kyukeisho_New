package modelo;

public class recuperacion_de_contraseña {
    String correo_usuario_2;
    String reo;
    int codigo_usuario_2;
    int num_usuario = 12;
    

    
    public recuperacion_de_contraseña(String para, int cod) {
        this.correo_usuario_2 = para;
        this.codigo_usuario_2 = cod;
    }

    public void setCorreo_usuario(String correo_usuario) {
        this.correo_usuario_2 = correo_usuario;
    }

    public String getCorreo_usuario() {
        return correo_usuario_2;
    }

    public void setCodigo_usuario(int codigo_usuario) {
        this.codigo_usuario_2 = codigo_usuario;
    }
    
        public int getCodigo_usuario() {
        return codigo_usuario_2;
    }
        
        public recuperacion_de_contraseña() {      
        this.reo=correo_usuario_2;
    }
            public String Correo() {
        return reo;
    }
}