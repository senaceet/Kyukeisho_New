package java_interfaces;

import java.util.List;
import modelo.Juegos;

public interface catalogo_juegos {
    public List listar();
    public Juegos list(int codigo_juego);
    public boolean edit(Juegos ma);
}