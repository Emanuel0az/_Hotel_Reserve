INSERT INTO Clientes (Num_Cedula, Nombre, apellido, email)
VALUES
    ('1234567890', 'Juan', 'Pérez', 'juan.perez@example.com'),
    ('9876543210', 'María', 'González', 'maria.gonzalez@example.com'),
    ('1111111111', 'Pedro', 'Rodríguez', 'pedro.rodriguez@example.com'),
    ('2222222222', 'Ana', 'Hernández', 'ana.hernandez@example.com'),
    ('3333333333', 'Luis', 'Martínez', 'luis.martinez@example.com'),
    ('4444444444', 'Sofía', 'García', 'sofia.garcia@example.com'),
    ('5555555555', 'Carlos', 'Sánchez', 'carlos.sanchez@example.com'),
    ('6666666666', 'Laura', 'Díaz', 'laura.diaz@example.com'),
    ('7777777777', 'Miguel', 'Fernández', 'miguel.fernandez@example.com'),
    ('8888888888', 'Elena', 'Gómez', 'elena.gomez@example.com'),
    ('9999999999', 'Rafael', 'López', 'rafael.lopez@example.com'),
    ('1010101010', 'Isabel', 'Pérez', 'isabel.perez@example.com');

INSERT INTO Trabajador (Num_Cedula, Nombre, Tipo_Trabajador)
VALUES
('1234567890', 'Juan Perez', 'Recepcionista'),
('9876543210', 'Maria Rodriguez', 'Miselaneo'),
('1111111111', 'Pedro Sanchez', 'Botones'),
('2222222222', 'Ana Gomez', 'Recepcionista'),
('3333333333', 'Luis Hernandez', 'Miselaneo'),
('4444444444', 'Sofia Lopez', 'Botones'),
('5555555555', 'Carlos Martinez', 'Recepcionista'),
('6666666666', 'Isabel Sanchez', 'Miselaneo'),
('7777777777', 'Rafael Gomez', 'Botones'),
('8888888888', 'Elena Hernandez', 'Recepcionista'),
('9999999999', 'Miguel Lopez', 'Miselaneo'),
('1010101010', 'Laura Martinez', 'Botones'),
('1111111112', 'Francisco Sanchez', 'Recepcionista'),
('1212121212', 'Cristina Gomez', 'Miselaneo'),
('1313131313', 'Andres Hernandez', 'Botones'),
('1414141414', 'Sandra Lopez', 'Recepcionista'),
('1515151515', 'Manuel Martinez', 'Miselaneo'),
('1616161616', 'Rosa Sanchez', 'Botones'),
('1717171717', 'Julia Gomez', 'Recepcionista'),
('1818181818', 'Pablo Hernandez', 'Miselaneo'),
('1919191919', 'Lucia Lopez', 'Botones');

INSERT INTO Administradores (Num_Cedula, Nombre, Tipo_Administrador)
VALUES
('1234567890', 'Juan Perez', 'G_General'),
('9876543210', 'Maria Rodriguez', 'G_Recepcion'),
('1111111111', 'Pedro Sanchez', 'G_Ventas_y_Marketing'),
('2222222222', 'Ana Gomez', 'G_Recursos_Humanos')

INSERT INTO Hoteles (id_hotel, nombre, habitaciones, ubicacion)
VALUES
  (1, 'Hotel Plaza', '100', 'Centro de la ciudad'),
  (2, 'Hotel Sol', '50', 'Zona turística'),
  (3, 'Hotel Luna', '200', 'Cerca del aeropuerto'),
  (4, 'Hotel Estrella', '150', 'En el corazón de la ciudad'),
  (5, 'Hotel Mar', '80', 'Frente al mar'),
  (6, 'Hotel Avenida', '120', 'En la avenida principal'),
  (7, 'Hotel Central', '180', 'En el centro financiero'),
  (8, 'Hotel Imperial', '250', 'En la zona de negocios'),
  (9, 'Hotel del Parque', '100', 'En el parque nacional'),
  (10, 'Hotel Miramar', '220', 'Con vistas al mar');

INSERT INTO Habitaciones (Num_HabitacionA, id_hotel, Disponibilidad, Tipo_Habitacion, Capacidad, Precio)
VALUES
    (1, 1, 'Disponible', 'Individual', 1, 50.00),
    (2, 1, 'Ocupado', 'Doble', 2, 80.00),
    (3, 1, 'En limpieza', 'Triple', 3, 120.00),
    (4, 1, 'Disponible', 'Cuádruple', 4, 150.00),
    (5, 1, 'Reservado', 'Suite', 2, 200.00),
    (6, 1, 'Disponible', 'Individual', 1, 50.00),
    (7, 1, 'Ocupado', 'Doble', 2, 80.00),
    (8, 1, 'En mantenimiento', 'Triple', 3, 120.00),
    (9, 1, 'Disponible', 'Cuádruple', 4, 150.00),
    (10, 1, 'Reservado', 'Suite', 2, 200.00);

   INSERT INTO Habitaciones (Num_HabitacionA, id_hotel, Disponibilidad, Tipo_Habitacion, Capacidad, Precio)
