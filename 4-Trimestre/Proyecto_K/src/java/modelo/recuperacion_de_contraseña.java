package modelo;


public class recuperacion_de_contraseña {
        public String email;
        public int codigo;
        public String var_email;
        public int var_codigo;
    
    public recuperacion_de_contraseña(String para, int c) {
        this.email = para;
        this.codigo = c;
        
    }
    
        public String email(){
        String var_email = this.email;
        return var_email;
    }
        public int codigo(){
        int var_codigo = this.codigo;
        return var_codigo;
    }
}
