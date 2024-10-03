CREATE TABLE usuario (
    cedula char(5) PRIMARY KEY,
    nombre VARCHAR(25) NOT NULL,
    apellido VARCHAR(25) NOT NULL,
    tipo_cuenta VARCHAR(20),
    limite_credito DECIMAL(10,5)
);

CREATE TABLE ventas (
    id_venta int PRIMARY KEY,
    codigo_producto int NOT NULL,
    fecha_venta DATE NOT NULL,
    cantidad int
);

CREATE TABLE plataformas (
    id_plataforma int PRIMARY KEY,
    nombre_plataforma varchar(50) NOT NULL,
    codigo_videojuego int
);

CREATE TABLE empleado (
    codigo_empleado int not null PRIMARY KEY,
    nombre varchar(25) NOT NULL,
    fecha date not null,
	hora time not null
);


CREATE TABLE banco (
    codigo_banco int PRIMARY KEY,
    codigo_transaccion int,
    detalle varchar(100)
);


CREATE TABLE persona (
    cedula char(10) not null PRIMARY KEY,
    nombre varchar(50),
	apellido varchar(50),
	estatura decimal(10,2),
    fecha_nacimiento date,
	hora_nacimiento time,
	cantidad_ahorrada money,
	numero_hijos int

);

CREATE TABLE prestamo (
    cedula char(10) ,
    monto varchar(50),
    fecha_prestamo date,
	hora_prestamo time,
	garante varchar(40)
);

CREATE TABLE compras (
    id_compra int,
    cedula char(10) not null,
    fecha_compra date not null,
	monto decimal(10,2)
);


CREATE TABLE profresores (
    codigo int primary key,
    nombre varchar(50) not null
);


ALTER TABLE cuentas
ADD CONSTRAINT usuario_cuentas_fk FOREIGN KEY (cedula_propietario)
REFERENCES usuario (cedula);

ALTER TABLE ventas
ADD CONSTRAINT productos_ventas_fk FOREIGN KEY (codigo_producto)
REFERENCES productos(codigo);

ALTER TABLE plataformas
ADD CONSTRAINT videojuegos_plataformas_fk FOREIGN KEY (codigo_videojuego)
REFERENCES videojuegos(codigo);

ALTER TABLE registros_entrada
ADD CONSTRAINT registros_entrada_empleado_fk FOREIGN KEY (codigo_registro)
REFERENCES empleado(codigo_empleado);

ALTER TABLE banco
ADD CONSTRAINT transacciones_banco_fk FOREIGN KEY (codigo_banco)
REFERENCES transacciones(codigo);

ALTER TABLE prestamo
ADD CONSTRAINT persona_prestamo_fk FOREIGN KEY (cedula)
REFERENCES persona(cedula);


ALTER TABLE compras
ADD CONSTRAINT clientes_compras_fk FOREIGN KEY (cedula)
REFERENCES cliente(cedula);

alter table estudiantes add column codigo_profesor int

ALTER TABLE estudiantes
ADD CONSTRAINT profesores_estudaintes_fk FOREIGN KEY (codigo_profesor)
REFERENCES profresores(codigo);


select * from cuentas
select * from usuario
select * from productos
select * from videojuegos
select * from registros_entrada
select * from empleado
select * from transacciones
select * from cliente
select * from estudiantes
select * from profesores

delete from videojuegos
delete from registros_entrada