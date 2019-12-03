package interfaz;

import java.util.List;
import modelo.persona;

public interface CRUD_persona {
    public List listar();
    public persona list(int documento_persona);
    public boolean add(persona ma);
    public boolean add2(persona ma);
    public boolean edit(persona ma);
}