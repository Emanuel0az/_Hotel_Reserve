CREATE VIEW mostar_disponibles AS
SELECT `Disponibilidad`, `Tipo_Habitacion`, `Capacidad`
FROM habitaciones
WHERE `Disponibilidad` = 'Disponible'

SELECT * FROM mostar_disponibles

CREATE View mostrar_mantenimiento AS
SELECT `Disponibilidad`,`Tipo_Habitacion`
FROM habitaciones
WHERE `Disponibilidad` = 'En mantenimiento'

SELECT * FROM mostrar_mantenimiento

CREATE VIEW Habitaciones_Ocupada AS
SELECT
    h.Num_HabitacionA,
    CONCAT('La habitación ', h.Num_HabitacionA, ' está ocupada por ', c.Nombre) as ocupante,
    CONCAT('Entró el ', r.fecha_entrada, ' y saldrá el ', r.fecha_salida) as fecha_estadia
FROM
    Habitaciones h
JOIN
    Reservas r ON h.Num_HabitacionA = r.id_habitacion
JOIN
    Clientes c ON r.Num_Cedula_Cliente = c.Num_Cedula
WHERE
    h.Disponibilidad = 'Ocupado';

SELECT * FROM habitaciones_ocupada

CREATE VIEW Reservas_Dia_Actual AS
SELECT r.id_reserva, r.fecha_reserva, r.fecha_entrada, r.fecha_salida,
       h.Num_HabitacionA, h.Tipo_Habitacion, h.Precio,
       c.Num_Cedula, c.Nombre, c.apellido, c.email
FROM Reservas r
JOIN Habitaciones h ON r.id_habitacion = h.Num_HabitacionA
JOIN Clientes c ON r.Num_Cedula_Cliente = c.Num_Cedula
WHERE r.fecha_reserva >= CURDATE() - INTERVAL 3 YEAR;

SELECT * FROM Reservas_Dia_Actual;
--------------------------------------------------------
CREATE VIEW Reservas_ultimo_mes AS
SELECT id_historial, `Num_habitaciones`, id_reserva, fecha_reserva
FROM historial_reservas
WHERE fecha_reserva >= (CURDATE() - INTERVAL 1 MONTH);

SELECT * FROM reservas_ultimo_mes
-------------------------------------------------------
CREATE VIEW Reservas_ultimo_año AS
SELECT id_historial, `Num_habitaciones`, id_reserva, fecha_reserva
FROM historial_reservas
WHERE fecha_reserva >= (CURDATE() - INTERVAL 1 YEAR);

SELECT * FROM reservas_ultimo_año