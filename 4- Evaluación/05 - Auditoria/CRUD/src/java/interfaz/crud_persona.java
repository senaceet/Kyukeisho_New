package interfaz;

import java.util.List;
import modelo.persona;

public interface crud_persona {
    public List listar();
    public persona list(int documento_persona);
    public boolean add(persona ma);
    public boolean edit(persona ma);
}
