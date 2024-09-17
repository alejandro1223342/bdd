--crear tablas postgresql

DROP TABLE IF EXISTS estudiantes;
create table estudiantes(
	cedula char(10) NOT NULL,
	nombre varchar(50) NOT NULL,
	apellido varchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	fecha_nacimiento date NOT NULL,
	CONSTRAINT estudiantes_pk PRIMARY KEY(cedula)

);