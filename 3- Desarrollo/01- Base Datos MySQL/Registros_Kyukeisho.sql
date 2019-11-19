use Kyukeisho;

-- ESTADO --
insert into kyukeisho.estado(id_estado, estado)
values 						(1, "Activo"),
							(2, "Desactivo");

-- USUARIO --
insert into Kyukeisho.usuario (id_usuario, primer_nombre_usuario, segundo_nombre_usuario, primer_apellido_usuario, segundo_apellido_usuario, correo_usuario, telefono_usuario, direccion,contraseña_usuario)
values 		(1, "Juan", "Alberto", "Lopez", "Obregon", "juanal@gmail.com", 3115698975, "Kra 4 N°45 R Sur","12345"),
			(2, "Marcos", "Mateo", "Lopez", "Rodríguez", "marcos@gmail.com", 3205898965, "Kra 4 N°35 z Sur","12345"),
            (3, "Daniel", "Alberto", "Gómez", "Gonzáles", "daniel@gmail.com", 3505623648, "Cll 10 N°65 R Sur","12345"),
            (4, "Juan", "Pablo", "Martínez", "Sánchez", "juanpa@gmail.com", 3005368754, "Carrera 3 # 18- 49","12345"),
            (5, "Álvaro", "Hakim", "Castro", "", "alvaro@gmail.com", 3017696370, "Carrera 7 # 84- 102","12345"),
            (6, "Adrían", "Asher", "Ruiz", "Ortiz", "adrian@gmail.com", 3214578915, "Calle 4 No. 5 – 100","12345"),
            (7, "Henry", "David", "Suárez", "Romero", "henry@gmail.com", 3120008975, "Calle 11 No. 4 - 14","12345"),
            (8, "Diego", "Fernando", "Herrera", "Valencia", "diego@gmail.com", 1056897485, "Calle 24 N° 5-60","12345"),
            (9, "Jude", "Javier", "Quintero", "Restrepo", "jude@gmail.com", 3000108975, "Av. Ciudad de Cali No. 6C-09","12345"),
            (10, "Ángel", "Gabriel", "Giraldo", "Morales", "angel@gmail.com", 3115690000, "Calle 48b sur No. 21-13","12345"),
            (11, "Thiago", "Valentín", "García", "Oliver	", "thiago@gmail.com", 3031230000, "Avenida Kra 60 No. 57-60","12345"),
		    (12, "Julián", "Dante", "Jake", "", "julian@gmail.com", 3037896400, "Calle 11 No. 4-21 / 93","12345"),
			(13, "Julián", "", "Jake", "", "julianja@gmail.com", 3037896400, "Calle 11 No. 4-21 / 93","12345"),
            (14, "Andrea", "", "Noah	", "", "andrea@gmail.com", 3093646414, "Calle 10 No. 5-22","12345"),
            (15, "Sophia", "", "Connor", "", "sophia@gmail.com", 3124587986, "Carrera 20 No. 37-54","12345"),
            (16, "Emma", "", "Harry", "", "emma@gmail.com", 3201234578, "Av. Calle 19 N° 2-49 Centro","12345"),
            (17, "Isabella", "", "Mason", "", "isabella@gmail.com", 3126548795, "Calle 109a N° 17-10 Sede Norte","12345"),
            (18, "Olivia", "", "Charlie", "", "olivia@gmail.com", 3002345600, "Cr.8a # 15-63","12345"),
            (19, "Martina", "", "Margaret", "", "martina@gmail.com", 3045687120, "Cr.9 # 74-99","12345"),
            (20, "Giorgia", "", "Michelle", "", "giorgia@gmail.com", 3506584578, "Carrera 1 Este No. 17 01","12345");
		
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------        
        
