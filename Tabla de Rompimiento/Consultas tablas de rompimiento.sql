create table usuario(
	usu_id int not null,
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	fecha_nacimiento date,
	constraint usuario_pk primary key (usu_id)

)


create table grupo(
	grup_id int not null,
	nombre varchar(25) not null,
	descripcion varchar(75) not null,
	fecha_creacion date,
	constraint grupo_pk primary key (grup_id)

)

create table usuario_grupo(
	usugru_usu_id int not null,
	usugru_grup_id int not null,
	constraint usuario_fk foreign key(usugru_usu_id)
	references usuario(usu_id),
	constraint grupo_fk foreign key(usugru_grup_id)
	references grupo(grup_id),
	constraint usuario_grupo_pk primary key(usugru_usu_id,usugru_grup_id)
)


insert into usuario values 
(1,'Marilyn','Sagñay','05/11/2023'),
(2,'Romel','Chamba','06/11/2023'),							(3,'Mario','Guzñay','05/11/2023'),
(4,'Johann','Domo','07/11/2023'),
(5,'Monserrate','Vera','05/11/2023'),
(6,'Lucio','Vargas','05/11/2023'),
(7,'Martín','Arizaga','05/11/2023'),
(8,'Fricson','Erazo','05/11/2023'),
(9,'Jairo','Obando','05/11/2023'),
(10,'Berni','Tomalá','05/11/2023');

insert into grupo values 
(1,'Maternal 1','Grupo de maternal matutino','08/03/2020'),
(2,'Maternal 2','Grupo de maternal vepertino','08/03/2020'),
(3,'Maternal 3','Grupo de maternal nocturno','08/03/2020'),
(4,'Incial 1 ','Grupo de inicial matutino','15/03/2021'),
(5,'Incial 2','Grupo de  inicial vespertino','15/03/2021'),
(6,'Incial 3','Grupo de  inicial  nocturno','15/03/2021'),
(7,'Incial intensivo','Grupo de inicial días sabados','15/03/2021'),
(8,'Maternal intensivo 1','Grupo de maternal matutino días sabados','15/03/2022'),
(9,'Maternal intensivo 2','Grupo de maternal vespertino días sabados','15/03/2022'),
(10,'Maternal intensivo 3','Grupo de maternal nocturno días sabados','15/03/2022');

insert into usuario_grupo values 
(1,8),
(2,3),
(3,8),
(4,9),
(5,1),
(6,2),
(7,8),
(8,8),
(9,10),
(10,1);

select * from usuario_grupo



create table huespedes(
	hues_id int not null,
	nombres varchar(25) not null,
	apellidos varchar(25) not null,
	telefono char(10),
	correo varchar(45),
	direccion varchar(45),
	ciudad varchar(45),
	pais varchar(45),
	constraint huespedes_pk primary key (hues_id)

)


create table habitaciones(
	habitacion_numero int not null,
	precio_por_noche decimal not null,
	piso int not null,
	max_personas int,
	constraint habitaciones_pk primary key (habitacion_numero)
)

create table union_reservas(
	inicio_fecha date,
	fin_fecha date,
	habitacion_numero int not null,
	hues_id int not null,
	constraint habitaciones_fk foreign key(habitacion_numero)
	references habitaciones(habitacion_numero),
	constraint huespedes_fk foreign key(hues_id)
	references huespedes(hues_id),
	constraint union_reservas_pk primary key(habitacion_numero,hues_id)
)


insert into habitaciones values (1,40.0,4,4),
 								 (2,20.0,4,2),
								 (3,40.0,4,4),
								 (4,40.0,3,4),
								 (5,20.0,3,2),
								 (6,20.0,3,2),
								 (7,20.0,2,2),
								 (8,20.0,2,2),
								 (9,20.0,2,2),
								 (10,15.0,1,1),
								 (11,15.0,1,1),
								 (12,15.0,1,1);
								 

