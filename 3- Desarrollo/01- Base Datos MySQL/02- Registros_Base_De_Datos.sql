USE Kyukeisho;


INSERT INTO kyukeisho.estado_cliente(id_estado_cliente,estado_cliente)
VALUES 						(1, "Activo"),
							(2, "Desactivo");
                            
-- USUARIO --
INSERT INTO Kyukeisho.usuario (id_usuario, primer_nombre_usuario, segundo_nombre_usuario, primer_apellido_usuario, segundo_apellido_usuario, correo_usuario, telefono_usuario, direccion,contraseña_usuario, id_estado_cliente)
VALUES 		(1, "Vladimir", "Alberto", "Buitrago", "Rodriguez", "vabuitrago18@misena.edu.co", 3115698975, "Kra 4 N 45 R Sur","CWlaarcP6EE=", 1),
			(2, "Andres", "Felipe", "Olaya", "Cadena", "aolaya79@misena.edu.co", 3205898965, "Kra 4 N 35 z Sur","CWlaarcP6EE=", 1),
            (3, "Daniel", "Alberto", "Gómez", "Gonzáles", "daniel@gmail.com", 3505623648, "Cll 10 N 65 R Sur","CWlaarcP6EE=", 1),
            (4, "Juan", "Pablo", "Martínez", "Sánchez", "juanpa@gmail.com", 3005368754, "Carrera 3 N 18- 49","CWlaarcP6EE=", 1),
            (5, "Álvaro", "Hakim", "Castro", "", "alvaro@gmail.com", 3017696370, "Carrera 7 N 84- 102","CWlaarcP6EE=", 1),
            (6, "Adrían", "Asher", "Ruiz", "Ortiz", "adrian@gmail.com", 3214578915, "Calle 4 N 5 – 100","CWlaarcP6EE=", 1),
            (7, "Henry", "David", "Suárez", "Romero", "henry@gmail.com", 3120008975, "Calle 11 N 4 - 14","CWlaarcP6EE=", 1),
            (8, "Diego", "Fernando", "Herrera", "Valencia", "diego@gmail.com", 1056897485, "Calle 24 N 5-60","CWlaarcP6EE=", 1),
            (9, "Jude", "Javier", "Quintero", "Restrepo", "jude@gmail.com", 3000108975, "Av. Ciudad de Cali No 6C-09","CWlaarcP6EE=", 1),
            (10, "Ángel", "Gabriel", "Giraldo", "Morales", "angel@gmail.com", 3115690000, "Calle 48b sur No 21-13","CWlaarcP6EE=", 1);
		
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------        
        
-- CATEGORIA_JUEGOS --
INSERT INTO Kyukeisho.categoria_juegos (id_categoria_juegos, nombre_categoria_juegos)
VALUES     	(1, "Acción"),
			(2, "Lucha"),
			(3, "Arcade"),
			(4, "Estrategia"),
			(5, "Simuladores"),
			(6, "Deporte"),
			(7, "Aventura"),
			(8, "Rol - RPG"),
			(9, "Sandbox"),
			(10, "Musical"),
			(11, "Puzzle"),
			(12, "Educación"),
			(13, "Terror"),
			(14, "Artísticos"),
			(15, "Infantil"),
			(16, "Carreras"),
			(17, "Supervivencia"),
			(18, "Lucha"),
			(19, "Guerra"),
			(20, "Agilidad Mental"),
			(21, "Aventuras De Rol"),
			(22, "Cartas"),
			(23, "Construcción"),
			(24, "Cooperación"),
			(25, "Cyberpunk"),
			(26, "Shooter"),
			(27, "Interactivos"),
			(28, "Pinball"),
			(29, "Antología"),
			(30, "Tablero"),
			(31, "Multijugador"),
			(32, "Batalla En Línea"),
			(33, "Simulación Social Y De Vida"),
			(34, "Plataformas"),
            (35, "Sociales"),
            (36, "Conducción");

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO kyukeisho.estado_consola(id_estado_consola,estado_consola)
VALUES 						(1, "Disponible"),
							(2, "Ocupada");
                            
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- SERVICIOS --
INSERT INTO Kyukeisho.consola (id_consola, nombre_consola, precio_hora,id_estado_consola)
VALUES 		(01, "Xbox 360", 200, 1),
            (02, "PS2", 300, 2),
            (03, "PS3", 100, 1),
            (04, "PS4", 300, 1),
            (05, "Pc", 400, 1),
            (06, "Xbos one", 300 ,1),
            (07, "Nintendo", 500 ,1),
            (08, "Wii", 700 ,1);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- CITAS -- 