VALUES
    (11, 2, 'Disponible', 'Individual', 1, 60.00),
    (12, 2, 'Ocupado', 'Doble', 2, 100.00),
    (13, 2, 'En limpieza', 'Triple', 3, 140.00),
    (14, 2, 'Disponible', 'Cuádruple', 4, 180.00),
    (15, 2, 'Reservado', 'Suite', 2, 220.00),
    (16, 2, 'Disponible', 'Individual', 1, 60.00),
    (17, 2, 'Ocupado', 'Doble', 2, 100.00),
    (18, 2, 'En mantenimiento', 'Triple', 3, 140.00),
    (19, 2, 'Disponible', 'Cuádruple', 4, 180.00),
    (20, 2, 'Reservado', 'Suite', 2, 220.00);
   
   INSERT INTO Habitaciones (Num_HabitacionA, id_hotel, Disponibilidad, Tipo_Habitacion, Capacidad, Precio)
VALUES
    (21, 3, 'Disponible', 'Individual', 1, 70.00),
    (22, 3, 'Ocupado', 'Doble', 2, 120.00),
    (23, 3, 'En limpieza', 'Triple', 3, 160.00),
    (24, 3, 'Disponible', 'Cuádruple', 4, 200.00),
    (25, 3, 'Reservado', 'Suite', 2, 240.00),
    (26, 3, 'Disponible', 'Individual', 1, 70.00),
    (27, 3, 'Ocupado', 'Doble', 2, 120.00),
    (28, 3, 'En mantenimiento', 'Triple', 3, 160.00),
    (29, 3, 'Disponible', 'Cuádruple', 4, 200.00),
    (30, 3, 'Reservado', 'Suite', 2, 240.00);

    INSERT INTO Habitaciones (Num_HabitacionA, id_hotel, Disponibilidad, Tipo_Habitacion, Capacidad, Precio)
VALUES
    (31, 4, 'Disponible', 'Individual', 1, 80.00),
    (32, 4, 'Ocupado', 'Doble', 2, 140.00),
    (33, 4, 'En limpieza', 'Triple', 3, 180.00),
    (34, 4, 'Disponible', 'Cuádruple', 4, 220.00),
    (35, 4, 'Reservado', 'Suite', 2, 260.00),
    (36, 4, 'Disponible', 'Individual', 1, 80.00),
    (37, 4, 'Ocupado', 'Doble', 2, 140.00),
    (38, 4, 'En mantenimiento', 'Triple', 3, 180.00),
    (39, 4, 'Disponible', 'Cuádruple', 4, 220.00);
       
       INSERT INTO Habitaciones (Num_HabitacionA, id_hotel, Disponibilidad, Tipo_Habitacion, Capacidad, Precio)
VALUES
    (41, 5, 'Disponible', 'Individual', 1, 90.00),
    (42, 5, 'Ocupado', 'Doble', 2, 160.00),
    (43, 5, 'En limpieza', 'Triple', 3, 200.00),
    (44, 5, 'Disponible', 'Cuádruple', 4, 240.00),
    (45, 5, 'Reservado', 'Suite', 2, 280.00),
    (46, 5, 'Disponible', 'Individual', 1, 90.00),
    (47, 5, 'Ocupado', 'Doble', 2, 160.00),
    (48, 5, 'En mantenimiento', 'Triple', 3, 200.00),
    (49, 5, 'Disponible', 'Cuádruple', 4, 240.00),
    (50, 5, 'Reservado', 'Suite', 2, 280.00);
  
  INSERT INTO Habitaciones (Num_HabitacionA, id_hotel, Disponibilidad, Tipo_Habitacion, Capacidad, Precio)
VALUES
    (51, 6, 'Disponible', 'Individual', 1, 100.00),
    (52, 6, 'Ocupado', 'Doble', 2, 180.00),
    (53, 6, 'En limpieza', 'Triple', 3, 220.00),
    (54, 6, 'Disponible', 'Cuádruple', 4, 260.00),
    (55, 6, 'Reservado', 'Suite', 2, 300.00),
    (56, 6, 'Disponible', 'Individual', 1, 100.00),
    (57, 6, 'Ocupado', 'Doble', 2, 180.00),
    (58, 6, 'En mantenimiento', 'Triple', 3, 220.00),
    (59, 6, 'Disponible', 'Cuádruple', 4, 260.00),
    (60, 6, 'Reservado', 'Suite', 2, 300.00);

    INSERT INTO Habitaciones (Num_HabitacionA, id_hotel, Disponibilidad, Tipo_Habitacion, Capacidad, Precio)
