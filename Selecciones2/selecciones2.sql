--PRODUCTOS
SELECT * FROM productos 
where stock=10 and precio < '10' ;

select nombre,stock from productos where nombre like 'm%' or descripcion is null;

select nombre from productos where descripcion is null or stock=0;

--CUENTAS

select numero_cuenta,saldo from cuentas where saldo > '100' and saldo < '1000';

select * 
from cuentas 
where fecha_creacion between NOW() - INTERVAL '1 year' and NOW();

select * from cuentas where saldo='0' or cedula_propietario like '%2';

--ESTUDIANTES

select nombre,apellido from estudiantes where nombre like 'M%' or apellido like '%z'

--La instruccion del pdf en esta parte no es clara asi que voy a poner que busque un 32 en cualquier parte de la cedula y empiece con 18
select * from estudiantes where cedula like '%32%' and cedula like '18%'

select nombre,apellido from estudiantes where cedula like '%06' or cedula like '17%'

--REGISTROS ENTRADAS

select nombre from registros_entrada where EXTRACT(MONTH from fecha)=9 and  cedula_empleado like '17%'

select * from registros_entrada where EXTRACT(MONTH from fecha)=8 and  cedula_empleado like '17%' 
and hora between '08:00:00' and '12:00:00' 

select * from registros_entrada where (EXTRACT(MONTH from fecha)=8 and cedula_empleado like '17%' 
and hora between '08:00:00' and '12:00:00') or (EXTRACT(MONTH from fecha)= 9 and cedula_empleado like '08%' 
and hora between '09:00:00' and '13:00:00')

--VIDEOJUEGOS

select * from videojuegos where nombre like '%C%' or valoracion = 7

select * from videojuegos where codigo between '3' and '7' or valoracion = 7

select * from videojuegos where valoracion >7 and nombre like 'C%' or valoracion >8 and nombre like 'D%'

--TRANSACCIONES

select * from transacciones where tipo= 'C' and  numero_cuenta between '222001' and '22004'

select * from transacciones where tipo='D'  
and EXTRACT(MONTH FROM fecha) = 8 
and EXTRACT(DAY FROM fecha) = 25 and numero_cuenta between '22007' and '22010'

select * from transacciones where 
codigo between '1' and '5' 
AND (numero_cuenta = '22002' OR numero_cuenta = '22004')
and EXTRACT(MONTH FROM fecha) = 5
and EXTRACT(DAY FROM fecha) = 26 or EXTRACT(DAY FROM fecha) = 29



