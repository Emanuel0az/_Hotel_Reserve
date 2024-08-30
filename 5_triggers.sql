CREATE TRIGGER AfterInsertReserva
AFTER INSERT ON Reservas
FOR EACH ROW
BEGIN
    UPDATE Habitaciones
    SET Disponibilidad = 'Ocupado'
    WHERE Num_HabitacionA = NEW.id_habitacion;
END;

DROP Trigger AfterInsertReserva

SELECT * FROM reservas

-- He guardado la disponibilidad en una variable porque de otra manera me aparecía un error de sintaxis.

CREATE TRIGGER AfterDeleteReserve
AFTER DELETE ON Reservas
FOR EACH ROW
BEGIN
    UPDATE Habitaciones
    SET `Disponibilidad` = 'Disponible'
    WHERE `Num_HabitacionA` = OLD.id_habitacion;
END;

----------------------------------------------------

CREATE TRIGGER validar_ocupadas
BEFORE INSERT ON Reservas
FOR EACH ROW
BEGIN
    DECLARE habitacion_estado ENUM('Disponible', 'Ocupado', 'En limpieza', 'En mantenimiento', 'Otros', 'Reservado');
    SELECT Disponibilidad INTO habitacion_estado
    FROM Habitaciones
    WHERE Num_HabitacionA = NEW.id_habitacion;
    IF habitacion_estado = 'Ocupado' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Esta habitación ya está ocupada.';
    END IF;
END;