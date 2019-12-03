package modelo;

public class persona {
    int documento_persona;
    String primer_nombre_persona;
    String segundo_nombre_persona;
    String primer_apellido_persona;
    String segundo_apellido_persona;
    int codigo_ciudad;
    String nombre_ciudad;
    String correo;

    public persona(int documento_persona, String primer_nombre_persona, String segundo_nombre_persona, String primer_apellido_persona, String segundo_apellido_persona, int codigo_ciudad, String nombre_ciudad,String correo) {
        this.documento_persona = documento_persona;
        this.primer_nombre_persona = primer_nombre_persona;
        this.segundo_nombre_persona = segundo_nombre_persona;
        this.primer_apellido_persona = primer_apellido_persona;
        this.segundo_apellido_persona = segundo_apellido_persona;
        this.codigo_ciudad = codigo_ciudad;
        this.nombre_ciudad = nombre_ciudad;
        this.correo = correo;
    }
    
        public persona() {
        this.documento_persona = documento_persona;
        this.primer_nombre_persona = primer_nombre_persona;
        this.segundo_nombre_persona = segundo_nombre_persona;
        this.primer_apellido_persona = primer_apellido_persona;
        this.segundo_apellido_persona = segundo_apellido_persona;
        this.codigo_ciudad = codigo_ciudad;
        this.nombre_ciudad = nombre_ciudad;
        this.correo = correo;
     }

    public int getdocumento_persona() {
        return documento_persona;
    }

    public void setdocumento_persona(int documento_persona) {
        this.documento_persona = documento_persona;
    }

    public String getprimer_nombre_persona() {
        return primer_nombre_persona;
    }

    public void setprimer_nombre_persona(String primer_nombre_persona) {
        this.primer_nombre_persona = primer_nombre_persona;
    }

    public String getsegundo_nombre_persona() {
        return segundo_nombre_persona;
    }

    public void setsegundo_nombre_persona(String segundo_nombre_persona) {
        this.segundo_nombre_persona = segundo_nombre_persona;
    }

    public String getprimer_apellido_persona() {
        return primer_apellido_persona;
    }

    public void setprimer_apellido_persona(String primer_apellido_persona) {
        this.primer_apellido_persona = primer_apellido_persona;
    }

    public String getsegundo_apellido_persona() {
        return segundo_apellido_persona;
    }

    public void setsegundo_apellido_persona(String segundo_apellido_persona) {
        this.segundo_apellido_persona = segundo_apellido_persona;
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
    
        public String getcorreo() {
        return correo;
    }

    public void setcorreo(String correo) {
        this.correo = correo;
    }
        
}
