package java_interfaces;

import java.util.List;
import modelo.usuarios;

public interface CRUD_usuarios {
    public List listar();
    public usuarios list(int id_usuario);
    public boolean add(usuarios ma);
    public boolean edit(usuarios ma);
}
