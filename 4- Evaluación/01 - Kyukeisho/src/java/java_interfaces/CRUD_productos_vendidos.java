package java_interfaces;

import java.util.List;
import modelo.Productos_vendidos;

public interface CRUD_productos_vendidos {
    public List listar();
    public Productos_vendidos list(int id_producto);
    public boolean add(Productos_vendidos ma);
    public boolean edit(Productos_vendidos ma);
    public boolean eliminar(int id_producto);
}
