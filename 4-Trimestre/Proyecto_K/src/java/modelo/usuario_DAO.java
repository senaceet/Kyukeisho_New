package modelo;

public class usuario_DAO {
    
    public int doc1;
    public String nom;
    public String ape;
    
    public usuario_DAO(String nom, String ape) {
        this.nom = nom;
        this.ape = ape;
        this.doc1 = 0;
    }
    
    public String connection(){
       String doc1 = this.nom + this.ape;
        return doc1;
    }
}
