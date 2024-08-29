CREATE VIEW mostar_disponibles AS 
SELECT `Disponibilidad`, `Tipo_Habitacion`, `Capacidad`
FROM habitaciones
WHERE `Disponibilidad` = 'Disponible'

SELECT * FROM mostar_disponibles

--------------------------------------------------------

CREATE View mostrar_mantenimiento AS 
SELECT `Disponibilidad`,`Tipo_Habitacion`
FROM habitaciones
INNER JOIN reservas ON habitaciones.Num_HabitacionA = reservas.id_habitacion
WHERE `Disponibilidad` = 'En mantenimiento'

SELECT * FROM mostrar_mantenimiento

--------------------------------------------------------

CREATE View mostrar_ocupadas AS 
SELECT h.`Disponibilidad`,
     CONCAT('La habitación ', h.`Num_HabitacionA`, ' está ocupada por ', c.`nombre`) as ocupante,
     CONCAT('Entró el ', r.`fecha_entrada`, ' y saldrá el ', r.`fecha_salida`) as fecha_estadia
FROM habitaciones h
INNER JOIN reservas r ON h.`Num_HabitacionA` = r.`id_habitacion`
INNER JOIN clientes c ON r.`Num_Cedula_Cliente` = c.`Num_Cedula`
WHERE h.`Disponibilidad` = 'Reservado';

SELECT * FROM mostrar_ocupadas

--------------------------------------------------------

CREATE VIEW Reservas_Dia_Actual AS
SELECT `Reservas`.id_reserva, `Reservas`.fecha_reserva, `Reservas`.fecha_entrada, `Reservas`.fecha_salida, 
       `Habitaciones`.Num_HabitacionA, `Habitaciones`.Tipo_Habitacion, `Habitaciones`.Precio, 
       `Clientes`.Num_Cedula, `Clientes`.Nombre, `Clientes`.apellido, `Clientes`.email
FROM Reservas
JOIN Habitaciones ON `Reservas`.id_habitacion = `Reservas`.Num_HabitacionA
JOIN Clientes ON `Reservas`.Num_Cedula_Cliente = `Clientes`.Num_Cedula
WHERE `Reservas`.fecha_reserva = CURDATE();

SELECT * FROM Reservas_Dia_Actual;

--------------------------------------------------------