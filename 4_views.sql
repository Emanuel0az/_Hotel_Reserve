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
SELECT r.id_reserva, r.fecha_reserva, r.fecha_entrada, r.fecha_salida, 
       h.Num_HabitacionA, h.Tipo_Habitacion, h.Precio, 
       c.Num_Cedula, c.Nombre, c.apellido, c.email
FROM Reservas r
JOIN Habitaciones h ON r.id_habitacion = h.Num_HabitacionA
JOIN Clientes c ON r.Num_Cedula_Cliente = c.Num_Cedula
WHERE r.fecha_reserva = CURDATE();

SELECT * FROM Reservas_Dia_Actual;

--------------------------------------------------------