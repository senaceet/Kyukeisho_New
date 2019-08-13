use Kyukeisho;

-- USUARIO --
insert into Kyukeisho.usuario (id_usuario, primer_nombre_usuario, segundo_nombre_usuario, primer_apellido_usuario, segundo_apellido_usuario, correo_usuario, telefono_usuario, direccion)
values 		("AA0", "Juan", "Alberto", "Lopez", "Obregon", "juanal@gmail.com", 3115698975, "Kra 4 N°45 R Sur"),
			("AA1", "Marcos", "Mateo", "Lopez", "Rodríguez", "marcos@gmail.com", 3205898965, "Kra 4 N°35 z Sur"),
            ("AA2", "Daniel", "Alberto", "Gómez", "Gonzáles", "daniel@gmail.com", 3505623648, "Cll 10 N°65 R Sur"),
            ("AA3", "Juan", "Pablo", "Martínez", "Sánchez", "juanpa@gmail.com", 3005368754, "Carrera 3 # 18- 49"),
            ("AA4", "Álvaro", "Hakim", "Castro", "", "alvaro@gmail.com", 3017696370, "Carrera 7 # 84- 102"),
            ("AA5", "Adrían", "Asher", "Ruiz", "Ortiz", "adrian@gmail.com", 3214578915, "Calle 4 No. 5 – 100"),
            ("AA6", "Henry", "David", "Suárez", "Romero", "henry@gmail.com", 3120008975, "Calle 11 No. 4 - 14"),
            ("AA7", "Diego", "Fernando", "Herrera", "Valencia", "diego@gmail.com", 1056897485, "Calle 24 N° 5-60"),
            ("AA8", "Jude", "Javier", "Quintero", "Restrepo", "jude@gmail.com", 3000108975, "Av. Ciudad de Cali No. 6C-09"),
            ("AA9", "Ángel", "Gabriel", "Giraldo", "Morales", "angel@gmail.com", 3115690000, "Calle 48b sur No. 21-13"),
            ("AB0", "Thiago", "Valentín", "García", "Oliver	", "thiago@gmail.com", 3031230000, "Avenida Kra 60 No. 57-60"),
		    ("AB1", "Julián", "Dante", "Jake", "", "julian@gmail.com", 3037896400, "Calle 11 No. 4-21 / 93"),
			("AB2", "Julián", "", "Jake", "", "julianja@gmail.com", 3037896400, "Calle 11 No. 4-21 / 93"),
            ("AB3", "Andrea", "", "Noah	", "", "andrea@gmail.com", 3093646414, "Calle 10 No. 5-22"),
            ("AB4", "Sophia", "", "Connor", "", "sophia@gmail.com", 3124587986, "Carrera 20 No. 37-54"),
            ("AB5", "Emma", "", "Harry", "", "emma@gmail.com", 3201234578, "Av. Calle 19 N° 2-49 Centro"),
            ("AB6", "Isabella", "", "Mason", "", "isabella@gmail.com", 3126548795, "Calle 109a N° 17-10 Sede Norte"),
            ("AB7", "Olivia", "", "Charlie", "", "olivia@gmail.com", 3002345600, "Cr.8a # 15-63"),
            ("AB8", "Martina", "", "Margaret", "", "martina@gmail.com", 3045687120, "Cr.9 # 74-99"),
            ("AB9", "Giorgia", "", "Michelle", "", "giorgia@gmail.com", 3506584578, "Carrera 1 Este No. 17 01"),
            ("AC0", "Charlotte", "", "Murphy", "", "charlotte@gmail.com", 3205681234, "Cr.6 # 17-12"),
            ("AC1", "Zeynep", "", "O'Connor", "", "zeynep@gmail.com", 3037890101, "Carrera 7 Calle 26");
		
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
values 		(0001, '2019-10-01 04:29:00', "AA0"),
			(0002, '2018-12-03 05:45:00', "AA1"),
            (0003, '2016-11-05 01:32:00', "AA2"),
            (0004, '2017-09-07 02:13:00', "AA3"),
            (0005, '2017-10-08 03:45:00', "AA4"),
            (0006, '2017-05-09 05:45:00', "AA5"),
            (0007, '2018-10-10 06:15:00', "AA6"),
            (0008, '2019-01-12 07:23:00', "AA7"),
            (0009, '2018-10-12 08:32:00', "AA8"),
            (0010, '2019-10-11 09:45:00', "AA9"),
            (0011, '2018-04-14 12:12:00', "AB0"),
            (0012, '2019-10-15 11:45:00', "AB1"),
            (0013, '2018-05-16 10:45:00', "AB2"),
            (0014, '2017-06-17 03:45:00', "AB3"),
            (0015, '2018-10-18 05:45:00', "AB4"),
            (0016, '2019-07-19 07:45:00', "AB5"),
            (0017, '2019-08-20 10:45:00', "AB6"),
            (0018, '2017-09-22 03:45:00', "AB7"),
            (0019, '2018-11-21 18:45:00', "AB8"),
            (0020, '2019-12-23 03:54:00', "AB9"),
            (0021, '2019-01-14 09:00:00', "AC0"),
            (0022, '2019-02-23 03:45:00', "AC1");

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
-- ADMINISTRADOR --
insert into Kyukeisho.administrador (id_administrador, primer_nombre_administrador, segundo_nombre_administrador, primer_apellido_administrador, segundo_apellido_administrador, correo_administrador, telefono_administrador)
values  ("AAA1", "Adagny", "Benno", "Fave", "Ferrec", "adagny@gmail.com", 3002356897),
		("AAA2", "Dafnée", "Denise", "Rossi", "Bianchi", "dafnee@gmail.com", 3052138795);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
            
