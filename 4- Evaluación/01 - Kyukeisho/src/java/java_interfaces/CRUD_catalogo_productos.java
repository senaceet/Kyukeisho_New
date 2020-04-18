package java_interfaces;

import java.util.List;
import modelo.Productos_vendidos;

public interface CRUD_catalogo_productos {
    public List listar();
    public Productos_vendidos list(int id_producto);
    public boolean edit(Productos_vendidos ma);
}
