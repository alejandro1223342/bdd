--crear tablas postgresql

DROP TABLE IF EXISTS transacciones;
create table transacciones(
	codigo int NOT NULL,
	numero_cuenta char(5) NOT NULL,
	monto money,
	tipo char(1) NOT NULL,
	fecha date NOT NULL,
	hora time NOT NULL,
	CONSTRAINT transacciones_pk PRIMARY KEY(codigo)

);