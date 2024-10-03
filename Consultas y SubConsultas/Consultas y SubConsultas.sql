select numero_cuenta,nombre from cuentas where 
saldo between '100' and '1000'

select *
from usuario,cuentas where 
usuario.cedula = cuentas.cedula_propietario
and cuentas.fecha_creacion between
'2022-09-21' and '2023-05-15'


select nombre,apellido
from cliente where cedula like '%7%'

select * from cliente,compras 
where cliente.cedula = compras.cedula
and cliente.cedula = 
(SELECT cedula FROM cliente WHERE nombre = 'Mónica');

select * from profresores,estudiantes 
where profresores.codigo = estudiantes.codigo_profesor 
and (estudiantes.nombre like '%n%') 
and (estudiantes.apellido like '%n%')

select * from profresores,estudiantes 
where profresores.codigo = estudiantes.codigo_profesor 
and profresores.codigo = 
(Select codigo from profresores where nombre='Francisco')

select cantidad_ahorrada,monto,garante
from prestamo,persona 
where prestamo.cedula=persona.cedula and 
monto between '100' and '1000'

select *
from prestamo,persona 
where prestamo.cedula=persona.cedula 
and persona.cedula = 
(Select cedula from persona where nombre='Sean')

select nombre,stock,cantidad from productos,ventas 
where  productos.codigo = ventas.codigo_producto
and productos.nombre like '%M%' 
or productos.descripcion = 0;


select nombre,stock from productos,ventas 
where  productos.codigo = ventas.codigo_producto
and ventas.codigo_producto = 
(Select cantidad from ventas where cantidad=5);

select * from transacciones,banco
where transacciones.codigo = banco.codigo_transaccion
and transacciones.tipo = 'C' 
and numero_cuenta between '22001' and '22004'

select * from transacciones,banco
where transacciones.codigo = banco.codigo_transaccion
and banco.codigo_transaccion =
(Select codigo_transaccion from banco where codigo_banco=1)


select nombre,descripcion,valoracion,nombre_plataforma
from videojuegos,plataformas
where videojuegos.codigo = plataformas.codigo_videojuego
and descripcion like '%guerra%' and valoracion > 7 or
nombre like 'C%' and valoracion > 8 and nombre like 'D%'

select * from videojuegos,plataformas 
where videojuegos.codigo = plataformas.codigo_videojuego
and codigo_videojuego = 
(SELECT codigo FROM videojuegos WHERE nombre = 'God of War');

SELECT cedula_empleado,fecha,nombre
FROM registros_entrada, empleado
WHERE registros_entrada.codigo_registro = empleado.codigo_empleado
AND (
    (registros_entrada.fecha BETWEEN '2023-10-06' AND '2023-10-20')
    OR (registros_entrada.cedula_empleado LIKE '17%' AND registros_entrada.hora BETWEEN '08:00' AND '12:00')
    OR (registros_entrada.fecha BETWEEN '2023-10-06' AND '2023-10-20'
        AND registros_entrada.cedula_empleado LIKE '08%'
        AND registros_entrada.hora BETWEEN '09:00' AND '13:00')
);

SELECT *
FROM empleado
WHERE codigo_empleado = (
    SELECT codigo_registro
    FROM registros_entrada
    WHERE cedula_empleado = '2201'
);
