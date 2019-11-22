create database Kyukeisho;
use Kyukeisho;

-- USUARIO --
create table Kyukeisho.usuario(
id_usuario int (10) not null AUTO_INCREMENT,
primer_nombre_usuario varchar (39) not null,
segundo_nombre_usuario varchar (30) null,
primer_apellido_usuario varchar (30) not null,
segundo_apellido_usuario varchar (30),
correo_usuario varchar (30) not null unique,
telefono_usuario bigint (10) null,
direccion varchar (30) null,
contraseña_usuario varchar (30) not null,
id_estado int (10) null,
primary key (id_usuario)
);

-- ESTADO --
create table Kyukeisho.estado(
id_estado int (10) not null primary key,
estado varchar (30) null
);


-- ADMINISTRADOR --
create table Kyukeisho.administrador(
id_administrador int (10) not null AUTO_INCREMENT,
primer_nombre_administrador varchar (30) not null,
segundo_nombre_administrador varchar (30),
primer_apellido_administrador varchar (30) not null,
segundo_apellido_administrador varchar (30),
correo_administrador varchar (30) unique,
telefono_administrador bigint (10),
contraseña_administrador varchar (30) not null,
primary key (id_administrador)
);

-- FACTURA_COMPRA --
create table Kyukeisho.factura_compra(
id_usuario int (10) not null,
id_factura varchar (6) not null
);

-- FACTURA_VENTA --
create table Kyukeisho.factura_venta(
id_administrador int (10) not null ,
id_factura varchar (6) not null
);


-- FACTURA --
create table Kyukeisho.factura(
id_factura varchar (6) not null,
hora_entrada datetime,
hora_compra datetime,
precio_total int (10) not null
);
alter table Kyukeisho.factura add primary key (id_factura);


-- JUEGOS --
create table Kyukeisho.juegos(
codigo_juego int (5) not null AUTO_INCREMENT,
nombre_juego varchar (100),
id_usuario int (10) not null, 
primary key (codigo_juego)
);


-- CATEGORIA_JUEGOS --
create table Kyukeisho.categoria_juegos(
id_categoria_juegos int (10) not null AUTO_INCREMENT,
nombre_categoria_juegos varchar (50),
primary key (id_categoria_juegos)
);


-- JUEGOS_CATEGORIA_JUEGOS --
create table Kyukeisho.juegos_categoria_juegos(
codigo_juego int (5) not null,
id_categoria_juegos int (10) not null
);


-- USUARIO_SERVICIOS --
create table Kyukeisho.usuario_consola(
id_usuario int (10) not null,
id_consola int (2) not null
);

 
-- Consolas disponibles
create table Kyukeisho.consola(
id_consola int (2) not null,
nombre_consola varchar (100),
precio_hora int(10) not null,
primary key(id_consola)
);
 
 
 -- SERVICIOS_FACTURA --
create table Kyukeisho.consola_factura(
id_consola int (2) not null,
id_factura varchar (6) not null
);


-- PRODUCTOS --
create table Kyukeisho.productos(
id_producto int (10) not null,
nombre_producto varchar (100),
cantidad_producto int (10),
precio_unitario_producto int (10),
id_tipo_producto int (10) not null
);


-- FACTURA_PRODUCTOS --
create table Kyukeisho.factura_productos(
id_factura varchar (6) not null,
id_producto int (10)
);


-- TIPOS_PRODUCTO --
create table Kyukeisho.tipo_producto(
id_tipo_producto int (10) not null,
nombre_tipo_producto varchar (100)
);
alter table Kyukeisho.tipo_producto add primary key (id_tipo_producto);


-- CITAS --
create table Kyukeisho.citas(
id_cita int (10) not null,
hora_cita datetime,
id_usuario int (10) not null
);


-- SERVIDOR_CORREO --
create table Kyukeisho.servidor_correo(
id_servidor int (2) not null,
dominio_servicio varchar (30)
);
alter table Kyukeisho.servidor_correo add primary key (id_servidor);


-- LOG_ERROR --
create table Kyukeisho.log_error(
id_error int (2) not null,
descripcion_error varchar (100),
hora_error datetime
);
alter table Kyukeisho.log_error add primary key (id_error);




-- Creacion de Relaciones ------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Estado/Usuario
alter table kyukeisho.usuario add constraint fk_usuario_estado foreign key (id_estado) references kyukeisho.estado(id_estado) on update cascade on delete cascade;

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Juegos/usuario 
alter table Kyukeisho.juegos add constraint fk_juegos_usuario foreign key (id_usuario) references Kyukeisho.usuario (id_usuario) on update cascade on delete cascade;
alter table Kyukeisho.juegos add index fk_juegos_usuario_idx (id_usuario);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- juegos_categoria_juegos/Juegos 

alter table Kyukeisho.juegos_categoria_juegos add constraint fk_juegos_categoria_juegos_codigo_juego foreign key (codigo_juego) references Kyukeisho.juegos (codigo_juego) on update cascade on delete cascade;
alter table Kyukeisho.juegos_categoria_juegos add index fk_juegos_categoria_juegos_codigo_juego_idx (codigo_juego);

