-- Active: 1724445852651@@127.0.0.1@3306@hotel
CREATE DATABASE Hotel

use hotel

------------------------------------------------------------------_
CREATE TABLE Clientes (
    Num_Cedula VARCHAR(100) NOT NULL PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);
CREATE INDEX idx_Num_Cedula ON Clientes(Num_Cedula)
CREATE INDEX idx_Nombre ON Clientes(Nombre)
CREATE INDEX idx_apellido ON Clientes(apellido)
CREATE INDEX idx_email ON Clientes(email)
------------------------------------------------------------------_

------------------------------------------------------------------_
CREATE TABLE Trabajador (
    Num_Cedula VARCHAR(100) NOT NULL PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Tipo_Trabajador ENUM('Recepcionista', 'Miselaneo', 'Botones')
);
CREATE INDEX idx_Num_Cedula ON Trabajador(Num_Cedula)
CREATE INDEX idx_Nombre ON Trabajador(Nombre)
CREATE INDEX idx_Nombre ON Trabajador(Tipo_Trabajador)
------------------------------------------------------------------_

------------------------------------------------------------------_
CREATE TABLE Administradores (
    Num_Cedula VARCHAR(100) NOT NULL PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Tipo_Administrador ENUM('G_General', 'G_Recepcion', 'G_Ventas_y_Marketing',
                            'G_Recursos_Humanos', 'G_Finanzas', 'G_Eventos',
                            'G_Mantenimiento', 'G_Seguridad')
);
CREATE INDEX idx_Num_Cedula ON Reservas(Num_Cedula)
CREATE INDEX idx_Nombre ON Reservas(Nombre)
CREATE INDEX idx_Tipo_Administrador ON Reservas(Tipo_Administrador)
------------------------------------------------------------------_

------------------------------------------------------------------_
CREATE TABLE Habitaciones (
    id_habitacion INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Disponibilidad ENUM('Disponible', 'Ocupado', 'En limpieza', 'En mantenimiento', 'Otros', 'Reservado'),
    Tipo_Habitacion VARCHAR(100) NOT NULL,
    Capacidad INT NOT NULL,
    Precio DECIMAL(10,2) NOT NULL
);
CREATE INDEX idx_id_habitacion ON Habitaciones(id_habitacion),
CREATE INDEX idx_Disponibilidad ON Habitaciones(Disponibilidad),
CREATE INDEX idx_Tipo_Habitacion ON Habitaciones(Tipo_Habitacion),
CREATE INDEX idx_Capacidad ON Habitaciones(Capacidad),
CREATE INDEX idx_Precio ON  Habitaciones(Precio);
----_____----
ALTER TABLE Habitaciones
MODIFY COLUMN Tipo_Habitacion ENUM('Individual', 'Doble', 'Triple', 'Cuádruple', 'Suite') NOT NULL;
------------------------------------------------------------------_

CREATE TABLE Reservas (
    id_reserva INT PRIMARY KEY AUTO_INCREMENT,
    fecha_reserva DATE NOT NULL,
    fecha_entrada DATE NOT NULL,
    fecha_salida DATE NOT NULL,
    id_habitacion INT NOT NULL,
    Num_Cedula_Cliente VARCHAR(100) NOT NULL,
    Foreign Key (id_habitacion) REFERENCES Habitaciones(id_habitacion),
    Foreign Key (Num_Cedula_Cliente) REFERENCES Clientes(Num_Cedula),
);
CREATE INDEX idx_id_reserva on Reservas(id_reserva)
CREATE INDEX idx_fecha_reserva ON Reservas(fecha_reserva)
CREATE INDEX idx_fecha_entrada ON Reservas(fecha_entrada)
CREATE INDEX idx_fecha_salida ON Reservas(fecha_salida)
CREATE INDEX idx_id_habitacion ON Reservas(id_habitacion)
CREATE INDEX idx_Num_Cedula_Cliente ON  Reservas(Num_Cedula_Cliente)
------------------------------------------------------------------_