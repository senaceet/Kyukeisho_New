package interfaz;

import java.util.List;
import modelo.Ciudad;

public interface CRUD_Ciudad {
    public List listar();
    public Ciudad list(int codigo_ciudad);
    public boolean add(Ciudad ma);
    public boolean edit(Ciudad ma);
}
