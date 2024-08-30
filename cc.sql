create Table Hoteles (
    id_hotel INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    habitaciones INT NOT NULL,
    ubicacion VARCHAR(100) NOT NULL
);

--------------------------------------------------------

CREATE TABLE Habitaciones (
    Num_HabitacionA INT NOT NULL PRIMARY KEY,
    id_hotel INT NOT NULL,
    Disponibilidad ENUM('Disponible', 'Ocupado', 'En limpieza', 'En mantenimiento', 'Otros', 'Reservado'),
    Tipo_Habitacion VARCHAR(100) NOT NULL,
    Capacidad INT NOT NULL,
    Precio DECIMAL(10,2) NOT NULL,
    Foreign Key (id_hotel) REFERENCES Hoteles(id_hotel)
);

ALTER TABLE Habitaciones
MODIFY COLUMN Tipo_Habitacion ENUM('Individual', 'Doble', 'Triple', 'Cuádruple', 'Suite') NOT NULL;

--------------------------------------------------------

CREATE Table Historial_reservas (
    id_historial INT PRIMARY KEY AUTO_INCREMENT,
    id_hotel INT NOT NULL,
    Num_habitaciones INT NOT NULL,
    fecha_reserva DATE NOT NULL,
    id_reserva INT NOT NULL,
    Num_Cedula_Cliente VARCHAR(100) NOT NULL,
    Foreign Key (id_hotel) REFERENCES Hoteles(id_hotel),
    Foreign Key (Num_Cedula_Cliente) REFERENCES Clientes(Num_cedula),
    Foreign Key (Num_habitaciones) REFERENCES Habitaciones(Num_HabitacionA)
);

--------------------------------------------------------

CREATE TABLE Reservas (
    id_reserva INT PRIMARY KEY AUTO_INCREMENT,
    fecha_reserva DATE NOT NULL,
    fecha_entrada DATE NOT NULL,
    fecha_salida DATE NOT NULL,
    id_habitacion INT NOT NULL,
    Num_Cedula_Cliente VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_habitacion) REFERENCES Habitaciones(Num_HabitacionA),
    FOREIGN KEY (Num_Cedula_Cliente) REFERENCES Clientes(Num_Cedula)
);



INSERT INTO Reservas (fecha_reserva, fecha_entrada, fecha_salida, id_habitacion, Num_Cedula_Cliente)
VALUES
    ('2024-01-01', '2024-01-02', '2024-01-03', 1, '1-1954-0046'),
    ('2024-02-05', '2024-02-06', '2022-02-08', 2, '6-0475-0004'),
    ('2024-03-10', '2024-03-11', '2022-03-13', 3, '6-8200-2611'),
    ('2024-04-15', '2024-04-16', '2022-04-17', 4, '1-1302-0065'),
    ('2024-05-20', '2024-08-21', '2022-08-23', 5, '5-8600-5243'),
    ('2024-06-22', '2024-08-23', '2022-08-24', 6, '5-8600-5243'),
    ('2024-07-30', '2024-08-29', '2022-08-30', 7, '7-4680-1163'),
    ('2024-08-04', '2024-08-29', '2022-08-30', 9, '1-1689-5133');


DELIMITER //

-- Trigger para verificar disponibilidad antes de insertar una reservaDELIMITER //

-- Trigger para verificar disponibilidad antes de insertar una reserva
CREATE TRIGGER trg_add_reserva
BEFORE INSERT ON Reservas
FOR EACH ROW
BEGIN
    DECLARE disponibilidad VARCHAR(20);

    -- Obtener la disponibilidad de la habitación
    SELECT Disponibilidad INTO disponibilidad
    FROM Habitaciones
    WHERE Num_HabitacionA = NEW.id_habitacion
    FOR UPDATE;

    -- Verificar si la habitación está ocupada o reservada
    IF disponibilidad = 'Ocupado' OR disponibilidad = 'Reservado' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'La habitación está ocupada o ya reservada';
    ELSE
        UPDATE Habitaciones
        SET Disponibilidad = 'Reservado'
        WHERE Num_HabitacionA = NEW.id_habitacion;
    END IF;
END//

DELIMITER ;


-- -- Trigger para actualizar el historial después de insertar una reserva
-- CREATE TRIGGER trg_add_historial_reserva
-- AFTER INSERT ON Reservas
-- FOR EACH ROW
-- BEGIN
--     INSERT INTO Historial_reservas (
--         id_hotel,
--         Num_habitaciones,
--         fecha_reserva,
--         id_reserva,
--         Num_Cedula_Cliente
--     ) VALUES (
--         (SELECT id_habitacion FROM reservas WHERE NEW.id_habitacion = id_habitacion),
--         NEW.id_habitacion,
--         NEW.fecha_reserva,
--         NEW.id_reserva,
--         NEW.Num_Cedula_Cliente
--     );
-- END

drop Trigger trg_add_historial_reservas