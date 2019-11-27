package modelo;

public class usuarios{
    int id_usuario;
    String primer_nombre_usuario;
    String segundo_nombre_usuario;
    String primer_apellido_usuario;
    String segundo_apellido_usuario;
    String correo_usuario;
    

    public usuarios(String primer_nombre_usuario, String segundo_nombre_usuario,  String primer_apellido_usuario, String segundo_apellido_usuario, String correo_usuario) {
       
        this.primer_nombre_usuario = primer_nombre_usuario;
        this.segundo_nombre_usuario = segundo_nombre_usuario;
        this.primer_apellido_usuario = primer_apellido_usuario;
        this.segundo_apellido_usuario = segundo_apellido_usuario;
        this.correo_usuario = correo_usuario;
    }

    
     public usuarios() {
        this.primer_nombre_usuario = primer_nombre_usuario;
        this.segundo_nombre_usuario = segundo_nombre_usuario;
        this.primer_apellido_usuario = primer_apellido_usuario;
        this.segundo_apellido_usuario = segundo_apellido_usuario;
        this.correo_usuario = correo_usuario;
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


}
