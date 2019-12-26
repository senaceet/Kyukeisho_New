CREATE DATABASE Kyukeisho;
USE Kyukeisho;

-- USUARIO --
CREATE TABLE Kyukeisho.usuario(
id_usuario INT (10) NOT NULL AUTO_INCREMENT,
primer_nombre_usuario VARCHAR (40) NOT NULL,
segundo_nombre_usuario VARCHAR (40) NULL,
primer_apellido_usuario VARCHAR (40) NOT NULL,
segundo_apellido_usuario VARCHAR (40) NULL,
correo_usuario VARCHAR (50) NOT NULL UNIQUE,
telefono_usuario BIGINT (15) NULL,
direccion VARCHAR (30) NULL,
contraseña_usuario VARCHAR (50) NOT NULL,
id_estado_cliente INT (10) NULL,
primary key (id_usuario)
);

-- ESTADO CLIENTE --
CREATE TABLE Kyukeisho.estado_cliente(
id_estado_cliente INT (10) NOT NULL,
estado_cliente VARCHAR (30) NULL,
PRIMARY KEY (id_estado_cliente)
);


-- ADMINISTRADOR --
CREATE TABLE Kyukeisho.administrador(
id_administrador INT (10) NOT NULL AUTO_INCREMENT,
primer_nombre_administrador VARCHAR (40) NOT NULL,
segundo_nombre_administrador VARCHAR (40) NULL,
primer_apellido_administrador VARCHAR (40) NOT NULL,
segundo_apellido_administrador VARCHAR (30) NULL,
correo_administrador VARCHAR (30) UNIQUE,
telefono_administrador BIGINT (10) NULL,
contraseña_administrador VARCHAR (30) NOT NULL,
PRIMARY KEY (id_administrador)
);

-- FACTURA_COMPRA --
CREATE TABLE Kyukeisho.factura_compra(
id_usuario INT (10) NOT NULL,
id_factura INT (10) NOT NULL
);

-- FACTURA_VENTA --
CREATE TABLE Kyukeisho.factura_venta(
id_administrador INT (10) NOT NULL,
id_factura INT (10) NOT NULL
);


-- FACTURA --
CREATE TABLE Kyukeisho.factura(
id_factura INT (10) AUTO_INCREMENT NOT NULL,
hora_compra DATETIME,
precio_total INT (10) NOT NULL,
PRIMARY KEY (id_factura)
);


-- JUEGOS --
CREATE TABLE Kyukeisho.juegos(
codigo_juego INT (5) AUTO_INCREMENT,
nombre_juego VARCHAR (100) NULL,
PRIMARY KEY (codigo_juego)
);


-- CATEGORIA_JUEGOS --
CREATE TABLE Kyukeisho.categoria_juegos(
id_categoria_juegos INT (10) AUTO_INCREMENT NOT NULL,
nombre_categoria_juegos VARCHAR (50) NULL,
PRIMARY KEY (id_categoria_juegos)
);


-- JUEGOS_CATEGORIA_JUEGOS --
CREATE TABLE Kyukeisho.juegos_categoria_juegos(
codigo_juego INT (5) NOT NULL,
id_categoria_juegos INT (10) NOT NULL
);
 
-- Consolas disponibles
CREATE TABLE Kyukeisho.consola(
id_consola INT (2) NOT NULL,
nombre_consola VARCHAR (100) NULL,
precio_hora VARCHAR (10) NOT NULL,
id_estado_consola INT (10) NULL,
PRIMARY KEY (id_consola)
);
 
-- ESTADO CONSOLA --
CREATE TABLE Kyukeisho.estado_consola(
id_estado_consola INT (10) NOT NULL,
estado_consola VARCHAR (30) NULL,
PRIMARY KEY (id_estado_consola)
); 
 
 -- SERVICIOS_FACTURA --
CREATE TABLE Kyukeisho.consola_factura(
id_consola INT (2) NOT NULL,
id_factura INT (10) NOT NULL
);


