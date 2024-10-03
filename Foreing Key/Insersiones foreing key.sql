INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) VALUES 
('A1234', 'Juan', 'Pérez', 'Oro', 5000.00000),
('B2345', 'Ana', 'García', 'Plata', 3000.00000),
('C3456', 'Luis', 'Martínez', 'Bronce', 1500.00000),
('D4567', 'María', 'Rodríguez', 'Oro', 7000.00000),
('E5678', 'Carlos', 'López', 'Plata', 2500.00000),
('F6789', 'Laura', 'Hernández', 'Bronce', 1200.00000),
('G7890', 'José', 'González', 'Oro', 6000.00000),
('H8901', 'Sofía', 'Sánchez', 'Plata', 3500.00000),
('I9012', 'Miguel', 'Ramírez', 'Bronce', 1700.00000),
('J0123', 'Elena', 'Torres', 'Oro', 8000.00000);


INSERT INTO cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo) VALUES
('12345', 'A1234', '2024-10-03', 100.00),
('23456', 'B2345', '2024-09-15', 500.00),
('34567', 'C3456', '2024-08-10', 300.00),
('45678', 'D4567', '2024-07-01', 1000.00),
('56789', 'E5678', '2024-09-05', 200.00),
('67890', 'F6789', '2024-06-20', 150.00),
('78901', 'G7890', '2024-05-30', 750.00),
('89012', 'H8901', '2024-08-25', 400.00),
('90123', 'I9012', '2024-09-18', 600.00),
('01234', 'J0123', '2024-10-01', 1200.00);

INSERT INTO cliente (cedula, nombre, apellido, edad) VALUES
('A1001', 'Carlos', 'Ruiz', 30),
('B1002', 'Lucía', 'Moreno', 25),
('C1003', 'Pedro', 'Castro', 40),
('D1004', 'Sofía', 'Vargas', 35),
('E1005', 'Miguel', 'Fernández', 28),
('F1006', 'Ana', 'Ríos', 22),
('G1007', 'Jorge', 'López', 45),
('H1008', 'Isabel', 'Mendoza', 32),
('I1009', 'Alberto', 'Salazar', 38),
('J1010', 'María', 'Gómez', 29);


INSERT INTO compras (id_compra, cedula, fecha_compra, monto) VALUES
(1, 'A1001', '2024-10-01', 150.00),
(2, 'B1002', '2024-09-28', 200.50),
(3, 'C1003', '2024-09-25', 75.99),
(4, 'D1004', '2024-09-30', 120.00),
(5, 'E1005', '2024-09-20', 300.00),
(6, 'F1006', '2024-09-18', 45.00),
(7, 'G1007', '2024-09-15', 500.25),
(8, 'H1008', '2024-09-10', 95.75),
(9, 'I1009', '2024-09-05', 220.00),
(10, 'J1010', '2024-10-02', 400.00);

INSERT INTO productos (codigo, nombre, descripcion, precio, stock) VALUES
('1', 'Pan Integral', 'Pan hecho con harina integral', 1.50, 100),
('2', 'Leche Deslactosada', 'Leche sin lactosa', 1.20, 50),
('3', 'Cereal', 'Cereal de trigo y avena', 2.75, 200),
('4', 'Café Molido', 'Café 100% arábica', 3.00, 80),
('5', 'Jugo de Naranja', 'Jugo natural de naranja', 1.00, 60),
('6', 'Mantequilla', 'Mantequilla sin sal', 1.80, 40),
('7', 'Arroz', 'Arroz de grano largo', 0.90, 500),
('8', 'Azúcar', 'Azúcar refinada', 0.75, 300),
('9', 'Aceite de Oliva', 'Aceite de oliva virgen extra', 5.50, 30),
('10', 'Harina', 'Harina de trigo', 1.25, 120);

INSERT INTO ventas (id_venta, codigo_producto, fecha_venta, cantidad) VALUES
(1, '1', '2024-10-01', 10),
(2, '2', '2024-09-28', 5),
(3, '3', '2024-09-27', 20),
(4, '4', '2024-09-25', 7),
(5, '5', '2024-09-20', 15),
(6, '6', '2024-09-18', 4),
(7, '7', '2024-09-15', 50),
(8, '8', '2024-09-12', 30),
(9, '9', '2024-09-10', 2),
(10, '10', '2024-10-02', 25);