INSERT INTO Kyukeisho.reservaciones (id_reservacion,fecha_incio,hora_incio, correo_usuario,id_consola)
VALUES 		
			(0002, '2018-12-03','05:45:00',"aolaya79@misena.edu.co",02);


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
-- ADMINISTRADOR --
INSERT INTO Kyukeisho.administrador (id_administrador, primer_nombre_administrador, segundo_nombre_administrador, primer_apellido_administrador, segundo_apellido_administrador, correo_administrador, telefono_administrador,contraseña_administrador)
VALUES  (1, "Andres", NULL, "Olaya", NULL, "andres@gmail.com", 3002356897,"CWlaarcP6EE="), -- =12345
		(2, "Vladimir", NULL, "Buitrago", NULL, "vladimir@gmail.com", 3052138795,"CWlaarcP6EE=");

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
            
-- TIPO_PRODUCTO --
INSERT INTO Kyukeisho.tipo_producto (id_tipo_producto, nombre_tipo_producto)
VALUES 	(1, "Comestibles"),
		(2, "Videojuegos"),
		(3, "Golosinas"),
        (4, "Tecnologico"),
        (5, "Bebidas"),
        (6, "Utiles Escolares");

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
            
-- FACTURA --
INSERT INTO Kyukeisho.factura (id_factura, hora_compra, precio_total)
VALUES	(1, '2019-10-01 05:29:00', 100000),
		(2, '2018-11-01 04:00:00', 10000),
		(3, '2019-11-09 06:29:00', 10000),
		(4, '2019-02-01 05:29:00', 10000),
		(5, '2019-03-02 06:29:00', 10000),
		(6, '2019-04-03 07:29:00', 10000),
		(7, '2019-02-04 08:29:00', 10000),
		(8, '2019-05-05 08:45:00', 10000),
		(9, '2019-06-06 02:29:00', 10000),
		(10, '2019-07-07 06:29:00', 1000),
		(11, '2019-02-08 07:29:00', 10000),
		(12, '2019-01-01 04:29:00', 10000),
		(13, '2019-02-01 04:29:00', 10000),
		(14, '2019-03-01 04:29:00', 10000),
		(15, '2019-04-01 04:29:00', 10000),
		(16, '2019-05-01 04:29:00', 10000),
		(17, '2019-06-01 04:29:00', 900),
		(18, '2019-07-01 04:29:00', 10000),
		(19, '2019-08-01 04:29:00', 9000),
		(20, '2019-09-01 04:29:00', 10000);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        
-- JUEGOS --        
INSERT INTO Kyukeisho.juegos (codigo_juego, nombre_juego,precio_juego,cantidad_juegos,dir_img_juego,id_categoria_juegos,id_consola)
VALUES  
		-- Pc --
        (1, "Euro Truck Simulator 2","32000",2,"Euro Truck Simulator 2.jpg",36,05),
		(2, "American Truck Simulator 2","46000",5,"American Truck Simulator 2.jpg",36,05),
		(3, "Pes 2019","54900",5,"Pes 2019.jpg",6,05),
		(4, "Assassin’s Creed Odyssey Gold Edition","89000",8,"Assassin’s Creed Odyssey Gold Edition.jpg",1,05),
		(5, "Grand Theft Auto V","150000",7,"Grand Theft Auto V.jpg",7,05),
        
	-- PS4 --
		(6,"Call of Duty Modern Warfare","120000",6,"Call of Duty Modern Warfare.jpg",26,04),
		(7,"God of War","60000",5,"God of War.jpg",1,04),
		(8,"Battlefield 4","60000",4,"Battlefield 4.jpg",26,04),
		(9,"Spider-Man","62000",1,"Spider-Man.jpg",1,04),	
		(10,"FIFA 19","120000",0,"FIFA 19.jpg",6,04),
         
	-- Xbox 360 --
		(11,"Resident Evil 4","50000",1,"Resident Evil 4.jpg",13,01),
		(12,"NBA2K18","100000",4,"NBA2K18.jpg",6,01),
		(13,"Rise of the Tomb Raider","33000",5,"Rise of the Tomb Raider.jpg",7,01),
		(14, "WWE 2K17","115000",6,"WWE 2K17.jpg",6,01),
		(15, "Call Of Duty Black Ops III","99600",5,"Call Of Duty Black Ops III.jpg",26,01),
        
	-- Xbox One --
		(16, "Minecraft","91000",10,"Minecraft.jpg",7,06),
		(17, "Need for Speed™ Payback","87900",12,"Need for Speed™ Payback.jpg",16,06),
        (18, "Resident Evil 2","120000",12,"Resident Evil 2.jpg",13,06),
		(19, "The Elder Scrolls Online","40000",8,"The Elder Scrolls Online.jpg",31,06),
		(20, "Anthem","105000",9,"Anthem.jpg",31,06),
        
	-- Nintendo --
		(21, "The Legend of Zelda","290000",7,"The Legend of Zelda.jpg",7,07),
		(22, "Mario Kart 8 Deluxe","232000",6,"Mario Kart 8 Deluxe.jpg",16,07),
		(23, "Mario Bros","202000",5,"Mario Bros.jpg",1,07),
		(24, "Kirby","320000",4,"Kirby.jpg",1,07),
		(25, "Splatoon 2","280000",4,"Splatoon 2.jpg",1,07),
        
	-- Wii-
		(26, "Wall e","180000",5,"Wall e.jpg",7,08),
		(27, "Just Dance 17","282000",6,"Just Dance 17.jpg",10,08),
		(28, "Fatal Frame 4","232000",4,"Fatal Frame 4.jpg",1,08),
		(29, "The Voice","35000",4,"The Voice.jpg",1,08),
		(30, "Wii Fit U","140000",6,"Wii Fit U.jpg",7,08);	

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        
-- SERVICIOS_FACTURA -- 
INSERT INTO Kyukeisho.consola_factura (id_consola, id_factura)
VALUES (01,1),
	   (02,2),
       (03,3),
       (04,4),
       (05,5),
       (06,6),
       (07,7),
       (08,8),
       (08,9),
       (05,19),
       (01,11),
       (02,12),
       (03,13),
       (04,14),
       (05,15),
       (06,16),
       (07,17),
       (08,18),
       (07,19),
       (05,20);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- PRODUCTOS --
