CREATE TRIGGER AfterInsertReserva
AFTER INSERT ON Reservas
FOR EACH ROW
BEGIN
    UPDATE Habitaciones
    SET `Disponibilidad` = 'Ocupado'
    WHERE `Num_HabitacionA` = NEW.id_habitacion;
END

CREATE TRIGGER AfterDeleteReserve
AFTER DELETE ON Reservas
FOR EACH ROW
BEGIN
    UPDATE Habitaciones
    SET `Disponibilidad` = 'Disponible'
    WHERE `Num_HabitacionA` = OLD.id_habitacion;
END

CREATE TRIGGER trg_add_historial_reserva
AFTER INSERT ON Reservas
FOR EACH ROW
BEGIN
    INSERT INTO Historial_reservas (
        id_hotel,
        Num_habitaciones,
        fecha_reserva,
        id_reserva,
        Num_Cedula_Cliente
    ) VALUES (
        (SELECT id_hotel FROM Habitaciones WHERE Num_HabitacionA = NEW.id_habitacion),
        NEW.id_habitacion,
        NEW.fecha_reserva,
        NEW.id_reserva,
        NEW.Num_Cedula_Cliente
    );
END;

