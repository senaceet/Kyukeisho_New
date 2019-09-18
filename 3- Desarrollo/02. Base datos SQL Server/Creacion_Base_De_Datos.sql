create database Kyukeisho;
use Kyukeisho;


-- USUARIO --
create table usuario(
id_usuario bigint not null,
primer_nombre_usuario varchar (39) not null,
segundo_nombre_usuario varchar (30),
primer_apellido_usuario varchar (30) not null,
segundo_apellido_usuario varchar (30),
correo_usuario varchar (30) not null unique,
telefono_usuario bigint,
direccion varchar (30),
primary key (id_usuario)
);


-- ADMINISTRADOR --
create table administrador(
id_administrador bigint not null,
primer_nombre_administrador varchar (30) not null,
segundo_nombre_administrador varchar (30),
primer_apellido_administrador varchar (30) not null,
segundo_apellido_administrador varchar (30),
correo_administrador varchar (30) unique,
telefono_administrador bigint,
primary key (id_administrador)
);

-- FACTURA_COMPRA --
create table factura_compra(
id_usuario bigint not null,
id_factura bigint not null
);


-- FACTURA_VENTA --
create table factura_venta(
id_administrador bigint not null,
id_factura bigint not null
);


-- FACTURA --
create table factura(
id_factura bigint not null,
fecha_entrada date,
hora_entrada time,
fecha_compra date,
hora_compra time,
precio_total int not null
);
alter table factura add primary key (id_factura);


-- JUEGOS --
create table juegos(
codigo_juego int not null,
nombre_juego varchar (100),
id_usuario bigint not null
);

-- JUEGOS_CATEGORIA_JUEGOS --
create table juegos_categoria_juegos(
codigo_juego int not null,
id_categoria_juegos int not null
);

-- CATEGORIA_JUEGOS --
create table categoria_juegos(
id_categoria_juegos int not null,
nombre_categoria_juegos varchar (50)
);
alter table categoria_juegos add primary key (id_categoria_juegos);


-- USUARIO_SERVICIOS --
create table usuario_servicios(
id_usuario bigint not null,
id_servicio int not null
);

 
 -- SERVICIOS -- 
 create table servicios(
 id_servicio int not null,
 nombre_servicio varchar (20),
 precio_servicio int
 );
 alter table servicios add primary key (id_servicio);
 
 
 -- SERVICIOS_FACTURA --
 create table servicios_factura(
 id_servicio int not null,
id_factura bigint not null,
);


-- PRODUCTOS --
create table productos(
id_producto int  not null,
nombre_producto varchar (100),
cantidad_producto int,
precio_unitario_producto int,
id_tipo_producto int not null
);


-- FACTURA_PRODUCTOS --
create table factura_productos(
id_factura bigint not null,
id_producto int not null
);


-- TIPOS_PRODUCTO --
create table tipo_producto(
id_tipo_producto int  not null,
nombre_tipo_producto varchar (100)
);
alter table tipo_producto add primary key (id_tipo_producto);


-- CITAS --
create table citas(
id_cita int  not null,
fecha_cita date not null,
hora_cita time not null,
id_usuario bigint
);


-- SERVIDOR_CORREO --
create table servidor_correo(
id_servidor int  not null,
dominio_servicio varchar (30)
);
alter table servidor_correo add primary key (id_servidor);


-- LOG_ERROR --
create table log_error(
id_error int  not null,
descripcion_error varchar (100),
hora_error datetime
);
alter table log_error add primary key (id_error);


-- Creacion de Relaciones ------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Juegos/usuario 
alter table juegos add primary key (codigo_juego);
alter table juegos add constraint fk_juegos_usuario foreign key (id_usuario) references usuario (id_usuario) on update cascade;


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- juegos_categoria_juegos/Juegos 

alter table juegos_categoria_juegos add constraint fk_juegos_categoria_juegos_codigo_juego foreign key (codigo_juego) references juegos (codigo_juego) on update cascade;

-- juegos_categoria_juegos/categoria_juegos

alter table juegos_categoria_juegos add constraint fk_juegos_categoria_juegos_id_categoria_juegos foreign key (id_categoria_juegos) references categoria_juegos (id_categoria_juegos) on update cascade;

alter table juegos_categoria_juegos add primary key (codigo_juego, id_categoria_juegos);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- usuario_servicios/Usuario 

alter table usuario_servicios add constraint fk_usuario_servicios_id_usuario foreign key (id_usuario) references usuario (id_usuario) on update cascade;

-- usuario_servicios/Servicio
alter table usuario_servicios add constraint fk_usuario_servicios_id_servicio foreign key (id_servicio) references servicios (id_servicio) on update cascade;

alter table usuario_servicios add primary key (id_usuario, id_servicio);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- servicios_factura/Servicio 

alter table servicios_factura add constraint fk_servicios_factura_id_servicio foreign key (id_servicio) references servicios (id_servicio) on update cascade;

-- servicios_factura/Factura
alter table servicios_factura add constraint fk_servicios_factura_id_factura foreign key (id_factura) references factura (id_factura) on update cascade;

alter table servicios_factura add primary key (id_servicio, id_factura);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Productos/tipo_producto
alter table productos add primary key (id_producto);
alter table productos add constraint fk_productos_tipo_producto foreign key (id_tipo_producto) references tipo_producto (id_tipo_producto) on update cascade;

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Citas/Usuario
alter table citas add primary key (id_cita);
alter table citas add constraint fk_citas_usuario foreign key (id_usuario) references usuario (id_usuario) on update cascade;

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- factura_productos/Factura

alter table factura_productos add constraint fk_factura_productos_id_factura foreign key (id_factura) references factura (id_factura) on update cascade;

-- factura_productos/Productos
alter table factura_productos add constraint fk_factura_productos_id_producto foreign key (id_producto) references productos (id_producto) on update cascade;


alter table factura_productos add primary key (id_factura, id_producto);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- factura_compra/Usuario
alter table factura_compra add constraint fk_factura_compra_id_usuario foreign key (id_usuario) references usuario (id_usuario) on update cascade;

-- factura_compra/Factura
alter table factura_compra add constraint fk_factura_compra_id_factura foreign key (id_factura) references factura (id_factura) on update cascade;


alter table factura_compra add primary key (id_usuario,id_factura);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- factura_venta/administrador

alter table factura_venta add constraint fk_factura_venta_id_administrador foreign key (id_administrador) references administrador (id_administrador) on update cascade;

-- factura_venta/Factura
alter table factura_venta add constraint fk_factura_venta_id_factura foreign key (id_factura) references factura (id_factura) on update cascade;

alter table factura_venta add primary key (id_administrador, id_factura);
