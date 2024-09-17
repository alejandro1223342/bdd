--crear tablas postgresql

DROP TABLE IF EXISTS cliente;
create table cliente(
	cedula char(10) NOT NULL,
	nombre varchar(50) NOT NULL,
	apellido varchar(50) NOT NULL,
	edad int,
	CONSTRAINT cliente_pk PRIMARY KEY(cedula)

);