create database ejercicio;
use ejercicio;

create table ejercicio.persona(
documento_persona int (10) not null,
primer_nombre_persona varchar (30) not null,
segundo_nombre_persona varchar (30),
primer_apellido_persona varchar (30) not null,
segundo_apellido_persona varchar (30),
codigo_ciudad int (10) not null,
primary key (documento_persona)
);

create table ejercicio.ciudad(
codigo_ciudad int (10) auto_increment not null,
nombre_ciudad varchar (50) not null unique,
primary key (codigo_ciudad)
);

create table ejercicio.auditoria(
id_auditoria int (10) auto_increment not null,
empleado varchar (30) not null,
fecha datetime not null,
intervencion varchar (50) not null,
accion varchar (30) not null,
resumen varchar (50) not null,
primary key (id_auditoria)
);



alter table ejercicio.persona add constraint fk_codigo_ciudad foreign key (codigo_ciudad) references ejercicio.ciudad(codigo_ciudad) on update cascade on delete cascade;


insert into ejercicio.ciudad(codigo_ciudad, nombre_ciudad)
values 						(1, "Bogotá");

insert into ejercicio.persona()
values 		(1001457897, "Juan", NULL, concat("Gonzales ","perez"), NULL, 1);


select * from persona;
