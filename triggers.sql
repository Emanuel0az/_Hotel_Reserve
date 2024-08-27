CREATE TRIGGER AfterInsertReserva
AFTER INSERT ON Reservas
FOR EACH ROW
BEGIN
    UPDATE Habitaciones
    SET `Disponibilidad` = 'Otros'
    WHERE id_habitacion = NEW.id_habitacion;
END

CREATE TRIGGER AfterDeleteReserve
AFTER DELETE ON Reservas
FOR EACH ROW
BEGIN
    UPDATE Habitaciones
    SET `Disponibilidad` = 'Disponible'
    WHERE id_habitacion = OLD.id_habitacion;
END