-- CATEGORIA_JUEGOS --
insert into Kyukeisho.categoria_juegos (id_categoria_juegos, nombre_categoria_juegos)
values     	(001, "Acción"),
			(002, "Lucha"),
			(003, "Arcade"),
			(004, "Estrategia"),
			(005, "Simuladores"),
			(006, "Deporte"),
			(007, "Aventura"),
			(008, "Rol - RPG"),
			(009, "Sandbox"),
			(010, "Musical"),
			(011, "Puzzle"),
			(012, "Educación"),
			(013, "Terror"),
			(014, "Artísticos"),
			(015, "Infantil"),
			(016, "Carreras"),
			(017, "Supervivencia"),
			(018, "Lucha"),
			(019, "Guerra"),
			(020, "Agilidad Mental"),
			(021, "Aventuras De Rol"),
			(022, "Cartas"),
			(023, "Construcción"),
			(024, "Cooperación"),
			(025, "Cyberpunk"),
			(026, "Shooter"),
			(027, "Interactivos"),
			(028, "Pinball"),
			(029, "Antología"),
			(030, "Tablero"),
			(031, "Multijugador"),
			(032, "Batalla En Línea"),
			(033, "Simulación Social Y De Vida"),
			(034, "Plataformas"),
            (035, "Sociales"),
            (036, "Conducción");

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- SERVICIOS --
insert into Kyukeisho.servicios (id_servicio, nombre_servicio, precio_servicio)
values 		(01, "Baño", 1000),
			(02, "Xbox 360", 1000 ),
            (03, "PS2", 1000 ),
            (04, "PS3", 1000 ),
            (05, "PS4", 1000 ),
            (06, "Pc", 1000 ),
            (07, "Xbos one", 1000 ),
            (08, "Nintendo", 1000 ),
            (09, "Wii", 1000 ),
            (10, "Alimentos", 1000 );

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- CITAS -- 
insert into Kyukeisho.citas (id_cita, hora_cita, id_usuario)
values 		(0001, '2019-10-01 04:29:00', 1),
			(0002, '2018-12-03 05:45:00', 2),
            (0003, '2016-11-05 01:32:00', 3),
            (0004, '2017-09-07 02:13:00', 4),
            (0005, '2017-10-08 03:45:00', 5),
            (0006, '2017-05-09 05:45:00', 6),
            (0007, '2018-10-10 06:15:00', 7),
            (0008, '2019-01-12 07:23:00', 8),
            (0009, '2018-10-12 08:32:00', 9),
            (0010, '2019-10-11 09:45:00', 10),
            (0011, '2018-04-14 12:12:00', 11),
            (0012, '2019-10-15 11:45:00', 12),
            (0013, '2018-05-16 10:45:00', 13),
            (0014, '2017-06-17 03:45:00', 14),
            (0015, '2018-10-18 05:45:00', 15),
            (0016, '2019-07-19 07:45:00', 16),
            (0017, '2019-08-20 10:45:00', 17),
            (0018, '2017-09-22 03:45:00', 18),
            (0019, '2018-11-21 18:45:00', 19),
            (0020, '2019-12-23 03:54:00', 20);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
-- ADMINISTRADOR --
insert into Kyukeisho.administrador (id_administrador, primer_nombre_administrador, segundo_nombre_administrador, primer_apellido_administrador, segundo_apellido_administrador, correo_administrador, telefono_administrador,contraseña_administrador)
values  (1, "Adagny", "Benno", "Fave", "Ferrec", "adagny@gmail.com", 3002356897,"12345"),
		(2, "Dafnée", "Denise", "Rossi", "Bianchi", "dafnee@gmail.com", 3052138795,"12345");

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
            
-- TIPO_PRODUCTO --
insert into Kyukeisho.tipo_producto (id_tipo_producto, nombre_tipo_producto)
values 	(1, "Comestibles"),
		(2, "Videojuegos"),
		(3, "Golosinas"),
        (4, "Tecnologico"),
        (5, "Bebidas"),
        (6, "Utiles Escolares");

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
            
-- FACTURA --
insert into Kyukeisho.factura (id_factura, hora_entrada, hora_compra, precio_total)
values	("AZ0", '2019-10-01 04:29:00', '2019-10-01 05:29:00', 100000),
		("AZ1", '2018-11-01 03:29:00', '2018-11-01 04:00:00', 10000),
		("AZ2", '2019-11-09 04:29:00', '2019-11-09 06:29:00', 10000),
		("AZ3", '2019-02-01 04:29:00', '2019-02-01 05:29:00', 10000),
		("AZ4", '2019-03-02 05:29:00', '2019-03-02 06:29:00', 10000),
		("AZ5", '2019-04-03 06:29:00', '2019-04-03 07:29:00', 10000),
		("AZ6", '2019-02-04 07:29:00', '2019-02-04 08:29:00', 10000),
		("AZ7", '2019-05-05 08:29:00', '2019-05-05 08:45:00', 10000),
		("AZ8", '2019-06-06 01:29:00', '2019-06-06 02:29:00', 10000),
		("AZ9", '2019-07-07 04:29:00', '2019-07-07 06:29:00', 1000),
		("AE0", '2019-02-08 04:29:00', '2019-02-08 07:29:00', 10000),
		("AE1", '2019-01-01 03:29:00', '2019-01-01 04:29:00', 10000),
		("AE2", '2019-02-01 02:29:00', '2019-02-01 04:29:00', 10000),
		("AE3", '2019-03-01 01:29:00', '2019-03-01 04:29:00', 10000),
		("AE4", '2019-04-01 12:29:00', '2019-04-01 04:29:00', 10000),
		("AE5", '2019-05-01 10:29:00', '2019-05-01 04:29:00', 10000),
		("AE6", '2019-06-01 03:29:00', '2019-06-01 04:29:00', 900),
		("AE7", '2019-07-01 02:29:00', '2019-07-01 04:29:00', 10000),
		("AE8", '2019-08-01 01:29:00', '2019-08-01 04:29:00', 9000),
		("AE9", '2019-09-01 12:29:00', '2019-09-01 04:29:00', 10000),
		("AX0", '2019-10-01 04:29:00', '2019-10-01 05:29:00', 10000);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        