INSERT INTO videojuegos (codigo, nombre, descripcion, valoracion) VALUES
(1, 'The Legend of Zelda', 'Juego de aventuras y exploración', 95),
(2, 'Super Mario Odyssey', 'Juego de plataformas en 3D', 90),
(3, 'God of War', 'Juego de acción y mitología nórdica', 93),
(4, 'Red Dead Redemption 2', 'Juego de acción y mundo abierto en el oeste', 96),
(5, 'The Witcher 3', 'Juego de rol y mundo abierto', 92),
(6, 'Cyberpunk 2077', 'Juego de rol y ciencia ficción', 85),
(7, 'Fortnite', 'Juego de batalla campal y construcción', 80),
(8, 'Minecraft', 'Juego de construcción y exploración', 88),
(9, 'Hades', 'Juego de acción y exploración de mazmorras', 94),
(10, 'Genshin Impact', 'Juego de rol y acción con mundo abierto', 89);


INSERT INTO plataformas (id_plataforma, nombre_plataforma, codigo_videojuego) VALUES
(1, 'Nintendo Switch', 1),
(2, 'Nintendo Switch', 2),
(3, 'PlayStation 4', 3),
(4, 'PlayStation 4', 4),
(5, 'PC', 5),
(6, 'PC', 6),
(7, 'PlayStation 4', 7),
(8, 'PC', 8),
(9, 'PC', 9),
(10, 'PlayStation 4', 10);

INSERT INTO empleado (codigo_empleado, nombre, fecha, hora) VALUES
(1, 'Carlos Ruiz', '2024-10-01', '08:00'),
(2, 'Lucía Moreno', '2024-10-01', '08:15'),
(3, 'Pedro Castro', '2024-10-01', '08:10'),
(4, 'Sofía Vargas', '2024-10-01', '08:05'),
(5, 'Miguel Fernández', '2024-10-01', '08:20'),
(6, 'Ana Ríos', '2024-10-01', '08:25'),
(7, 'Jorge López', '2024-10-01', '08:30'),
(8, 'Isabel Mendoza', '2024-10-01', '08:35'),
(9, 'Alberto Salazar', '2024-10-01', '08:40'),
(10, 'María Gómez', '2024-10-01', '08:45');


INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora) VALUES
(1, 1, '2024-10-01', '08:00'),
(2, 2, '2024-10-01', '08:15'),
(3, 3, '2024-10-01', '08:10'),
(4, 4, '2024-10-01', '08:05'),
(5, 5, '2024-10-01', '08:20'),
(6, 6, '2024-10-01', '08:25'),
(7, 7, '2024-10-01', '08:30'),
(8, 8, '2024-10-01', '08:35'),
(9, 9, '2024-10-01', '08:40'),
(10, 10, '2024-10-01', '08:45');


INSERT INTO persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos) VALUES
('1234567890', 'Carlos', 'Ruiz', 1.75, '1985-05-10', '08:30', 15000.50, 2),
('0987654321', 'Lucía', 'Moreno', 1.68, '1990-03-22', '09:45', 12000.75, 1),
('1122334455', 'Pedro', 'Castro', 1.80, '1982-07-15', '10:15', 20000.00, 3),
('2233445566', 'Sofía', 'Vargas', 1.65, '1995-12-05', '07:50', 9000.00, 0),
('3344556677', 'Miguel', 'Fernández', 1.70, '1988-01-28', '11:00', 18000.25, 1),
('4455667788', 'Ana', 'Ríos', 1.60, '1992-09-13', '06:30', 8500.00, 2),
('5566778899', 'Jorge', 'López', 1.85, '1983-11-30', '08:45', 25000.10, 3),
('6677889900', 'Isabel', 'Mendoza', 1.63, '1996-04-18', '12:00', 14000.35, 0),
('7788990011', 'Alberto', 'Salazar', 1.78, '1987-08-23', '07:15', 19500.80, 2),
('8899001122', 'María', 'Gómez', 1.72, '1993-06-05', '10:00', 10000.00, 1);