-- juegos_categoria_juegos/categoria_juegos
alter table Kyukeisho.juegos_categoria_juegos add constraint fk_juegos_categoria_juegos_id_categoria_juegos foreign key (id_categoria_juegos) references Kyukeisho.categoria_juegos (id_categoria_juegos) on update cascade on delete cascade;
alter table Kyukeisho.juegos_categoria_juegos add index fk_juegos_categoria_juegos_id_categoria_juegos_idx (id_categoria_juegos);

alter table Kyukeisho.juegos_categoria_juegos add primary key (codigo_juego, id_categoria_juegos);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- usuario_consola/Usuario 

alter table Kyukeisho.usuario_consola add constraint fk_usuario_consola_id_usuario foreign key (id_usuario) references Kyukeisho.usuario (id_usuario) on update cascade on delete cascade;
alter table Kyukeisho.usuario_consola add index fk_usuario_consola_id_usuario_idx (id_usuario);

-- usuario_consola/consola
alter table Kyukeisho.usuario_consola add constraint fk_usuario_consola_id_consola foreign key (id_consola) references Kyukeisho.consola (id_consola) on update cascade on delete cascade;
alter table Kyukeisho.usuario_consola add index fk_usuario_consola_id_consola_idx (id_consola);

alter table Kyukeisho.usuario_consola add primary key (id_usuario, id_consola);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- consola_factura/consola

alter table Kyukeisho.consola_factura add constraint fk_consola_factura_id_consola foreign key (id_consola) references Kyukeisho.consola (id_consola) on update cascade on delete cascade;
alter table Kyukeisho.consola_factura add index fk_consola_factura_id_consola_idx (id_consola); 

-- servicios_factura/Factura
alter table Kyukeisho.consola_factura add constraint fk_consola_factura_id_factura foreign key (id_factura) references Kyukeisho.factura (id_factura) on update cascade on delete cascade;
alter table Kyukeisho.consola_factura add index fk_consola_factura_id_factura_idx (id_factura);

alter table Kyukeisho.consola_factura add primary key (id_consola, id_factura);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Productos/tipo_producto
alter table Kyukeisho.productos add primary key (id_producto);
alter table Kyukeisho.productos add constraint fk_productos_tipo_producto foreign key (id_tipo_producto) references Kyukeisho.tipo_producto (id_tipo_producto) on update cascade on delete cascade;
alter table Kyukeisho.productos add index fk_productos_tipo_producto_idx (id_tipo_producto);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Citas/Usuario
alter table Kyukeisho.citas add primary key (id_cita);
alter table Kyukeisho.citas add constraint fk_citas_usuario foreign key (id_usuario) references Kyukeisho.usuario (id_usuario) on update cascade;
alter table Kyukeisho.citas add index fk_citas_usuario_idx (id_usuario);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- factura_productos/Factura

alter table Kyukeisho.factura_productos add constraint fk_factura_productos_id_factura foreign key (id_factura) references Kyukeisho.factura (id_factura) on update cascade on delete cascade;
alter table Kyukeisho.factura_productos add index fk_factura_productos_id_factura_idx (id_factura);

-- factura_productos/Productos
alter table Kyukeisho.factura_productos add constraint fk_factura_productos_id_producto foreign key (id_producto) references Kyukeisho.productos (id_producto) on update cascade on delete cascade;
alter table Kyukeisho.factura_productos add index fk_factura_productos_id_producto_idx (id_producto);

alter table Kyukeisho.factura_productos add primary key (id_factura, id_producto);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- factura_compra/Usuario
alter table Kyukeisho.factura_compra add constraint fk_factura_compra_id_usuario foreign key (id_usuario) references Kyukeisho.usuario (id_usuario) on update cascade on delete cascade;
alter table Kyukeisho.factura_compra add index fk_factura_compra_id_usuario_idx (id_usuario);

-- factura_compra/Factura
alter table Kyukeisho.factura_compra add constraint fk_factura_compra_id_factura foreign key (id_factura) references Kyukeisho.factura (id_factura) on update cascade on delete cascade;
alter table Kyukeisho.factura_compra add index fk_factura_compra_id_factura_idx (id_factura);

alter table Kyukeisho.factura_compra add primary key (id_usuario,id_factura);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- factura_venta/administrador

alter table Kyukeisho.factura_venta add constraint fk_factura_venta_id_administrador foreign key (id_administrador) references Kyukeisho.administrador (id_administrador) on update cascade on delete cascade;
alter table Kyukeisho.factura_venta add index fk_factura_venta_id_administrador_idx (id_administrador);

-- factura_venta/Factura
alter table Kyukeisho.factura_venta add constraint fk_factura_venta_id_factura foreign key (id_factura) references Kyukeisho.factura (id_factura) on update cascade on delete cascade;
alter table Kyukeisho.factura_venta add index fk_factura_venta_id_factura_idx (id_factura);

alter table Kyukeisho.factura_venta add primary key (id_administrador, id_factura);