-- JUEGOS --        
insert into Kyukeisho.juegos (codigo_juego, nombre_juego, id_usuario)
values  
		-- Pc --
        ("A1", "Euro Truck Simulator 2", 1),
		("A2", "American Truck Simulator 2", 2),
		("A3", "Pes 2019", 3),
		("A4", "Assassin’s Creed Odyssey Gold Edition", 4),
		("A5", "Grand Theft Auto V", 5),
        
	-- PS4 --
		("B1","Call of Duty 4: Modern Warfare",6),
		("B2","God of War",7),
		("B3","Battlefield 4",8),
		("B4","Spider-Man",9),	
		("B5","FIFA 19",10),
        
	-- Xbox 360 --
		("C1","Resident Evil 4",11),
		("C2","NBA2K18",12),
		("C3","Rise of the Tomb Raider",13),
		("C4", "WWE 2K17",14),
		("C5", "Call Of Duty Black Ops III",15),
        
	-- Xbox One --
		("D1", "Minecraft", 16),
		("D2", "Fortnite", 17),
		("D3", "Roblox", 18),
		("D4", "The Elder Scrolls Online", 19),
		("D5", "Anthem", 20),
        
	-- Nintendo --
		("E1", "The Legend of Zelda",16),
		("E2", "Mario Kart 8 Deluxe",17),
		("E3", "Mario Bros",18),
		("E4", "Kirby",19),
		("E5", "Splatoon 2", 20),
        
	-- Wii-
		("F1", "Wall e", 16),
		("F2", "Just Dance 17",1),
		("F3", "Fatal Frame 4",5),
		("F4", "The Voice", 4),
		("F5", "Wii Fit U", 11);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
