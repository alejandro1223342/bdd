--INSERTS CON TODOS LOS CAMPOS 

INSERT INTO videojuegos(
	codigo, nombre, descripcion, valoracion)
	VALUES (1, 'GOD OF WAR', 'DIOSES', 10);

INSERT INTO videojuegos(
	codigo, nombre, descripcion, valoracion)
	VALUES (2, 'CALL OF DUTY', 'GUERRA', 9);

	INSERT INTO videojuegos(
	codigo, nombre, descripcion, valoracion)
	VALUES (3, 'RESIDENT EVIL', 'ZOMBIES', 10);

	INSERT INTO videojuegos(
	codigo, nombre, descripcion, valoracion)
	VALUES (4, 'ALICE MADNESS RETURNS', 'TERROR', 8);

	INSERT INTO videojuegos(
	codigo, nombre, descripcion, valoracion)
	VALUES (5, 'SILENT HILL 2', 'TERROR', '10');

--INSERTS SOLO CON LOS CAMPOS OBLIGATORIOS

INSERT INTO videojuegos(
	codigo, nombre, valoracion)
	VALUES (6, 'RATCHER AND CLANCK', '10');

INSERT INTO videojuegos(
	codigo, nombre, valoracion)
	VALUES (7, 'MARIO PAPER', '5');

	INSERT INTO videojuegos(
	codigo, nombre, valoracion)
	VALUES (8, 'MARIO KART', '10');
select * from videojuegos