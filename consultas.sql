SELECT * FROM Clientes;

SELECT * FROM Trabajador;

SELECT * FROM Administradores;

SELECT * FROM Habitaciones WHERE Disponibilidad = 'Disponible';

SELECT * FROM Reservas;

SELECT * FROM Clientes WHERE Num_Cedula = '1010101010';

SELECT * FROM Trabajador WHERE Nombre = 'Cristina Gomez';

SELECT * FROM Administradores WHERE Tipo_Administrador = 'G_General';

SELECT * FROM Habitaciones WHERE id_habitacion = 1;

SELECT * FROM Reservas WHERE id_reserva = 1;

SELECT * FROM Clientes WHERE email = 'luis.martinez@example.com';

SELECT * FROM Trabajador WHERE Tipo_Trabajador = 'Recepcionista';

SELECT * FROM Administradores WHERE Nombre = 'Ana Gomez';

SELECT * FROM Habitaciones WHERE Capacidad = 2;

SELECT * FROM Reservas WHERE Num_Cedula_Cliente = '1111111111';

SELECT * FROM Reservas WHERE id_habitacion = 1;

SELECT COUNT(*) FROM Clientes;

SELECT COUNT(*) FROM Trabajador;

SELECT COUNT(*) FROM Administradores;

SELECT COUNT(*) FROM Habitaciones;

SELECT COUNT(*) FROM Reservas;

SELECT AVG(Precio) FROM Habitaciones;

SELECT SUM(Precio) FROM Reservas INNER JOIN Habitaciones ON Reservas.id_habitacion = Habitaciones.id_habitacion;