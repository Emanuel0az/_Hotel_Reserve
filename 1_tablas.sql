--------------------------------------------------------

CREATE DATABASE Hotel

use hotel

--------------------------------------------------------

CREATE TABLE Clientes (
    Num_Cedula VARCHAR(100) NOT NULL PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

--------------------------------------------------------

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


CREATE TABLE Administradores (
    Num_Cedula VARCHAR(100) NOT NULL PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Tipo_Administrador ENUM('G_General', 'G_Recepcion', 'G_Ventas_y_Marketing',
                            'G_Recursos_Humanos', 'G_Finanzas', 'G_Eventos',
                            'G_Mantenimiento', 'G_Seguridad')
);

-------------------------------------------------------

CREATE TABLE Trabajador (
    Num_Cedula VARCHAR(100) NOT NULL PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Tipo_Trabajador ENUM('Recepcionista', 'Miselaneo', 'Botones')
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

--  -  -  -  -   ;)--