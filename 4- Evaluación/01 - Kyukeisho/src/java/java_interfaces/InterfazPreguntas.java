package java_interfaces;
 
import java.util.List;
import modelo.Preguntas;

public interface InterfazPreguntas  {
    public List listar();
    public Preguntas list(int id_pregunta);    
    public boolean add(Preguntas ma);
}
