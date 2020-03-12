package java_interfaces;

import java.util.List;
import modelo.Categorias_juegos;

public interface CRUD_Categoria_juegos {
    public List listar();
    public Categorias_juegos list(int id_categoria_juegos);
    public boolean add(Categorias_juegos ma);
    public boolean edit(Categorias_juegos ma);
    public boolean eliminar(int id_categoria_juegos);
}
