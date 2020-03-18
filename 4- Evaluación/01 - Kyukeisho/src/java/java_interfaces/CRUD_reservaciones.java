package java_interfaces;

import java.util.List;
import modelo.reservaciones;

public interface CRUD_reservaciones {
    public List listar();
    public reservaciones list(int id_reservacion);
    public boolean add(reservaciones ma);
    public boolean update(reservaciones ma);
    public boolean update2(reservaciones ma);
    public boolean edit(reservaciones ma);
    public boolean eliminar(int id_reservacion);
}
