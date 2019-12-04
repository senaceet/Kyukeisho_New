package interfaz;

import java.util.List;
import modelo.Ciudad;


public interface CRUD_Ciudad {
    public List listar();
    public Ciudad list(int codigo_ciudad);
    public boolean add(Ciudad ma);
    public boolean auditoria_añadir_ciudad(Ciudad ma);
    public boolean edit(Ciudad ma);
    public boolean auditoria_editar_ciudad_nuevo(Ciudad ma);
    public boolean eliminar(int codigo_ciudad);
    public boolean auditoria_eliminar_ciudad(Ciudad ma);
}