INSERT INTO Kyukeisho.productos (id_producto, nombre_producto, cantidad_producto, precio_unitario_producto,dir_img_producto, id_tipo_producto)
VALUES (1, "Cheetos", 12, 1200,"Cheetos.jpg", 1),
	   (2, "Bom Bom Bum", 3, 250,"Bom Bom Bum.jpg", 1),
       (3, "Ponque Ramo", 10, 3500,"Ponque Ramo.jpg", 1),
       (4, "Trocipollos", 5, 800,"Trocipollos.jpg", 1),
       (5, "Chocorramo", 14, 1200,"Chocorramo.png", 1),
       (6, "PS4", 1, 1400000,"PS4.jpg", 4),
       (7, "Xbox One", 2, 1799000,"Xbox One.jpg", 4),
       (8, "PS3", 1, 519000,"PS3.jpg", 4),
       (9, "Xbox 360", 5, 600000,"Xbox 360.jpg", 4),
       (10, "Wii", 4, 250000,"Wii.jpg", 4),
       (11, "Audífonos Spirit", 8, 49990,"Audífonos Spirit.jpg", 4),
       (12, "Cargador Bateria Power Bank 4000 mAh Blanco", 25, 9990,"Cargador Bateria Power Bank 4000 mAh Blanco.jpg", 4),
       (13, "Gaseosa Coca Cola sin azúcar x 2 und", 6, 8990,"Gaseosa Coca Cola sin azúcar x 2 und.jpg", 5),
       (14, "Agua Cristal x 24 und", 10, 9990,"Agua Cristal x 24 und.png", 5),
       (15, "Bebida Gasificada Limonada", 14, 2790,"Bebida Gasificada Limonada.jpg", 5),
       (16, "Jugo Hit x 12 und", 13, 9190,"Jugo Hit x 12 und.jpg", 5),
       (17, "Pony Malta Sixpack", 10, 5590,"Pony Malta Sixpack.jpg", 5),
       (18, "Resaltadores x 20 und", 50, 3337,"Resaltadores x 20 und.jpg", 6),
       (19, "Portafolio Pokémon", 15, 44991,"Portafolio Pokémon.jpg", 6),
       (20, "Xtime", 60, 200,"Xtime.jpg", 1);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- FACTURA_PRODUCTOS --
INSERT INTO Kyukeisho.factura_productos (id_factura, id_producto)
VALUES (1,1 ),
	   (2,2 ),
       (3,3 ),
       (4,4 ),
       (5,5 ),
       (6,6 ),
       (7,7 ),
       (8,8 ),
       (9,9 ),
       (10,10 ),
       (11,11 ),
       (12,12 ),
       (13,13 ),
       (14,14 ),
       (15,15 ),
       (16,16 ),
       (17,17 ),
       (18,18 ),
       (19,19 ),
       (20,20 );

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------           

-- FACTURA_COMPRA --
INSERT INTO Kyukeisho.factura_compra(id_usuario,id_factura)
VALUES	(1,1),
		(2,2),
		(3,3),
		(4,4),
		(5,5),
		(6,6),
		(7,7),
		(8,8),
		(9,9),
		(10,10);
  
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  

-- FACTURA_VENTA --
INSERT INTO Kyukeisho.factura_venta(id_administrador, id_factura)
VALUES	(1, 1),
		(2, 2),
		(2, 3),
		(1, 4),
		(1, 5),
		(2, 6),
		(1, 7),
		(1, 8), 
		(2, 9),
		(1, 10);
        
-- Preguntas -- 
INSERT INTO kyukeisho.preguntas(id_pregunta, correo, pregunta, fecha)
VALUES 						   (01, "andres@gmail.com", "Quiero Adquirir Su Servicio",'2020-03-04 01:55:00');       

--
