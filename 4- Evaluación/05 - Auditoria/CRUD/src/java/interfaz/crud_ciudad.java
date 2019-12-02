package interfaz;

import java.util.List;
import modelo.ciudad;

public interface crud_ciudad {
    public List listar();
    public ciudad list(int codigo_ciudad);
    public boolean add(ciudad ma);
    public boolean edit(ciudad ma);
}