-- JUEGOS_CATEGORIA_JUEGOS --
insert into Kyukeisho.juegos_categoria_juegos (codigo_juego, id_categoria_juegos)
values 	
		-- Pc --
        ("A1", 005),
		("A2", 005),
		("A3", 006),
		("A4", 001),
		("A5", 001),
        
	-- PS4 --
		("B1", 001),
		("B2", 017),
		("B3", 017),
		("B4", 004),	
		("B5", 006),
        
	-- Xbox 360 --
		("C1", 017),
		("C2", 006),
		("C3", 001),
		("C4", 002),
		("C5", 001),
        
	-- Xbox One --
		("D1", 023),
		("D2", 017),
		("D3", 017),
		("D4", 031),
		("D5", 001),
        
	-- Nintendo --
		("E1", 004),
		("E2", 036),
		("E3", 004),
		("E4", 001),
		("E5", 021),
        
	-- Wii-
		("F1", 003),
		("F2", 010),
		("F3", 001),
		("F4", 004),
		("F5", 002);

        
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        
-- SERVICIOS_FACTURA -- 
insert into Kyukeisho.servicios_factura (id_servicio, id_factura)
values (01,"AZ0"),
	   (02,"AZ1"),
       (03,"AZ2"),
       (04,"AZ3"),
       (05,"AZ4"),
       (06,"AZ5"),
       (07,"AZ6"),
       (08,"AZ7"),
       (08,"AZ8"),
       (10,"AZ9"),
       (01,"AE0"),
       (02,"AE1"),
       (03,"AE2"),
       (04,"AE3"),
       (05,"AE4"),
       (06,"AE5"),
       (07,"AE6"),
       (08,"AE7"),
       (09,"AE8"),
       (10,"AE9"),
       (01,"AX0");

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- PRODUCTOS --
insert into Kyukeisho.productos (id_producto, nombre_producto, cantidad_producto, precio_unitario_producto, id_tipo_producto)
values (1, "Cheetos", 12, 1200, 1),
	   (2, "Bom Bom Bum", 3, 250, 1),
       (3, "Ponque Ramo", 10, 3500, 1),
       (4, "Tricopollos", 5, 800, 1),
       (5, "Chocorramo", 14, 1200, 1),
       (6, "PS4 - Infinite Warfare Legacy Edition", 1, 59900, 4),
       (7, "Xbox OnE - Crash Bandicoot N. Sane Trigoly", 2, 169900, 4),
       (8, "PS4 - FIFA 20 Edition Deluxe", 1, 319000, 4),
       (9, "Xbox 360 - PES 2017", 5, 30000, 4),
       (10, "Wii - Pack Juegos Digitales", 4, 49990, 4),
       (11, "Audífonos Spirit", 8, 49990, 4),
       (12, "Cargador Bateria Power Bank 4000 mAh Blanco", 25, 9990, 4),
       (13, "Gaseosa Coca Cola sin azúcar x 2 und", 6, 8990, 5),
       (14, "Agua Cristal x 24 und", 10, 9990, 5),
       (15, "Bebida Gasificada Limonada", 14, 2790, 5),
       (16, "Jugo Hit x 12 und", 13, 9190, 5),
       (17, "Pony Malta Sixpack", 10, 5590, 5),
       (18, "Resaltadores x 20 und", 50, 3337, 6),
       (19, "Portafolio Pokémon", 15, 44991, 6),
       (20, "Xtime", 60, 200, 1);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- FACTURA_PRODUCTOS --
insert into Kyukeisho.factura_productos (id_factura, id_producto)
values ("AZ0",1 ),
	   ("AZ1",2 ),
       ("AZ2",3 ),
       ("AZ3",4 ),
       ("AZ4",5 ),
       ("AZ5",6 ),
       ("AZ6",7 ),
       ("AZ7",8 ),
       ("AZ8",9 ),
       ("AZ9",10 ),
       ("AE0",11 ),
       ("AE1",12 ),
       ("AE2",13 ),
       ("AE3",14 ),
       ("AE4",15 ),
       ("AE5",16 ),
       ("AE6",17 ),
       ("AE7",18 ),
       ("AE8",19 ),
       ("AE9",20 );

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------           

-- FACTURA_COMPRA --
insert into Kyukeisho.factura_compra(id_usuario,id_factura)
values	(1,"AZ0"),
		(2,"AZ1"),
		(3,"AZ2"),
		(4,"AZ3"),
		(5,"AZ4"),
		(6,"AZ5"),
		(7,"AZ6"),
		(8,"AZ7"),
		(9,"AZ8"),
		(10,"AZ9"),
		(11,"AE0"),
		(12,"AE1"),
		(13,"AE2"),
		(14,"AE3"),
		(15,"AE4"),
		(16,"AE5"),
		(17,"AE6"),
		(18,"AE7"),
		(19,"AE8"),
		(20,"AE9");
  
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  

-- FACTURA_VENTA --
insert into Kyukeisho.factura_venta(id_administrador, id_factura)
values	(1, "AZ0"),
		(2, "AZ1"),
		(2, "AZ2"),
		(1, "AZ3"),
		(1, "AZ4"),
		(2, "AZ5"),
		(1, "AZ6"),
		(1, "AZ7"),
		(2, "AZ8"),
		(1, "AZ9"),
		(2, "AE0"),
		(2, "AE1"),
		(2, "AE2"),
		(1, "AE3"),
		(1, "AE4"),
		(1, "AE5"),
		(2, "AE6"),
		(1, "AE7"),
		(2, "AE8"),
		(1, "AE9");
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    
-- USUARIO_SERVICIOS --
insert into Kyukeisho.usuario_servicios (id_usuario, id_servicio)
values	(1, 01),
		(2, 02),
		(3, 03),
		(4, 04),
		(5, 05),
		(6, 06),
		(7, 07),
		(8, 08),
		(9, 09),
		(10, 10),
		(11, 01),
		(12, 02),
		(13, 03),
		(14, 04),
		(15, 05),
		(16, 06),
		(17, 07),
		(18, 08),
		(19, 09),
		(20, 10);