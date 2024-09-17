--PRODUCTOS
DELETE FROM productos
	WHERE descripcion is null;

DELETE FROM cuentas 
where cedula_propietario like '10%';

DELETE FROM estudiantes
where cedula like '%05'

DELETE FROM registros_entrada
where EXTRACT(MONTH FROM fecha)=6

DELETE FROM videojuegos
where valoracion <7

DELETE FROM transacciones
where hora between '14:00:00' AND '18:00:00' 
AND EXTRACT(MONTH FROM fecha)=8 
AND EXTRACT(YEAR FROM fecha) = 2024;

