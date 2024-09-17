
--INSERTS CON TODOS LOS CAMPOS 
INSERT INTO productos(
	codigo, nombre, descripcion, precio, stock)
	VALUES (10, 'COCA COLA', 'DELICIUS', 1.99, 10);

INSERT INTO productos(
	codigo, nombre, descripcion, precio, stock)
	VALUES (20, 'PEPSI', 'MALICIUS', 2.99, 15);

INSERT INTO productos(
	codigo, nombre, descripcion, precio, stock)
	VALUES (30, 'FANTA', 'PERFICIUS', 3.99, 20);

INSERT INTO productos(
	codigo, nombre, descripcion, precio, stock)
	VALUES (40, 'FIORA', 'PIFICIUS0', 4.99, 25);

INSERT INTO productos(
	codigo, nombre, descripcion, precio, stock)
	VALUES (50, 'SPRITE', 'FRESCA', 5.99, 30);


INSERT INTO productos(
	codigo, nombre, descripcion, precio, stock)
	VALUES (50, 'SPRITE', 'FRESCA', 5.99, 30);

--INSERTS SOLO CON LOS CAMPOS OBLIGATORIOS

INSERT INTO productos(
	codigo, nombre, precio, stock)
	VALUES (60, 'KINDER SORPRESA', 5.99, 30);

INSERT INTO productos(
	codigo, nombre, precio, stock)
	VALUES (70, 'JET', 5.99, 30);

INSERT INTO productos(
	codigo, nombre, precio, stock)
	VALUES (80, 'JUMBO', 5.99, 30);


	SELECT * FROM productos