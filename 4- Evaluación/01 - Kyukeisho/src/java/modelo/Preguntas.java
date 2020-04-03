package modelo;

public class Preguntas {
    int id_pregunta;
    String correo;
    String pregunta;
    String fecha;

    public Preguntas(int id_pregunta, String correo, String pregunta, String fecha) {
        this.id_pregunta = id_pregunta;
        this.correo = correo;
        this.pregunta = pregunta;
        this.fecha = fecha;
    }
    public Preguntas() {
        this.id_pregunta = id_pregunta;
        this.correo = correo;                
        this.pregunta = pregunta;
        this.fecha = fecha;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public int getId_pregunta() {
        return id_pregunta;
    }

    public void setId_pregunta(int id_pregunta) {
        this.id_pregunta = id_pregunta;
    }

    public String getPregunta() {
        return pregunta;
    }

    public void setPregunta(String pregunta) {
        this.pregunta = pregunta;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }    
}