-- TIPO_PRODUCTO --
insert into Kyukeisho.tipo_producto (id_tipo_producto, nombre_tipo_producto)
values 	(12340, "Comestibles"),
		(12341, "Videojuegos"),
		(12342, "Golosinas"),
        (12343, "Productos Tecnologicos"),
        (12344, "Bebidas"),
        (12345, "Utiles Escolares");

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
            
-- FACTURA --
insert into Kyukeisho.factura (id_factura, hora_entrada, hora_compra, precio_total)
values	("AZ0", '2019-10-01 04:29:00', '2019-10-01 05:29:00', 10000),
		("AZ1", '2018-11-01 03:29:00', '2018-11-01 04:00:00', 10000),
		("AZ2", '2019-11-09 04:29:00', '2019-11-09 06:29:00', 10000),
		("AZ3", '2019-02-01 04:29:00', '2019-02-01 05:29:00', 10000),
		("AZ4", '2019-03-02 05:29:00', '2019-03-02 06:29:00', 10000),
		("AZ5", '2019-04-03 06:29:00', '2019-04-03 07:29:00', 10000),
		("AZ6", '2019-02-04 07:29:00', '2019-02-04 08:29:00', 10000),
		("AZ7", '2019-05-05 08:29:00', '2019-05-05 08:45:00', 10000),
		("AZ8", '2019-06-06 01:29:00', '2019-06-06 02:29:00', 10000),
		("AZ9", '2019-07-07 04:29:00', '2019-07-07 06:29:00', 10000),
		("AE0", '2019-02-08 04:29:00', '2019-02-08 07:29:00', 10000),
		("AE1", '2019-01-01 03:29:00', '2019-01-01 04:29:00', 10000),
		("AE2", '2019-02-01 02:29:00', '2019-02-01 04:29:00', 10000),
		("AE3", '2019-03-01 01:29:00', '2019-03-01 04:29:00', 10000),
		("AE4", '2019-04-01 12:29:00', '2019-04-01 04:29:00', 10000),
		("AE5", '2019-05-01 10:29:00', '2019-05-01 04:29:00', 10000),
		("AE6", '2019-06-01 03:29:00', '2019-06-01 04:29:00', 10000),
		("AE7", '2019-07-01 02:29:00', '2019-07-01 04:29:00', 10000),
		("AE8", '2019-08-01 01:29:00', '2019-08-01 04:29:00', 10000),
		("AE9", '2019-09-01 12:29:00', '2019-09-01 04:29:00', 10000),
		("AX0", '2019-10-01 04:29:00', '2019-10-01 05:29:00', 10000);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        
