use Kyukeisho;


insert into kyukeisho.estado_cliente(id_estado_cliente,estado_cliente)
values 						(1, "Activo"),
							(2, "Desactivo");
                            

-- USUARIO --
insert into Kyukeisho.usuario (id_usuario, primer_nombre_usuario, segundo_nombre_usuario, primer_apellido_usuario, segundo_apellido_usuario, correo_usuario, telefono_usuario, direccion,contraseña_usuario, id_estado_cliente)
values 		(1, "Vladimir", "Alberto", "Buitrago", "Rodriguez", "vabuitrago18@misena.edu.co", 3115698975, "Kra 4 N°45 R Sur","12345", 1),
			(2, "Marcos", "Mateo", "Lopez", "Rodríguez", "marcos@gmail.com", 3205898965, "Kra 4 N°35 z Sur","12345", 1),
            (3, "Daniel", "Alberto", "Gómez", "Gonzáles", "daniel@gmail.com", 3505623648, "Cll 10 N°65 R Sur","12345", 1),
            (4, "Juan", "Pablo", "Martínez", "Sánchez", "juanpa@gmail.com", 3005368754, "Carrera 3 # 18- 49","12345", 1),
            (5, "Álvaro", "Hakim", "Castro", "", "alvaro@gmail.com", 3017696370, "Carrera 7 # 84- 102","12345", 1),
            (6, "Adrían", "Asher", "Ruiz", "Ortiz", "adrian@gmail.com", 3214578915, "Calle 4 No. 5 – 100","12345", 1),
            (7, "Henry", "David", "Suárez", "Romero", "henry@gmail.com", 3120008975, "Calle 11 No. 4 - 14","12345", 1),
            (8, "Diego", "Fernando", "Herrera", "Valencia", "diego@gmail.com", 1056897485, "Calle 24 N° 5-60","12345", 1),
            (9, "Jude", "Javier", "Quintero", "Restrepo", "jude@gmail.com", 3000108975, "Av. Ciudad de Cali No. 6C-09","12345", 1),
            (10, "Ángel", "Gabriel", "Giraldo", "Morales", "angel@gmail.com", 3115690000, "Calle 48b sur No. 21-13","12345", 1),
            (11, "Thiago", "Valentín", "García", "Oliver	", "thiago@gmail.com", 3031230000, "Avenida Kra 60 No. 57-60","12345", 1),
		    (12, "Julián", "Dante", "Jake", "", "julian@gmail.com", 3037896400, "Calle 11 No. 4-21 / 93","12345", 1),
			(13, "Julián", "", "Jake", "", "julianja@gmail.com", 3037896400, "Calle 11 No. 4-21 / 93","12345", 1),
            (14, "Andrea", "", "Noah	", "", "andrea@gmail.com", 3093646414, "Calle 10 No. 5-22","12345", 1),
            (15, "Sophia", "", "Connor", "", "sophia@gmail.com", 3124587986, "Carrera 20 No. 37-54","12345", 1),
            (16, "Emma", "", "Harry", "", "emma@gmail.com", 3201234578, "Av. Calle 19 N° 2-49 Centro","12345", 1),
            (17, "Isabella", "", "Mason", "", "isabella@gmail.com", 3126548795, "Calle 109a N° 17-10 Sede Norte","12345", 1),
            (18, "Olivia", "", "Charlie", "", "olivia@gmail.com", 3002345600, "Cr.8a # 15-63","12345", 1),
            (19, "Martina", "", "Margaret", "", "martina@gmail.com", 3045687120, "Cr.9 # 74-99","12345", 1),
            (20, "Giorgia", "", "Michelle", "", "giorgia@gmail.com", 3506584578, "Carrera 1 Este No. 17 01","12345", 1);
		
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

insert into kyukeisho.estado_consola(id_estado_consola,estado_consola)
values 						(1, "Disponible"),
							(2, "Ocupada");
                            
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- SERVICIOS --
insert into Kyukeisho.consola (id_consola, nombre_consola, precio_hora,id_estado_consola)
values 		(01, "Xbox 360", 200, 1),
            (02, "PS2", 300, 1),
            (03, "PS3", 100, 1),
            (04, "PS4", 300, 1),
            (05, "Pc", 400, 1),
            (06, "Xbos one", 300 ,1),
            (07, "Nintendo", 500 ,1),
            (08, "Wii", 700 ,1);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- CITAS -- 
