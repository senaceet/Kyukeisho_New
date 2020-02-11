package java_interfaces;

import java.util.List;
import modelo.Juegos;

public interface CRUD_Juegos {
    public List listar();
    public Juegos list(int codigo_juego);
    public boolean add(Juegos ma);
    public boolean edit(Juegos ma);
    public boolean eliminar(int codigo_juego);
}