-- JUEGOS --        
insert into Kyukeisho.juegos (codigo_juego, nombre_juego, id_usuario)
values  
		-- Pc --
        ("A1", "Euro Truck Simulator 2", "AA0"),
		("A2", "American Truck Simulator 2", "AA5"),
		("A3", "Pes 2019", "AA1"),
		("A4", "Assassin’s Creed Odyssey Gold Edition", "AB5"),
		("A5", "Grand Theft Auto V", "AA2"),
        
	-- PS4 --
		("B1","Call of Duty 4: Modern Warfare","AA0"),
		("B2","God of War","AB1"),
		("B3","Battlefield 4","AB2"),
		("B4","Spider-Man","AB2"),	
		("B5","FIFA 19","AB2"),
        
	-- Xbox 360 --
		("C1","Resident Evil 4","AA0"),
		("C2","NBA2K18","AA1"),
		("C3","Rise of the Tomb Raider","AA3"),
		("C4", "WWE 2K17", "AC0"),
		("C5", "Call Of Duty Black Ops III", "AC1"),
        
	-- Xbox One --
		("D1", "Minecraft", "AB6"),
		("D2", "Fortnite", "AB3"),
		("D3", "Roblox", "AA3"),
		("D4", "The Elder Scrolls Online", "AB8"),
		("D5", "Anthem", "AC1"),
        
	-- Nintendo --
		("E1", "The Legend of Zelda", "AA2"),
		("E2", "Mario Kart 8 Deluxe", "AA4"),
		("E3", "Mario Bros", "AA6"),
		("E4", "Kirby", "AB7"),
		("E5", "Splatoon 2", "AB6"),
        
	-- Wii-
		("F1", "Wall e", "AA7"),
		("F2", "Just Dance 17", "AA8"),
		("F3", "Fatal Frame 4", "AB7"),
		("F4", "The Voice", "AB9"),
		("F5", "Wii Fit U", "AC1");

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
values (1, "Cheetos", 1, 1200, 12340),
	   (2, "Bom Bom Bum", 1, 250, 12342),
       (3, "Ponque Ramo", 1, 3500, 12340),
       (4, "Tricopollos", 1, 800, 12340),
       (5, "Chocorramo", 1, 1200, 12340),
       (6, "PS4 - Infinite Warfare Legacy Edition", 1, 59900, 12341),
       (7, "Xbox OnE - Crash Bandicoot N. Sane Trigoly", 1, 169900, 12341),
       (8, "PS4 - FIFA 20 Edition Deluxe", 1, 319000, 12341),
       (9, "Xbox 360 - PES 2017", 1, 30000, 12341),
       (10, "Wii - Pack Juegos Digitales", 1, 49990, 12341),
       (11, "Audífonos Spirit", 1, 49990, 12343),
       (12, "Cargador Bateria Power Bank 4000 mAh Blanco", 1, 9990, 12343),
       (13, "Gaseosa Coca Cola sin azúcar x 2 und", 1, 8990, 12344),
       (14, "Agua Cristal x 24 und", 1, 9990, 12344),
       (15, "Bebida Gasificada Limonada", 1, 2790, 12344),
       (16, "Jugo Hit x 12 und", 1, 9190, 12344),
       (17, "Pony Malta Sixpack", 1, 5590, 12344),
       (18, "Resaltadores x 20 und", 1, 3337, 12345),
       (19, "Portafolio Pokémon", 1, 44991, 12345),
       (20, "Xtime", 1, 200, 12342);

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
values	("AA0","AZ0"),
		("AA1","AZ1"),
		("AA2","AZ2"),
		("AA3","AZ3"),
		("AA4","AZ4"),
		("AA5","AZ5"),
		("AA6","AZ6"),
		("AA7","AZ7"),
		("AA8","AZ8"),
		("AA9","AZ9"),
		("AB0","AE0"),
		("AB1","AE1"),
		("AB2","AE2"),
		("AB3","AE3"),
		("AB5","AE4"),
		("AB6","AE5"),
		("AB7","AE6"),
		("AB8","AE7"),
		("AB9","AE8"),
		("AC0","AE9"),
		("AC1","AX0");
  
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  

-- FACTURA_VENTA --
insert into Kyukeisho.factura_venta(id_administrador, id_factura)
values	("AAA1", "AZ0"),
		("AAA2", "AZ1"),
		("AAA2", "AZ2"),
		("AAA1", "AZ3"),
		("AAA2", "AZ4"),
		("AAA1", "AZ5"),
		("AAA2", "AZ6"),
		("AAA2", "AZ7"),
		("AAA1", "AZ8"),
		("AAA2", "AZ9"),
		("AAA2", "AE0"),
		("AAA1", "AE1"),
		("AAA2", "AE2"),
		("AAA2", "AE3"),
		("AAA2", "AE4"),
		("AAA1", "AE5"),
		("AAA2", "AE6"),
		("AAA1", "AE7"),
		("AAA2", "AE8"),
		("AAA1", "AE9");
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    
-- USUARIO_SERVICIOS --
insert into Kyukeisho.usuario_servicios (id_usuario, id_servicio)
values	("AA0", 01),
		("AA1", 02),
		("AA2", 03),
		("AA3", 04),
		("AA4", 05),
		("AA5", 06),
		("AA6", 07),
		("AA7", 08),
		("AA8", 09),
		("AA9", 10),
		("AB0", 01),
		("AB1", 02),
		("AB2", 03),
		("AB3", 04),
		("AB4", 05),
		("AB5", 06),
		("AB6", 07),
		("AB7", 08),
		("AB8", 09),
		("AB9", 10),
		("AC0", 01),
		("AC1", 02);