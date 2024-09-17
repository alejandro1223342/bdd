SELECT * FROM transacciones where tipo='D';


SELECT * FROM transacciones where monto between '200' and '2000';

SELECT codigo,monto,tipo,fecha FROM transacciones where fecha IS NOT NULL;