-- PRODUCTOS --
CREATE TABLE Kyukeisho.productos(
id_producto INT (10) AUTO_INCREMENT NOT NULL,
nombre_producto VARCHAR (100) NULL,
cantidad_producto INT (10) NULL,
precio_unitario_producto INT (10) NULL,
id_tipo_producto INT (10) NOT NULL,
PRIMARY KEY (id_producto)
);


-- FACTURA_PRODUCTOS --
CREATE TABLE Kyukeisho.factura_productos(
id_factura INT (10) NOT NULL,
id_producto INT (10) NOT NULL
);


-- TIPOS_PRODUCTO --
CREATE TABLE Kyukeisho.tipo_producto(
id_tipo_producto INT (10) NOT NULL,
nombre_tipo_producto VARCHAR (100) NULL,
PRIMARY KEY (id_tipo_producto)
);


-- Reservaciones --
CREATE TABLE Kyukeisho.reservaciones(
id_reservacion INT (10) AUTO_INCREMENT NOT NULL,
fecha_incio DATE,
hora_incio TIME,
id_consola INT (2) NULL,
correo_usuario VARCHAR (30) NULL,
PRIMARY KEY (id_reservacion)
);


-- SERVIDOR_CORREO --
CREATE TABLE Kyukeisho.servidor_correo(
id_servidor INT (2) NOT NULL,
dominio_servicio VARCHAR (30) NULL,
PRIMARY KEY (id_servidor)
);


-- LOG_ERROR --
CREATE TABLE Kyukeisho.log_error(
id_error INT (2) NOT NULL,
descripcion_error VARCHAR (100) NULL,
hora_error DATETIME,
PRIMARY KEY (id_error)
);


-- Creacion de Relaciones ------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Estado/Usuario
ALTER TABLE kyukeisho.usuario ADD CONSTRAINT fk_usuario_estado_cliente FOREIGN KEY (id_estado_cliente) REFERENCES kyukeisho.estado_cliente(id_estado_cliente) ON UPDATE CASCADE ON DELETE CASCADE;

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- juegos_categoria_juegos/Juegos 

ALTER TABLE Kyukeisho.juegos_categoria_juegos ADD CONSTRAINT fk_juegos_categoria_juegos_codigo_juego FOREIGN KEY (codigo_juego) REFERENCES Kyukeisho.juegos (codigo_juego) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE Kyukeisho.juegos_categoria_juegos ADD INDEX fk_juegos_categoria_juegos_codigo_juego_idx (codigo_juego);

-- juegos_categoria_juegos/categoria_juegos
ALTER TABLE Kyukeisho.juegos_categoria_juegos ADD CONSTRAINT fk_juegos_categoria_juegos_id_categoria_juegos FOREIGN KEY (id_categoria_juegos) REFERENCES Kyukeisho.categoria_juegos (id_categoria_juegos) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE Kyukeisho.juegos_categoria_juegos ADD INDEX fk_juegos_categoria_juegos_id_categoria_juegos_idx (id_categoria_juegos);

ALTER TABLE Kyukeisho.juegos_categoria_juegos ADD PRIMARY KEY (codigo_juego, id_categoria_juegos);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Reservaciones/consolas 

ALTER TABLE kyukeisho.reservaciones ADD CONSTRAINT fk_reservaciones_consola FOREIGN KEY (id_consola) REFERENCES Kyukeisho.consola(id_consola) ON UPDATE CASCADE ON DELETE CASCADE;

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- consola_factura/consola

ALTER TABLE Kyukeisho.consola_factura ADD CONSTRAINT fk_consola_factura_id_consola FOREIGN KEY (id_consola) REFERENCES Kyukeisho.consola (id_consola) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE Kyukeisho.consola_factura ADD INDEX fk_consola_factura_id_consola_idx (id_consola); 

