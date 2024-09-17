--crear tablas postgresql

DROP TABLE IF EXISTS registros_entrada;
create table registros_entrada(
	codigo_registro int NOT NULL,
	cedula_empleado char(10) NOT NULL,
	fecha date NOT NULL,
	hora time NOT NULL,
	CONSTRAINT registros_entrada_pk PRIMARY KEY(codigo_registro)

);