insert into huespedes values    (1,'Ricardo','Montero',0980658774,'Ricmontero@gmail.com'),
								(2,'Sofía','Martinez',09887563205,'Sofimar@gmail.com'),
								(3,'Yamilteh','Guami',0998763298,'YAMGUAM@gmail.com'),
								(4,'Esther','Contreras',0995783602,'Esthcontro@gmail.com'),
								(5,'Wiliam','Mantilla',09858796320,'wmANTILLA@gmail.com'),
								(6,'Carmen','Noguera',0995876321,'Cnoguera@gmail.com'),
								(7,'Anika','Jimenez',0978965432,'AniJimenez@gmail.com'),
								(8,'Belen','Orejuela',0996365748,'BOrejuela@gmail.com'),
								(9,'Diana','Monroy',0987963214,'DianaMroy@gmail.com'),
								(10,'Bryan','Moncada',0986325741,'BrMoncada@gmail.com');
												
								
insert into union_reservas values ('11/05/2023','12/05/2023',2,10),
						    ('11/05/2023','12/05/2023',2,9),
							('22/06/2023','23/06/2023',1,1),
							('22/06/2023','23/06/2023',1,2),
							('22/06/2023','23/06/2023',1,3),
							('22/06/2023','23/06/2023',1,4),
							('01/01/2023','02/01/2023',12,5),
							('11/08/2023','12/08/2023',11,6),
							('11/05/2023','12/05/2023',10,7),
							('11/05/2023','12/05/2023',9,8);

select * from union_reservas


create table ciudad(
	ciu_id int not null,
	nombre varchar(45) not null,
	constraint ciudad_pk primary key (ciu_id)
) 

create table municipio(
	mun_id int not null,
	nombre varchar(45) not null,
	ciu_id int not null,
	constraint municipio_pk primary key (mun_id),
	constraint ciudad_fk foreign key(ciu_id)
	references ciudad(ciu_id)
) 

create table proyecto(

	proy_id int not null,
	proyecto varchar(50) not null,
	monto money not null,
	fecha_inicio date,
	fecha_entrega date,
	CONSTRAINT proyecto_pk PRIMARY KEY (proy_id) 


)


create table proyecto_municipio (
	mun_id int not null,
	proy_id int not null,
	constraint municipio_fk foreign key (mun_id)
	references municipio(mun_id),
	constraint proyecto_fk foreign key (proy_id)
	references proyecto(proy_id),
	constraint proyecto_municipio_pk primary key (mun_id,proy_id)
)


insert into ciudad values   (1,'Quito'),
							(2,'Ambato'),
							(3,'Guayaquil'),
							(4,'Machala'),
							(5,'Manta'),
							(6,'Loja'),
							(7,'Otavalo'),
							(8,'Cuenca'),
							(9,'Latacunga'),
							(10,'Tena');


insert into municipio values (1,'GAD MUNICIPAL QUITO',1),
							 (2,'GAD MUNICIPAL DE CUENCA',8),
							 (3,'GAD MUNICIPALIDAD DE AMBATO',2),
							 (4,'MUNICIPALIDAD DE MACAHALA ',4),
							 (5,'MUNIUCIPIO DE GUAYAQUIL',3),
							 (6,'MUNICIPIO DE OTAVALO',7),
							 (7,'MUNICIPIO DE LOJA',6),
							 (8,'MUNICIPIO DE MANTA',5),
							 (9,'MUNICIPIO DE LATACUNGA',9),
							 (10,'MUNICIPIO DE TENA',10);


insert into proyecto values (1,'Proyectos de Gestión Ambiental',9543.327,'10/02/2022','10/02/2023'),
							(2,'Proyectos en Fomento y Desarrollo Productivo',26553.264,'25/06/2022','10/08/2022'),
							(3,'Proyectos en Cambio Climático',1292.194,'01/02/2021','10/12/2023');
							

insert into proyecto_municipio values
									  (3,3),
									  (1,2),
									  (2,1),
									  (1,3)



select usuario.nombre,grupo.nombre from usuario,grupo,usuario_grupo
where usuario.usu_id = usuario_grupo.usugru_usu_id 
and grupo.grup_id = usuario_grupo.usugru_grup_id

select usuario.nombre from usuario 
where usu_id in (select usugru_usu_id 
                 from usuario_grupo 
                 where usugru_grup_id = 1);

select count(usuario_grupo.usugru_usu_id) 
from grupo,usuario_grupo 
where grupo.grup_id = usuario_grupo.usugru_grup_id
group by grupo.nombre

select usuario.nombre,grupo.nombre 
from usuario,grupo,usuario_grupo
where usuario.usu_id = usuario_grupo.usugru_usu_id 
and grupo.grup_id = usuario_grupo.usugru_grup_id
and grupo.nombre like '%intensivo%'

