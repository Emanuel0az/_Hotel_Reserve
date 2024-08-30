CREATE VIEW mostar_disponibles AS
SELECT `Disponibilidad`, `Tipo_Habitacion`, `Capacidad`
FROM habitaciones
WHERE `Disponibilidad` = 'Disponible'

-------------------------------------------------------------

CREATE View mostrar_mantenimiento AS
SELECT `Disponibilidad`,`Tipo_Habitacion`
FROM habitaciones
WHERE `Disponibilidad` = 'En mantenimiento'

------------------------------------------------------------------

CREATE VIEW Habitaciones_Ocupada AS
SELECT
    `Habitaciones`.Num_HabitacionA,
    CONCAT('La habitación ', `Habitaciones`.Num_HabitacionA, ' está ocupada por ', `Clientes`.Nombre) as ocupante,
    CONCAT('Entró el ', `Reservas`.fecha_entrada, ' y saldrá el ', `Reservas`.fecha_salida) as fecha_estadia
FROM
    Habitaciones
JOIN
    Reservas ON `Habitaciones`.Num_HabitacionA = `Reservas`.id_habitacion
JOIN
    Clientes ON `Reservas`.Num_Cedula_Cliente = `Clientes`.Num_Cedula
WHERE
    `Habitaciones`.Disponibilidad = 'Ocupado';

--------------------------------------------------------------

CREATE VIEW Reservas_Dia_Actual AS
SELECT `Reservas`.id_reserva, `Reservas`.fecha_reserva, `Reservas`.fecha_entrada, `Reservas`.fecha_salida,
       `Habitaciones`.Num_HabitacionA, `Habitaciones`.Tipo_Habitacion, `Habitaciones`.Precio,
       `Clientes`.Num_Cedula, `Clientes`.Nombre, `Clientes`.apellido, `Clientes`.email
FROM Reservas
JOIN Habitaciones ON `Reservas`.id_habitacion = `Habitaciones`.Num_HabitacionA
JOIN Clientes ON `Reservas`.Num_Cedula_Cliente = `Clientes`.Num_Cedula
WHERE `Reservas`.fecha_reserva >= CURDATE() - INTERVAL 3 YEAR;

--------------------------------------------------------

CREATE VIEW Reservas_ultimo_mes AS
SELECT id_historial, `Num_habitaciones`, id_reserva, fecha_reserva
FROM historial_reservas
WHERE fecha_reserva >= (CURDATE() - INTERVAL 1 MONTH);

CREATE VIEW Reservas_ultimo_año AS
SELECT id_historial, `Num_habitaciones`, id_reserva, fecha_reserva
FROM historial_reservas
WHERE fecha_reserva >= (CURDATE() - INTERVAL 1 YEAR);

------------------------------------------------------

SELECT * FROM mostar_disponibles

SELECT * FROM habitaciones_ocupada

SELECT * FROM Reservas_Dia_Actual;

SELECT * FROM mostrar_mantenimiento

SELECT * FROM Reservas_ultimo_mes

SELECT * FROM reservas_ultimo_año

-----------------------------------------------------