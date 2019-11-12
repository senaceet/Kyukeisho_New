package modelo;

public class usuario_DAO {
    
    public int doc1;
    public String p_nom;
    public String s_nom;
    public String p_ape;
    public String s_ape;
    public String email;
    public long tel;
    public String direc;
    public String contra;
    
    
    public usuario_DAO(String pri_nom_user, String seg_nom_user, String pri_ape_user, String seg_ape_user, String email_user, long tel_user, String direc_user, String contra_user) {
        this.p_nom = pri_nom_user;
        this.s_nom = seg_nom_user;
        this.p_ape = pri_ape_user;
        this.s_ape = seg_ape_user;
        this.email = email_user;
        this.tel = tel_user;
        this.direc = direc_user;
        this.contra = contra_user;
        this.doc1 = 0;
    }
    
    public String connection(){
       String doc1 = this.p_nom + this.s_nom + this.p_ape + this.s_ape + this.email + this.tel + this.direc + this.contra;
        return doc1;
    }
}
