package modelo;

public class reservacion_DAO {
    

    public String fecha;
    public String hora;
    public int consola;
    
    public reservacion_DAO(String fecha,String hora,int consola) {
        this.fecha = fecha;
        this.hora = hora;
        this.consola = consola;

    }
    
    public String connection(){
       String doc1 = this.fecha + this.hora + this.consola;
        return doc1;
    }
}