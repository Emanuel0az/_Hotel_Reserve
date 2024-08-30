INSERT INTO Clientes (Num_Cedula, Nombre, apellido, email)
VALUES
    ('1-1954-0046', 'Gian', 'Moreno', 'sainex1314@gmail.com'),
    ('6-0475-0004', 'Emanuel', 'Abarca', 'zuñiga@gmail.com'),
    ('6-8200-2611', 'Tera', 'Rodríguez', 'teraRod@gmail.com'),
    ('1-1302-0065', 'Ana', 'Hernández', 'hernana@gmail.com'),
    ('5-8600-5243', 'Luis', 'Jose', 'joseluis@gmail.com'),
    ('7-4680-1163', 'Roy', 'Melena', 'melroy@gmail.com'),
    ('1-1689-5133', 'Osiris', 'Molina', 'moliris@gmail.com');

-----------------------------------------------------------

INSERT INTO Trabajador (Num_Cedula, Nombre, Tipo_Trabajador)
VALUES
    ('1234567890', 'Juan Pérez', 'Recepcionista'),
    ('9876543210', 'María Rodríguez', 'Miselaneo'),
    ('1111111111', 'Pedro Gómez', 'Botones'),
    ('2222222222', 'Ana López', 'Recepcionista'),
    ('3333333333', 'Carlos Díaz', 'Miselaneo');

----------------------------------------------------------



INSERT INTO Administradores (Num_Cedula, Nombre, Tipo_Administrador)
VALUES
    ('4444444444', 'Sofía García', 'G_General'),
    ('5555555555', 'Luis Hernández', 'G_Recepcion'),
    ('6666666666', 'María Sánchez', 'G_Ventas_y_Marketing'),
    ('7777777777', 'Juan Carlos Martínez', 'G_Recursos_Humanos'),
    ('8888888888', 'Ana Isabel López', 'G_Finanzas');

----------------------------------------------------------

INSERT INTO Hoteles (id_hotel, nombre, habitaciones, ubicacion)
VALUES
  (1, 'Hotel Plaza', 8, 'Centro de la ciudad'),
  (2, 'Hotel Sol', 6, 'Zona turística'),
  (3, 'Hotel Luna', 10, 'Cerca del aeropuerto'),
  (4, 'Hotel Estrella', 4, 'En el corazón de la ciudad'),
  (5, 'Hotel Mar', 6, 'Frente al mar'),
  (6, 'Hotel Avenida', 9, 'En la avenida principal'),
  (7, 'Hotel Central', 10, 'En el centro financiero'),
  (8, 'Hotel Imperial', 4, 'En la zona de negocios'),
  (9, 'Hotel del Parque', 7, 'En el parque nacional'),
  (10, 'Hotel Miramar', 7, 'Con vistas al mar');

--------------------------------------------------------

INSERT INTO Habitaciones (Num_HabitacionA, id_hotel, Disponibilidad, Tipo_Habitacion, Capacidad, Precio)
VALUES
    (1, 1, 'Disponible', 'Individual', 1, 50.00),
    (2, 1, 'Disponible', 'Doble', 2, 80.00),
    (3, 1, 'Disponible', 'Triple', 3, 120.00),
    (4, 1, 'Disponible', 'Cuádruple', 4, 150.00),
    (5, 1, 'Disponible', 'Suite', 2, 200.00),
    (6, 1, 'Disponible', 'Individual', 1, 50.00),
    (7, 1, 'Disponible', 'Doble', 2, 80.00),
    (8, 1, 'Disponible', 'Triple', 3, 120.00);


--------------------------------------------------------

INSERT INTO Habitaciones (Num_HabitacionA, id_hotel, Disponibilidad, Tipo_Habitacion, Capacidad, Precio)
VALUES
    (9, 2, 'Disponible', 'Cuádruple', 4, 150.00),
    (10, 2, 'Reservado', 'Suite', 2, 200.00),
    (11, 2, 'Disponible', 'Individual', 1, 60.00),
    (12, 2, 'Ocupado', 'Doble', 2, 100.00),
    (13, 2, 'En limpieza', 'Triple', 3, 140.00),
    (14, 2, 'Disponible', 'Cuádruple', 4, 180.00);

--------------------------------------------------------

INSERT INTO Habitaciones (Num_HabitacionA, id_hotel, Disponibilidad, Tipo_Habitacion, Capacidad, Precio)
VALUES
    (15, 3, 'Reservado', 'Suite', 2, 220.00),
    (16, 3, 'Disponible', 'Individual', 1, 60.00),
    (17, 3, 'Ocupado', 'Doble', 2, 100.00),
    (18, 3, 'En mantenimiento', 'Triple', 3, 140.00),
    (19, 3, 'Disponible', 'Cuádruple', 4, 180.00),
    (20, 3, 'Reservado', 'Suite', 2, 220.00),
    (21, 3, 'Disponible', 'Individual', 1, 70.00),
    (22, 3, 'Ocupado', 'Doble', 2, 120.00),
    (23, 3, 'En limpieza', 'Triple', 3, 160.00),
    (24, 3, 'Disponible', 'Cuádruple', 4, 200.00),
    (25, 3, 'Reservado', 'Suite', 2, 240.00);


