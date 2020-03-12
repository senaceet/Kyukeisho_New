package java_interfaces;

import java.util.List;
import modelo.consolas_ocupadas;

public interface CRUD_consolas_ocupadas {
    public List listar();
    public consolas_ocupadas list(int id_consola);
    public boolean add(consolas_ocupadas ma);
    public boolean edit(consolas_ocupadas ma);
    public boolean eliminar(int id_consola);
}

