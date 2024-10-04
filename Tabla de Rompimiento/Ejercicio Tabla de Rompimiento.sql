create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	stock int not null,
	constraint productos_pk primary key(codigo)
)

create table proveedores(
	codigo int not null,
	nombre varchar(50) not null,
	telefono char(10) not null,
	constraint proovedores_pk primary key(codigo)
)

create table productos_proveedor(
	pp_codigo_producto int not null,
	pp_codigo_prooverdor int not null,
	pp_precio money not null,
	constraint producto_fk foreign key(pp_codigo_producto)
	references productos(codigo),
	constraint proveedores_fk foreign key(pp_codigo_prooverdor)
	references proveedores(codigo),
	constraint productos_proveedor_pk primary key(pp_codigo_producto,pp_codigo_prooverdor)
)

insert into productos(codigo,nombre,stock)
values (100,'Doritos',100),
(200,'Kchitos',200),
(300,'Papas',300),
(400,'Takis',0)


insert into proveedores(codigo,nombre,telefono)
values (1,'Snakcs SA','0989650479'),
(2,'DistriSnacks','0998625563')

insert into productos_proveedor(pp_codigo_producto,pp_codigo_prooverdor,pp_precio)
values (300,1,0.48)

insert into productos_proveedor(pp_codigo_producto,pp_codigo_prooverdor,pp_precio)
values (300,2,0.49),
(100,1,0.5),
(200,1,0.51),
(400,2,0.50)



select * from productos_proveedor


