--PRODUCTOS

UPDATE productos
	SET  stock=0
	WHERE descripcion is null;

--CUENTAS
update cuentas
 	set saldo=10
	 where cedula_propietario like '17%'

--ESTUDIANTES
update estudiantes
 	set apellido='Hernandez'
	 where cedula like '17%'

--REGISTRO ENTRADAS
update registros_entrada
 	set cedula_empleado=082345679
	 --RECUPERAR LAS FECHAS DEL MES DE AGOSTO
	WHERE EXTRACT(MONTH FROM fecha) = 8;

--VIDEOJUEGOS
update videojuegos
 	set descripcion='MEJOR PUNTUADO'
	WHERE valoracion >9;

--TRANSACCIONES
update transacciones
 	set tipo='T'
	WHERE monto>'100' and monto<'500' and 
	EXTRACT(MONTH FROM fecha) = 9 
	and hora between '14:00:00' and '20:00:00';
