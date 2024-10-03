select avg(cast(cuentas.saldo as numeric)) as saldo_promedio
from usuario, cuentas
where usuario.cedula = cuentas.cedula_propietario
and cuentas.cedula_propietario = 'A1234';

select tipo_cuenta,count(numero_cuenta)as total_cuentas
from cuentas
group by tipo_cuenta

select cliente.cedula,sum(cast(compras.monto as numeric)) as monto_total_compras 
from cliente,compras where
cliente.cedula = compras.cedula
group by cliente.cedula

select fecha_compra,count(*) AS total_compras
from cliente, compras
where cliente.cedula = compras.cedula
and fecha_compra = '2024-09-15'
group by fecha_compra;

select codigo,count(estudiantes.codigo_profesor) as total_estudiantes 
from profresores,estudiantes
where profresores.codigo=estudiantes.codigo_profesor
group by profresores.codigo

select round(avg(extract(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM fecha_nacimiento))) AS edad_promedio
from estudiantes;

select prestamo.cedula,sum(cast(prestamo.monto as numeric))
from prestamo,persona where
prestamo.cedula=persona.cedula 
group by prestamo.cedula

select count(*) as total_personas_con_hijos
from persona
where numero_hijos > 1;

select max(precio) as precio_maximo
from productos;

select sum(cantidad) as total_cantidad_vendida
from ventas;


select count(*) as total_transacciones_credito
from transacciones
where tipo = 'C';

select
    numero_cuenta, 
    ROUND(avg(cast(monto as DECIMAL)), 2) as monto_promedio
from 
    transacciones
group by 
    numero_cuenta;

select 
    codigo_videojuego, 
    count(*) as total_plataformas
from 
    plataformas
group by 
    codigo_videojuego;


select round(avg(valoracion), 2) as promedio_valoracion
from videojuegos;

select empleado.codigo_empleado, count(registros_entrada.codigo_registro) AS total_registros
from empleado, registros_entrada
where empleado.codigo_empleado = registros_entrada.codigo_registro
group by empleado.codigo_empleado;


select min(fecha) as fecha_minima, max(fecha) as fecha_maxima
from registros_entrada;









select * from compras

alter table cuentas add column tipo_cuenta varchar(20)