VALUES
    (61, 7, 'Disponible', 'Individual', 1, 110.00),
    (62, 7, 'Ocupado', 'Doble', 2, 200.00),
    (63, 7, 'En limpieza', 'Triple', 3, 240.00),
    (64, 7, 'Disponible', 'Cuádruple', 4, 280.00),
    (65, 7, 'Reservado', 'Suite', 2, 320.00),
    (66, 7, 'Disponible', 'Individual', 1, 110.00),
    (67, 7, 'Ocupado', 'Doble', 2, 200.00),
    (68, 7, 'En mantenimiento', 'Triple', 3, 240.00),
    (69, 7, 'Disponible', 'Cuádruple', 4, 280.00),
    (70, 7, 'Reservado', 'Suite', 2, 320.00);
   
   INSERT INTO Habitaciones (Num_HabitacionA, id_hotel, Disponibilidad, Tipo_Habitacion, Capacidad, Precio)
VALUES
    (71, 8, 'Disponible', 'Individual', 1, 120.00),
    (72, 8, 'Ocupado', 'Doble', 2, 220.00),
    (73, 8, 'En limpieza', 'Triple', 3, 260.00),
    (74, 8, 'Disponible', 'Cuádruple', 4, 300.00),
    (75, 8, 'Reservado', 'Suite', 2, 340.00),
    (76, 8, 'Disponible', 'Individual', 1, 120.00),
    (77, 8, 'Ocupado', 'Doble', 2, 220.00),
    (78, 8, 'En mantenimiento', 'Triple', 3, 260.00),
    (79, 8, 'Disponible', 'Cuádruple', 4, 300.00),
    (80, 8, 'Reservado', 'Suite', 2, 340.00);
       
       INSERT INTO Habitaciones (Num_HabitacionA, id_hotel, Disponibilidad, Tipo_Habitacion, Capacidad, Precio)
VALUES
    (81, 9, 'Disponible', 'Individual', 1, 130.00),
    (82, 9, 'Ocupado', 'Doble', 2, 240.00),
    (83, 9, 'En limpieza', 'Triple', 3, 280.00),
    (84, 9, 'Disponible', 'Cuádruple', 4, 320.00),
    (85, 9, 'Reservado', 'Suite', 2, 360.00),
    (86, 9, 'Disponible', 'Individual', 1, 130.00),
    (87, 9, 'Ocupado', 'Doble', 2, 240.00),
    (88, 9, 'En mantenimiento', 'Triple', 3, 280.00),
    (89, 9, 'Disponible', 'Cuádruple', 4, 320.00),
    (90, 9, 'Reservado', 'Suite', 2, 360.00);
 
 INSERT INTO Habitaciones (Num_HabitacionA, id_hotel, Disponibilidad, Tipo_Habitacion, Capacidad, Precio)
VALUES
    (91, 10, 'Disponible', 'Individual', 1, 140.00),
    (92, 10, 'Ocupado', 'Doble', 2, 260.00),
    (93, 10, 'En limpieza', 'Triple', 3, 300.00),
    (94, 10, 'Disponible', 'Cuádruple', 4, 340.00),
    (95, 10, 'Reservado', 'Suite', 2, 380.00),
    (96, 10, 'Disponible', 'Individual', 1, 140.00),
    (97, 10, 'Ocupado', 'Doble', 2, 260.00),
    (98, 10, 'En mantenimiento', 'Triple', 3, 300.00),
    (99, 10, 'Disponible', 'Cuádruple', 4, 340.00),
    (100, 10, 'Reservado', 'Suite', 2, 380.00);

INSERT INTO Reservas (fecha_reserva, fecha_entrada, fecha_salida, id_habitacion, Num_Cedula_Cliente)
VALUES
    ('2022-01-01', '2022-01-05', '2022-01-10', 1, '1234567890'),
    ('2022-01-05', '2022-01-10', '2022-01-15', 2, '9876543210'),
    ('2022-01-10', '2022-01-15', '2022-01-20', 3, '1111111111'),
    ('2022-01-15', '2022-01-20', '2022-01-25', 4, '2222222222'),
    ('2022-01-20', '2022-01-25', '2022-01-30', 5, '3333333333'),
    ('2022-01-25', '2022-01-30', '2022-02-04', 6, '4444444444'),
    ('2022-01-30', '2022-02-04', '2022-02-09', 7, '5555555555'),
    ('2022-02-04', '2022-02-09', '2022-02-14', 8, '6666666666'),
    ('2022-02-09', '2022-02-14', '2022-02-19', 9, '7777777777'),
    ('2022-02-14', '2022-02-19', '2022-02-24', 10, '8888888888'),
    ('2022-02-19', '2022-02-24', '2022-03-01', 11, '9999999999'),
    ('2022-02-24', '2022-03-01', '2022-03-06', 12, '1010101010'),
    ('2022-03-01', '2022-03-06', '2022-03-11', 13, '1234567890'),
    ('2022-03-06', '2022-03-11', '2022-03-16', 14, '9876543210'),
    ('2022-03-11', '2022-03-16', '2022-03-21', 15, '1111111111');

    
INSERT INTO Reservas (fecha_reserva, fecha_entrada, fecha_salida, id_habitacion, Num_Cedula_Cliente)
VALUES
    ('2022-03-11', '2022-03-16', '2022-03-21', 15, '9999999999');



----