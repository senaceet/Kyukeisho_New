package java_interfaces;

import java.util.List;
import modelo.categorias_productos;

public interface CRUD_Categorias_productos {
    public List listar();
    public categorias_productos list(int id_tipo_producto);
    public boolean add(categorias_productos ma);
    public boolean edit(categorias_productos ma);
    public boolean eliminar(int id_tipo_producto);
}
