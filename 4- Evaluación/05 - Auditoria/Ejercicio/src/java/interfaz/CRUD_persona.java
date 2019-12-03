package interfaz;

import java.util.List;
import modelo.persona;

public interface CRUD_persona {
    public List listar();
    public persona list(int documento_persona);
    public boolean add(persona ma);
    public boolean auditoria_añadir_persona(persona ma);
    public boolean auditoria_editar_persona_viejo(persona ma);
    public boolean auditoria_editar_persona_nuevo(persona ma);
    public boolean edit(persona ma);
}