select usuario.nombre from usuario 
where usu_id in (select usugru_usu_id 
                 from usuario_grupo 
                 where usugru_grup_id = 2);

select max(usuario_grupo.usugru_usu_id) 
from grupo,usuario_grupo 
where grupo.grup_id = usuario_grupo.usugru_grup_id
group by grupo.nombre


select usuario.nombre,grupo.fecha_creacion
from usuario,grupo,usuario_grupo
where usuario.usu_id = usuario_grupo.usugru_usu_id 
and grupo.grup_id = usuario_grupo.usugru_grup_id
and grupo.fecha_creacion between '2020-03-08'
and '2022-03-08'

select usuario.nombre from usuario 
where usu_id in (select usugru_usu_id 
                 from usuario_grupo 
                 where usugru_grup_id = 3);

select count(usuario_grupo.usugru_usu_id)
from grupo,usuario_grupo 
where grupo.grup_id = usuario_grupo.usugru_grup_id
and grupo.descripcion like '%matutino%'
group by grupo.nombre


select habitaciones.habitacion_numero,huespedes.nombres,
huespedes.apellidos from 
habitaciones,huespedes,union_reservas
where habitaciones.habitacion_numero = union_reservas.habitacion_numero 
and huespedes.hues_id=union_reservas.hues_id

select nombres,apellidos from huespedes 
where hues_id in
(select hues_id 
from union_reservas where habitacion_numero=2)

select count(union_reservas.hues_id) from habitaciones,union_reservas
where habitaciones.habitacion_numero = union_reservas.habitacion_numero
group by habitaciones.habitacion_numero

select habitaciones.habitacion_numero,
habitaciones.piso,huespedes.nombres,
huespedes.apellidos from 
habitaciones,huespedes,union_reservas
where habitaciones.habitacion_numero = union_reservas.habitacion_numero 
and huespedes.hues_id=union_reservas.hues_id and 
habitaciones.piso=4

select avg(union_reservas.hues_id) from habitaciones,union_reservas
where habitaciones.habitacion_numero = union_reservas.habitacion_numero
group by habitaciones.habitacion_numero

select habitaciones.habitacion_numero,huespedes.nombres,
huespedes.apellidos from 
habitaciones,huespedes,union_reservas
where habitaciones.habitacion_numero = union_reservas.habitacion_numero 
and huespedes.hues_id=union_reservas.hues_id

select * from huespedes where hues_id in 
(select hues_id from union_reservas where habitacion_numero=4)

select * from habitaciones

select * from proyecto

select habitaciones.habitacion_numero, sum(habitaciones.precio_por_noche) AS total_recaudado
from habitaciones, union_reservas
where habitaciones.habitacion_numero = union_reservas.habitacion_numero
group by habitaciones.habitacion_numero;

select municipio.nombre, proyecto.proyecto 
from municipio , proyecto_municipio , proyecto
where municipio.mun_id = proyecto_municipio.mun_id
and proyecto.proy_id = proyecto_municipio.proy_id;

select proyecto 
from proyecto
where proy_id IN (SELECT proy_id 
             FROM proyecto_municipio 
             WHERE mun_id = 1);

select municipio.nombre, count(proyecto_municipio.proy_id)
from municipio , proyecto_municipio 
where municipio.mun_id = proyecto_municipio.mun_id
group by municipio.nombre;

select municipio.nombre, proyecto.proyecto
from municipio, proyecto_municipio, proyecto
where municipio.mun_id = proyecto_municipio.mun_id
and proyecto.proy_id = proyecto_municipio.proy_id
and municipio.nombre like '%GAD%';

select municipio.nombre, min(proyecto_municipio.proy_id)
from municipio, proyecto_municipio
where municipio.mun_id = proyecto_municipio.mun_id
group by municipio.nombre

SELECT municipio.nombre, ciudad.nombre
FROM municipio, ciudad
WHERE municipio.ciu_id = ciudad.ciu_id;

select proyecto 
from proyecto
where proy_id in (select proy_id 
             from proyecto_municipio 
             where mun_id = 3);

select municipio.nombre, max(proyecto_municipio.proy_id)
from municipio, proyecto_municipio
where municipio.mun_id = proyecto_municipio.mun_id
group by municipio.nombre;



select * from municipio

select * from municipio




				 