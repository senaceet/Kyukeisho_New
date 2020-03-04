package java_interfaces;

import java.util.List;
import modelo.consolas;


public interface CRUD_consolas {
    public List listar();
    public consolas list(int id_consola);
    public boolean add(consolas ma);
    public boolean edit(consolas ma);
    public boolean eliminar(int id_consola);
}
