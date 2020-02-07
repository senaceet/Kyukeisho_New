USE Kyukeisho;

-- CONSULTAS Y JOINS 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Lista de usuarios registrados con el id
SELECT id_usuario, primer_nombre_usuario FROM Kyukeisho.usuario;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Lista de usuarios registrados con el id_usuario diferente a AB y AC ------------------------
SELECT * FROM kyukeisho.usuario WHERE id_usuario LIKE 'AA%';

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Cantidad de usuarios registrados -----
SELECT count(*) FROM kyukeisho.usuario;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- lista de administradores registrados -----
SELECT * FROM Kyukeisho.administrador;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Listado de ventas  Ordenado por fecha y hora----------------
SELECT hora_entrada, hora_compra, nombre_producto, cantidad_producto, precio_unitario_producto, nombre_servicio, precio_servicio, precio_total
FROM Kyukeisho.factura_productos 
JOIN Kyukeisho.factura ON 
factura_productos.id_factura= factura.id_factura
JOIN kyukeisho.productos ON
productos.id_producto=factura_productos.id_producto
JOIN kyukeisho.servicios_factura ON
factura.id_factura=servicios_factura.id_factura
JOIN kyukeisho.servicios ON
servicios.id_servicio=servicios_factura.id_servicio
ORDER BY hora_compra DESC;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 6. Usuarios con su respectiva compra -------------------------------------------

SELECT primer_nombre_usuario, segundo_nombre_usuario, primer_apellido_usuario, segundo_apellido_usuario, correo_usuario, hora_entrada, hora_compra, nombre_producto, 
cantidad_producto, precio_unitario_producto, nombre_servicio, precio_servicio, precio_total
FROM Kyukeisho.factura_productos 
JOIN Kyukeisho.factura ON 
factura_productos.id_factura= factura.id_factura
JOIN kyukeisho.productos ON
productos.id_producto=factura_productos.id_producto
JOIN kyukeisho.servicios_factura ON
factura.id_factura=servicios_factura.id_factura
JOIN kyukeisho.servicios ON
servicios.id_servicio=servicios_factura.id_servicio
JOIN factura_compra ON 
factura.id_factura= factura_compra.id_factura
JOIN usuario ON 
factura_compra.id_usuario= usuario.id_usuario;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Lista de productos y categoría (inventario)
SELECT nombre_producto,cantidad_producto,precio_unitario_producto,nombre_tipo_producto FROM Kyukeisho.productos JOIN Kyukeisho.tipo_producto ON productos.id_tipo_producto = tipo_producto.id_tipo_producto;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Cantidad total de productos registrados
SELECT count(*) FROM Kyukeisho.productos;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Lista de categorías de productos
SELECT nombre_tipo_producto FROM Kyukeisho.tipo_producto;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--  Cantidad de categorías
SELECT count(*) FROM Kyukeisho.tipo_producto;


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--  Nombres y apellidos, id del cliente que realizó la compra de mayor valor
SELECT max(precio_total), primer_nombre_usuario, segundo_nombre_usuario, primer_apellido_usuario, segundo_apellido_usuario
FROM Kyukeisho.usuario 
JOIN Kyukeisho.factura_compra 
ON usuario.id_usuario = factura_compra.id_usuario 
JOIN Kyukeisho.factura 
ON factura.id_factura = factura_compra.id_factura ;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Nombres y apellidos,  id del cliente que realizó la compra de menor valor -----------------
SELECT min(precio_total) 
FROM Kyukeisho.usuario 
LEFT JOIN Kyukeisho.factura_compra
ON usuario.id_usuario =factura_compra.id_usuario
RIGHT JOIN Kyukeisho.factura
ON factura_compra.id_factura = factura.id_factura;
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Ordenar usarios, productos, categorías (ASC)-------------------------------

SELECT primer_nombre_usuario, segundo_nombre_usuario, primer_apellido_usuario, segundo_apellido_usuario, hora_entrada, hora_compra, nombre_producto, nombre_tipo_producto
FROM Kyukeisho.usuario
JOIN Kyukeisho.factura_compra ON
usuario.id_usuario=factura_compra.id_usuario
JOIN Kyukeisho.factura ON 
factura_compra.id_factura= factura.id_factura
JOIN Kyukeisho.factura_productos ON
factura.id_factura=factura_productos.id_factura
JOIN kyukeisho.productos ON
productos.id_producto=factura_productos.id_producto
JOIN kyukeisho.tipo_producto ON
tipo_producto.id_tipo_producto=productos.id_tipo_producto
ORDER BY hora_compra ASC;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Ordenar ventas por fecha (Desde la más actual a la más antigua)
SELECT primer_nombre_usuario, segundo_nombre_usuario, primer_apellido_usuario, segundo_apellido_usuario, hora_entrada, hora_compra, nombre_producto, nombre_tipo_producto
FROM Kyukeisho.usuario
JOIN Kyukeisho.factura_compra ON
usuario.id_usuario=factura_compra.id_usuario
JOIN Kyukeisho.factura ON 
factura_compra.id_factura= factura.id_factura
JOIN Kyukeisho.factura_productos ON
factura.id_factura=factura_productos.id_factura
JOIN kyukeisho.productos ON
productos.id_producto=factura_productos.id_producto
JOIN kyukeisho.tipo_producto ON
tipo_producto.id_tipo_producto=productos.id_tipo_producto
ORDER BY hora_compra DESC;