insert into Kyukeisho.reservaciones (id_reservacion,fecha_incio,hora_incio, correo_usuario,id_consola)
values 		(0001, '2019-10-01','04:29:00',"vabuitrago18@misena.edu.co",01),
			(0002, '2018-12-03','05:45:00',"marcos@gmail.com",02),
            (0003, '2016-11-05','01:32:00',"daniel@gmail.com",03),
            (0004, '2017-09-07','02:13:00',"juanpa@gmail.com",04),
            (0005, '2017-10-08','03:45:00',"alvaro@gmail.com",05),
            (0006, '2017-05-09','05:45:00',"adrian@gmail.com",06),
            (0007, '2018-10-10','06:15:00',"henry@gmail.com",07),
            (0008, '2019-01-12','07:23:00',"diego@gmail.com",08);

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
        (1, "Euro Truck Simulator 2", 1),
		(2, "American Truck Simulator 2", 2),
		(3, "Pes 2019", 3),
		(4, "Assassin’s Creed Odyssey Gold Edition", 4),
		(5, "Grand Theft Auto V", 5),
        
	-- PS4 --
		(6,"Call of Duty 4: Modern Warfare",6),
		(7,"God of War",7),
		(8,"Battlefield 4",8),
		(9,"Spider-Man",9),	
		(10,"FIFA 19",10),
        
	-- Xbox 360 --
		(11,"Resident Evil 4",11),
		(12,"NBA2K18",12),
		(13,"Rise of the Tomb Raider",13),
		(14, "WWE 2K17",14),
		(15, "Call Of Duty Black Ops III",15),
        
	-- Xbox One --
		(16, "Minecraft", 16),
		(17, "Fortnite", 17),
		(18, "Roblox", 18),
		(19, "The Elder Scrolls Online", 19),
		(20, "Anthem", 20),
        
	-- Nintendo --
		(21, "The Legend of Zelda",16),
		(22, "Mario Kart 8 Deluxe",17),
		(23, "Mario Bros",18),
		(24, "Kirby",19),
		(25, "Splatoon 2", 20),
        
	-- Wii-
		(26, "Wall e", 16),
		(27, "Just Dance 17",1),
		(28, "Fatal Frame 4",5),
		(29, "The Voice", 4),
		(30, "Wii Fit U", 11);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
-- JUEGOS_CATEGORIA_JUEGOS --
insert into Kyukeisho.juegos_categoria_juegos (codigo_juego, id_categoria_juegos)
values 	
		-- Pc --
        (1, 005),
		(2, 005),
		(3, 006),
		(4, 001),
		(5, 001),
        
	-- PS4 --
		(6, 001),
		(7, 017),
		(8, 017),
		(9, 004),	
		(10, 006),
        
	-- Xbox 360 --
		(11, 017),
		(12, 006),
		(13, 001),
		(14, 002),
		(15, 001),
        
	-- Xbox One --
		(16, 023),
		(17, 017),
		(18, 017),
		(19, 031),
		(20, 001),
        
	-- Nintendo --
		(21, 004),
		(22, 036),
		(23, 004),
		(24, 001),
		(25, 021),
        
	-- Wii-
		(26, 003),
		(27, 010),
		(28, 001),
		(29, 004),
		(30, 002);

        
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        
-- SERVICIOS_FACTURA -- 
insert into Kyukeisho.consola_factura (id_consola, id_factura)
values (01,"AZ0"),
	   (02,"AZ1"),
       (03,"AZ2"),
       (04,"AZ3"),
       (05,"AZ4"),
       (06,"AZ5"),
       (07,"AZ6"),
       (08,"AZ7"),
       (08,"AZ8"),
       (05,"AZ9"),
       (01,"AE0"),
       (02,"AE1"),
       (03,"AE2"),
       (04,"AE3"),
       (05,"AE4"),
       (06,"AE5"),
       (07,"AE6"),
       (08,"AE7"),
       (07,"AE8"),
       (05,"AE9"),
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
        