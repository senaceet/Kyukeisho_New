use Kyukeisho;

-- CONSULTAS Y JOINS 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Lista de usuarios registrados con el id
SELECT * FROM usuario;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Lista de usuarios registrados con el id_usuario diferente a 121 ------------------------
select * from usuario where id_usuario >= 121 ;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Cantidad de usuarios registrados -----
select count(*) from usuario;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- lista de administradores registrados -----
select * from administrador;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Listado de ventas  Ordenado por fecha y hora----------------
SELECT hora_entrada, hora_compra, nombre_producto, cantidad_producto, precio_unitario_producto, nombre_servicio, precio_servicio, precio_total
FROM factura_productos 
join factura on 
factura_productos.id_factura= factura.id_factura
join productos on
productos.id_producto=factura_productos.id_producto
join servicios_factura on
factura.id_factura=servicios_factura.id_factura
join servicios on
servicios.id_servicio=servicios_factura.id_servicio
order by hora_compra DESC;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 6. Usuarios con su respectiva compra -------------------------------------------

SELECT primer_nombre_usuario, segundo_nombre_usuario, primer_apellido_usuario, segundo_apellido_usuario, correo_usuario, hora_entrada, hora_compra, nombre_producto, 
cantidad_producto, precio_unitario_producto, nombre_servicio, precio_servicio, precio_total
FROM factura_productos 
join factura on 
factura_productos.id_factura= factura.id_factura
join productos on
productos.id_producto=factura_productos.id_producto
join servicios_factura on
factura.id_factura=servicios_factura.id_factura
join servicios on
servicios.id_servicio=servicios_factura.id_servicio
join factura_compra on 
factura.id_factura= factura_compra.id_factura
join usuario on 
factura_compra.id_usuario= usuario.id_usuario;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Lista de productos y categoría (inventario)

select nombre_producto,cantidad_producto,precio_unitario_producto,nombre_tipo_producto from productos join tipo_producto on productos.id_tipo_producto = tipo_producto.id_tipo_producto;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Cantidad total de productos registrados
select count(*) from productos;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Lista de categorías de productos
select nombre_tipo_producto from tipo_producto;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--  Cantidad de categorías
select count(*) from tipo_producto;


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--  Nombres y apellidos, id del cliente que realizó la compra de mayor valor
SELECT usuario.id_usuario,primer_nombre_usuario,segundo_nombre_usuario,primer_apellido_usuario,segundo_apellido_usuario,precio_total
from usuario
join factura_compra on usuario.id_usuario = factura_compra.id_usuario
join factura on factura_compra.id_factura = factura.id_factura
where precio_total  =  (SELECT max(precio_total) FROM factura);

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Nombres y apellidos,  id del cliente que realizó la compra de menor valor -----------------
SELECT usuario.id_usuario,primer_nombre_usuario,segundo_nombre_usuario,primer_apellido_usuario,segundo_apellido_usuario,precio_total
from usuario
join factura_compra on usuario.id_usuario = factura_compra.id_usuario
join factura on factura_compra.id_factura = factura.id_factura
where precio_total  =  (SELECT min(precio_total) FROM factura);
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Ordenar usarios, productos, categorías (ASC)-------------------------------

	SELECT primer_nombre_usuario, segundo_nombre_usuario, primer_apellido_usuario, segundo_apellido_usuario, hora_entrada, hora_compra, nombre_producto, nombre_tipo_producto
	FROM usuario
	join factura_compra on
	usuario.id_usuario=factura_compra.id_usuario
	join factura on 
	factura_compra.id_factura= factura.id_factura
	join factura_productos on
	factura.id_factura=factura_productos.id_factura
	join productos on
	productos.id_producto=factura_productos.id_producto
	join tipo_producto on
	tipo_producto.id_tipo_producto=productos.id_tipo_producto
	order by hora_compra ASC;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Ordenar ventas por fecha (Desde la más actual a la más antigua)
SELECT primer_nombre_usuario, segundo_nombre_usuario, primer_apellido_usuario, segundo_apellido_usuario, hora_entrada, hora_compra, nombre_producto, nombre_tipo_producto
FROM usuario
join factura_compra on
usuario.id_usuario=factura_compra.id_usuario
join factura on 
factura_compra.id_factura= factura.id_factura
join factura_productos on
factura.id_factura=factura_productos.id_factura
join productos on
productos.id_producto=factura_productos.id_producto
join tipo_producto on
tipo_producto.id_tipo_producto=productos.id_tipo_producto
order by hora_compra DESC;
