package modelo;

public class Productos_vendidos {
    int id_producto;
    String nombre_producto;
    int cantidad_producto;
    int precio_unitario_producto;
    String especificaciones;
    String dir_img_producto;
    int id_tipo_producto;
    String nombre_tipo_producto;

    public Productos_vendidos(String nombre_producto,int cantidad_producto,int precio_unitario_producto,String especificaciones,String dir_img_producto, int id_tipo_producto,String nombre_tipo_producto) {
        this.nombre_producto = nombre_producto;
        this.cantidad_producto = cantidad_producto;
        this.precio_unitario_producto = precio_unitario_producto;
        this.especificaciones = especificaciones;
        this.dir_img_producto = dir_img_producto;
        this.id_tipo_producto = id_tipo_producto;
        this.nombre_tipo_producto = nombre_tipo_producto;
    }
    
     public Productos_vendidos() {
        this.nombre_producto = nombre_producto;
        this.cantidad_producto = cantidad_producto;
        this.precio_unitario_producto = precio_unitario_producto;
        this.especificaciones = especificaciones;
        this.dir_img_producto = dir_img_producto;
        this.id_tipo_producto = id_tipo_producto;
        this.nombre_tipo_producto = nombre_tipo_producto;
    }

    public int getid_producto() {
        return id_producto;
    }

    public void setid_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public String getnombre_producto() {
        return nombre_producto;
    }

    public void setnombre_producto(String nombre_producto) {
        this.nombre_producto = nombre_producto;
    }
    
    public int getcantidad_producto() {
        return cantidad_producto;
    }

    public void setcantidad_producto(int cantidad_producto) {
        this.cantidad_producto = cantidad_producto;
    }
    
    public int getprecio_unitario_producto() {
        return precio_unitario_producto;
    }

    public void setprecio_unitario_producto(int precio_unitario_producto) {
        this.precio_unitario_producto = precio_unitario_producto;
    }
    
        public String getespecificaciones() {
        return especificaciones;
    }

    public void setespecificaciones(String especificaciones) {
        this.especificaciones = especificaciones;
    }
    
    public String getdir_img_producto() {
        return dir_img_producto;
    }

    public void setdir_img_producto(String dir_img_producto) {
        this.dir_img_producto = dir_img_producto;
    }
    
    public int getid_tipo_producto() {
        return id_tipo_producto;
    }

    public void setid_tipo_producto(int id_tipo_producto) {
        this.id_tipo_producto = id_tipo_producto;
    }
    
    public String getnombre_tipo_producto() {
        return nombre_tipo_producto;
    }

    public void setnombre_tipo_producto(String nombre_tipo_producto) {
        this.nombre_tipo_producto = nombre_tipo_producto;
    }
    
}