--------------------------------------------------------

INSERT INTO Habitaciones (Num_HabitacionA, id_hotel, Disponibilidad, Tipo_Habitacion, Capacidad, Precio)
VALUES
    (26, 4, 'Disponible', 'Individual', 1, 70.00),
    (27, 4, 'Ocupado', 'Doble', 2, 120.00),
    (28, 4, 'En mantenimiento', 'Triple', 3, 160.00),
    (29, 4, 'Disponible', 'Cuádruple', 4, 200.00);


--------------------------------------------------------
INSERT INTO Habitaciones (Num_HabitacionA, id_hotel, Disponibilidad, Tipo_Habitacion, Capacidad, Precio)
VALUES
    (30, 5, 'Reservado', 'Suite', 2, 240.00),
    (31, 5, 'Disponible', 'Individual', 1, 80.00),
    (32, 5, 'Ocupado', 'Doble', 2, 140.00),
    (33, 5, 'En limpieza', 'Triple', 3, 180.00),
    (34, 5, 'Disponible', 'Cuádruple', 4, 220.00),
    (35, 5, 'Reservado', 'Suite', 2, 260.00);


--------------------------------------------------------

INSERT INTO Habitaciones (Num_HabitacionA, id_hotel, Disponibilidad, Tipo_Habitacion, Capacidad, Precio)
VALUES
    (36, 6, 'Disponible', 'Individual', 1, 80.00),
    (37, 6, 'Ocupado', 'Doble', 2, 140.00),
    (38, 6, 'En mantenimiento', 'Triple', 3, 180.00),
    (39, 6, 'Disponible', 'Cuádruple', 4, 220.00),
    (41, 6, 'Disponible', 'Individual', 1, 90.00),
    (42, 6, 'Ocupado', 'Doble', 2, 160.00),
    (43, 6, 'En limpieza', 'Triple', 3, 200.00),
    (44, 6, 'Disponible', 'Cuádruple', 4, 240.00),
    (45, 6, 'Reservado', 'Suite', 2, 280.00);

INSERT INTO Habitaciones (Num_HabitacionA, id_hotel, Disponibilidad, Tipo_Habitacion, Capacidad, Precio)
VALUES
    (46, 7, 'Disponible', 'Individual', 1, 90.00),
    (47, 7, 'Ocupado', 'Doble', 2, 160.00),
    (48, 7, 'En mantenimiento', 'Triple', 3, 200.00),
    (49, 7, 'Disponible', 'Cuádruple', 4, 240.00),
    (50, 7, 'Reservado', 'Suite', 2, 280.00),
    (51, 7, 'Disponible', 'Individual', 1, 100.00),
    (52, 7, 'Ocupado', 'Doble', 2, 180.00),
    (53, 7, 'En limpieza', 'Triple', 3, 220.00),
    (54, 7, 'Disponible', 'Cuádruple', 4, 260.00),
    (55, 7, 'Reservado', 'Suite', 2, 300.00),
    (56, 7, 'Disponible', 'Individual', 1, 100.00);

   
--------------------------------------------------------

INSERT INTO Habitaciones (Num_HabitacionA, id_hotel, Disponibilidad, Tipo_Habitacion, Capacidad, Precio)
VALUES
    (57, 8, 'Ocupado', 'Doble', 2, 180.00),
    (58, 8, 'En mantenimiento', 'Triple', 3, 220.00),
    (59, 8, 'Disponible', 'Cuádruple', 4, 260.00),
    (60, 8, 'Reservado', 'Suite', 2, 300.00);

-------------------------------------------------------

INSERT INTO Habitaciones (Num_HabitacionA, id_hotel, Disponibilidad, Tipo_Habitacion, Capacidad, Precio)
VALUES
    (61, 9, 'Disponible', 'Individual', 1, 110.00),
    (62, 9, 'Ocupado', 'Doble', 2, 200.00),
    (63, 9, 'En limpieza', 'Triple', 3, 240.00),
    (64, 9, 'Disponible', 'Cuádruple', 4, 280.00),
    (65, 9, 'Reservado', 'Suite', 2, 320.00),
    (66, 9, 'Disponible', 'Individual', 1, 110.00),
    (67, 9, 'Ocupado', 'Doble', 2, 200.00),
    (68, 9, 'En mantenimiento', 'Triple', 3, 240.00);

--------------------------------------------------------

INSERT INTO Reservas (fecha_reserva, fecha_entrada, fecha_salida, id_habitacion, Num_Cedula_Cliente)
VALUES
    ('2024-01-01', '2024-01-02', '2024-01-03', 19, '1-1954-0046');
    

--------------------------------------------------------

SELECT * FROM clientes WHERE `Num_Cedula` = '1-1689-5133'

drop table reservas

INSERT INTO Reservas (fecha_reserva, fecha_entrada, fecha_salida, id_habitacion, Num_Cedula_Cliente)
VALUES
    ('¿?', '¿?', '¿?', ¿?, '¿?');