-- servicios_factura/Factura
ALTER TABLE Kyukeisho.consola_factura ADD CONSTRAINT fk_consola_factura_id_factura FOREIGN KEY (id_factura) REFERENCES Kyukeisho.factura (id_factura) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE Kyukeisho.consola_factura ADD INDEX fk_consola_factura_id_factura_idx (id_factura);

ALTER TABLE Kyukeisho.consola_factura ADD PRIMARY KEY (id_consola, id_factura);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Estado_consola/consola
ALTER TABLE Kyukeisho.consola ADD CONSTRAINT fk_consola_estado_consola FOREIGN KEY (id_estado_consola) REFERENCES Kyukeisho.estado_consola(id_estado_consola) ON UPDATE CASCADE ON DELETE CASCADE;

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Productos/tipo_producto
ALTER TABLE Kyukeisho.productos ADD CONSTRAINT fk_productos_tipo_producto FOREIGN KEY (id_tipo_producto) REFERENCES Kyukeisho.tipo_producto (id_tipo_producto) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE Kyukeisho.productos ADD INDEX fk_productos_tipo_producto_idx (id_tipo_producto);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Reservaciones/Usuario
ALTER TABLE Kyukeisho.reservaciones ADD CONSTRAINT fk_reservaciones_usuario FOREIGN KEY (correo_usuario) REFERENCES Kyukeisho.usuario (correo_usuario) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE Kyukeisho.reservaciones ADD INDEX fk_reservaciones_usuario_idx (correo_usuario);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- factura_productos/Factura

ALTER TABLE Kyukeisho.factura_productos ADD CONSTRAINT fk_factura_productos_id_factura FOREIGN KEY (id_factura) REFERENCES Kyukeisho.factura (id_factura) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE Kyukeisho.factura_productos ADD INDEX fk_factura_productos_id_factura_idx (id_factura);

-- factura_productos/Productos
ALTER TABLE Kyukeisho.factura_productos ADD CONSTRAINT fk_factura_productos_id_producto FOREIGN KEY (id_producto) REFERENCES Kyukeisho.productos (id_producto) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE Kyukeisho.factura_productos ADD INDEX fk_factura_productos_id_producto_idx (id_producto);

ALTER TABLE Kyukeisho.factura_productos ADD PRIMARY KEY (id_factura, id_producto);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- factura_compra/Usuario
ALTER TABLE Kyukeisho.factura_compra ADD CONSTRAINT fk_factura_compra_id_usuario FOREIGN KEY (id_usuario) REFERENCES Kyukeisho.usuario (id_usuario) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE Kyukeisho.factura_compra ADD INDEX fk_factura_compra_id_usuario_idx (id_usuario);

-- factura_compra/Factura
ALTER TABLE Kyukeisho.factura_compra ADD CONSTRAINT fk_factura_compra_id_factura FOREIGN KEY (id_factura) REFERENCES Kyukeisho.factura (id_factura) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE Kyukeisho.factura_compra ADD INDEX fk_factura_compra_id_factura_idx (id_factura);

ALTER TABLE Kyukeisho.factura_compra ADD PRIMARY KEY (id_usuario,id_factura);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- factura_venta/administrador

ALTER TABLE Kyukeisho.factura_venta ADD CONSTRAINT fk_factura_venta_id_administrador FOREIGN KEY (id_administrador) REFERENCES Kyukeisho.administrador (id_administrador) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE Kyukeisho.factura_venta ADD INDEX fk_factura_venta_id_administrador_idx (id_administrador);

-- factura_venta/Factura
ALTER TABLE Kyukeisho.factura_venta ADD CONSTRAINT fk_factura_venta_id_factura FOREIGN KEY (id_factura) REFERENCES Kyukeisho.factura (id_factura) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE Kyukeisho.factura_venta ADD INDEX fk_factura_venta_id_factura_idx (id_factura);

ALTER TABLE Kyukeisho.factura_venta  ADD PRIMARY KEY (id_administrador, id_factura);
