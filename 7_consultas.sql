------------------------------------------------------------ 1

SELECT `Hoteles`.id_hotel, `Hoteles`.nombre, COUNT(`Reservas`.id_reserva) AS num_reservas
FROM Hoteles
JOIN Habitaciones ON `Hoteles`.id_hotel = `Habitaciones`.id_hotel
JOIN Reservas ON `Habitaciones`.Num_HabitacionA = `Reservas`.id_habitacion
GROUP BY `Hoteles`.id_hotel, `Hoteles`.nombre
ORDER BY num_reservas DESC
LIMIT 1;

------------------------------------------------------------ 2

SELECT COUNT(`Habitaciones`.Num_HabitacionA) AS num_habitaciones_disponibles
FROM Habitaciones
JOIN Hoteles ON `Habitaciones`.id_hotel = `Hoteles`.id_hotel
WHERE `Hoteles`.id_hotel = 3 AND `Habitaciones`.Disponibilidad = 'Disponible' AND `Habitaciones`.Num_HabitacionA NOT IN (
  SELECT Num_HabitacionA
  FROM Reservas
  WHERE fecha_entrada <= 2022-01-01 AND fecha_salida >= 2022-01-10
);

------------------------------------------------------------ 3

SELECT *
FROM Hoteles
WHERE nombre LIKE '%sol%';

------------------------------------------------------------ 4

SELECT *
FROM Hoteles
WHERE ubicacion LIKE 'C%';

------------------------------------------------------------ 5

SELECT *
FROM Hoteles
WHERE ubicacion LIKE '%r';


------------------------------------------------------------ 6

SELECT email, fecha_reserva
FROM reservas
INNER JOIN clientes ON reservas.Num_Cedula_Cliente = clientes.Num_Cedula
WHERE email = 'moliris@gmail.com' AND fecha_reserva >= (CURDATE() - INTERVAL 1 MONTH);


------------------------------------------------------------ 7

SELECT * 
FROM reservas_ultimo_mes

--------------------------------------------- 8

SELECT id_hotel, COUNT(*) AS num_reservas
FROM reservas, hoteles
WHERE fecha_reserva >= MONTH(CURDATE() - INTERVAL 1 MONTH)
GROUP BY id_hotel

SELECT * FROM reservas

--------------------------------------------- 9

SELECT `Hoteles`.id_hotel, `Hoteles`.nombre
FROM Hoteles
JOIN `Habitaciones` ON `Hoteles`.id_hotel = `Habitaciones`.id_hotel
WHERE `Habitaciones`.Disponibilidad = 'Disponible'
AND NOT EXISTS (
  SELECT 1
  FROM Reservas
  WHERE `Reservas`.id_habitacion = `Habitaciones`.Num_HabitacionA
  AND `Reservas`.fecha_reserva >= (CURDATE() - INTERVAL 1 MONTH)
)
GROUP BY `Hoteles`.id_hotel, `Hoteles`.nombre;

SELECT * FROM reservas

SELECT * FROM reservas

----------------------------------------------- ADDS

--Une la tabla de reservas con las habitaciones para facilitar la visualizacion.
SELECT * FROM habitaciones
INNER JOIN Reservas
ON habitaciones.Num_HabitacionA = Reservas.id_habitacion
WHERE `Disponibilidad` = 'Ocupado'



SELECT * FROM historial_reservas

SELECT * FROM Clientes;

SELECT * FROM Trabajador;

SELECT * FROM Administradores;

SELECT * FROM Habitaciones WHERE Disponibilidad = 'Disponible';

SELECT * FROM Reservas;

SELECT * FROM Clientes WHERE Num_Cedula = '1010101010';

SELECT * FROM Trabajador WHERE Nombre = 'Cristina Gomez';

SELECT * FROM Administradores WHERE Tipo_Administrador = 'G_General';

SELECT * FROM Habitaciones WHERE id_habitacion = 1;

SELECT * FROM Reservas WHERE id_reserva = 1;

SELECT * FROM Clientes WHERE email = 'sainex1314@gmail.com';

SELECT * FROM Trabajador WHERE Tipo_Trabajador = 'Recepcionista';

SELECT * FROM Administradores WHERE Nombre = 'Ana Gomez';

SELECT * FROM Habitaciones WHERE Capacidad = 2;

SELECT * FROM Reservas WHERE Num_Cedula_Cliente = '1-1954-0046';

SELECT * FROM Reservas WHERE id_habitacion = 5;

SELECT COUNT(*) FROM Clientes;

SELECT COUNT(*) FROM Trabajador;

SELECT COUNT(*) FROM Administradores;

SELECT COUNT(*) FROM Habitaciones;

SELECT COUNT(*) FROM Reservas;

SELECT ROUND(AVG(Precio), 2) FROM Habitaciones;

SELECT ROUND(SUM(Precio), 2) FROM Reservas INNER JOIN Habitaciones ON Reservas.id_habitacion = Habitaciones.`Num_HabitacionA`;