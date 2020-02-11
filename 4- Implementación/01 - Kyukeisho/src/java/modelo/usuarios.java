package modelo;

public class usuarios{
    int id_usuario;
    String primer_nombre_usuario;
    String segundo_nombre_usuario;
    String primer_apellido_usuario;
    String segundo_apellido_usuario;
    String correo_usuario;
    long telefono_usuario;
    String direccion;
    String contraseña_usuario;
    int id_estado_cliente;
    String estado_cliente;

    public usuarios(String primer_nombre_usuario, String segundo_nombre_usuario,  String primer_apellido_usuario, String segundo_apellido_usuario,
                    String correo_usuario,long telefono_usuario,String direccion,String contraseña_usuario,int id_estado_cliente,String estado_cliente) {
       
        this.primer_nombre_usuario = primer_nombre_usuario;
        this.segundo_nombre_usuario = segundo_nombre_usuario;
        this.primer_apellido_usuario = primer_apellido_usuario;
        this.segundo_apellido_usuario = segundo_apellido_usuario;
        this.correo_usuario = correo_usuario;
        this.telefono_usuario = telefono_usuario;
        this.direccion = direccion;
        this.contraseña_usuario = contraseña_usuario;
        this.id_estado_cliente = id_estado_cliente;
        this.estado_cliente = estado_cliente;
    }

    
     public usuarios() {
        this.primer_nombre_usuario = primer_nombre_usuario;
        this.segundo_nombre_usuario = segundo_nombre_usuario;
        this.primer_apellido_usuario = primer_apellido_usuario;
        this.segundo_apellido_usuario = segundo_apellido_usuario;
        this.correo_usuario = correo_usuario;
        this.telefono_usuario = telefono_usuario;
        this.direccion = direccion;
        this.contraseña_usuario = contraseña_usuario;
        this.id_estado_cliente = id_estado_cliente;
        this.estado_cliente = estado_cliente;
     }

    public int getid_usuario() {
        return id_usuario;
    }

    public void setid_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getprimer_nombre_usuario() {
        return primer_nombre_usuario;
    }

    public void setprimer_nombre_usuario(String primer_nombre_usuario) {
        this.primer_nombre_usuario = primer_nombre_usuario;
    }

    public String getsegundo_nombre_usuario() {
        return segundo_nombre_usuario;
    }

    public void setsegundo_nombre_usuario(String segundo_nombre_usuario) {
        this.segundo_nombre_usuario = segundo_nombre_usuario;
    }
    public String getprimer_apellido_usuario() {
        return primer_apellido_usuario;
    }

    public void setprimer_apellido_usuario(String primer_apellido_usuario) {
        this.primer_apellido_usuario = primer_apellido_usuario;
    }
    
    public String getsegundo_apellido_usuario() {
        return segundo_apellido_usuario;
    }

    public void setsegundo_apellido_usuario(String segundo_apellido_usuario) {
        this.segundo_apellido_usuario = segundo_apellido_usuario;
    }
    
    public String getcorreo_usuario() {
        return correo_usuario;
    }

    public void setcorreo_usuario (String correo_usuario ) {
        this.correo_usuario  = correo_usuario ;
    }
    
    public Long gettelefono_usuario() {
        return telefono_usuario;
    }

    public void settelefono_usuario(Long telefono_usuario) {
        this.telefono_usuario = telefono_usuario;
    }
    public String getdireccion() {
        return direccion;
    }

    public void setdireccion(String direccion) {
        this.direccion = direccion;
    }
    
    public String getcontraseña_usuario() {
        return contraseña_usuario;
    }

    public void setcontraseña_usuario(String contraseña_usuario) {
        this.contraseña_usuario = contraseña_usuario;
    }
    
    public int getid_estado_cliente() {
        return id_estado_cliente;
    }

    public void setid_estado_cliente (int id_estado_cliente ) {
        this.id_estado_cliente  = id_estado_cliente;
    }
    
    public String getestado_cliente() {
        return estado_cliente;
    }

    public void setestado_cliente(String estado_cliente) {
        this.estado_cliente = estado_cliente;
    }



}