INSERT INTO prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) VALUES
('1234567890', 5000.00, '2024-10-01', '09:00', 'Luis Pérez'),
('0987654321', 3000.00, '2024-09-28', '10:15', 'José Hernández'),
('1122334455', 7000.00, '2024-09-27', '11:30', 'Carlos Ruiz'),
('2233445566', 2000.00, '2024-09-25', '08:45', 'Ana López'),
('3344556677', 4500.00, '2024-09-22', '09:50', 'Pedro García'),
('4455667788', 3500.00, '2024-09-20', '07:30', 'Lucía Fernández'),
('5566778899', 8000.00, '2024-09-18', '10:00', 'María Torres'),
('6677889900', 2500.00, '2024-09-15', '12:45', 'Sofía Ramírez'),
('7788990011', 6000.00, '2024-09-12', '11:15', 'Jorge Pérez'),
('8899001122', 4000.00, '2024-09-10', '08:00', 'Miguel Morales');


INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) VALUES
(1, '12345', 500.00, 'C', '2024-10-01', '10:00'),
(2, '12345', 200.00, 'D', '2024-10-02', '11:00'),
(3, '23456', 750.00, 'C', '2024-10-03', '09:30'),
(4, '23456', 100.00, 'D', '2024-10-04', '12:45'),
(5, '34567', 1000.00, 'C', '2024-10-05', '08:20'),
(6, '34567', 300.00, 'D', '2024-10-06', '14:15'),
(7, '45678', 1500.00, 'C', '2024-10-07', '16:10'),
(8, '45678', 400.00, 'D', '2024-10-08', '13:00'),
(9, '56789', 2000.00, 'C', '2024-10-09', '17:45'),
(10, '56789', 500.00, 'D', '2024-10-10', '19:30');


INSERT INTO banco (codigo_banco, codigo_transaccion, detalle) VALUES
(1, 1, 'Depósito inicial'),
(2, 2, 'Compra de productos'),
(3, 3, 'Depósito transferencia'),
(4, 4, 'Pago de servicios'),
(5, 5, 'Depósito salario'),
(6, 6, 'Retiro en cajero'),
(7, 7, 'Depósito ahorro'),
(8, 8, 'Pago de factura'),
(9, 9, 'Depósito bonificación'),
(10, 10, 'Compra en tienda');


INSERT INTO profresores (codigo, nombre) VALUES
(1, 'Carlos Ruiz'),
(2, 'Lucía Moreno'),
(3, 'Pedro Castro'),
(4, 'Sofía Vargas'),
(5, 'Miguel Fernández'),
(6, 'Ana Ríos'),
(7, 'Jorge López'),
(8, 'Isabel Mendoza'),
(9, 'Alberto Salazar'),
(10, 'María Gómez');

INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor) VALUES
('1234567890', 'Carlos', 'Ruiz', 'carlos.ruiz@example.com', '1985-05-10', 1),
('0987654321', 'Lucía', 'Moreno', 'lucia.moreno@example.com', '1990-03-22', 2),
('1122334455', 'Pedro', 'Castro', 'pedro.castro@example.com', '1982-07-15', 3),
('2233445566', 'Sofía', 'Vargas', 'sofia.vargas@example.com', '1995-12-05', 4),
('3344556677', 'Miguel', 'Fernández', 'miguel.fernandez@example.com', '1988-01-28', 5),
('4455667788', 'Ana', 'Ríos', 'ana.rios@example.com', '1992-09-13', 6),
('5566778899', 'Jorge', 'López', 'jorge.lopez@example.com', '1983-11-30', 7),
('6677889900', 'Isabel', 'Mendoza', 'isabel.mendoza@example.com', '1996-04-18', 8),
('7788990011', 'Alberto', 'Salazar', 'alberto.salazar@example.com', '1987-08-23', 9),
('8899001122', 'María', 'Gómez', 'maria.gomez@example.com', '1993-06-05', 10);
