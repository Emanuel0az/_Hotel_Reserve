--------------------------------------------------------

CREATE Procedure promedio_reservas(
    in p_fecha_entrada DATE,
    in p_fecha_entrada2 DATE
)
BEGIN
    SELECT ROUND(AVG(Reservas_diarias), 1) AS avg_Reservas_diarias
    from(
            SELECT DATE(reservas.fecha_entrada) as fecha, count(*) as Reservas_diarias  
            FROM reservas
            WHERE DATE(reservas.fecha_entrada) BETWEEN p_fecha_entrada AND p_fecha_entrada2
            GROUP BY DATE (reservas.fecha_entrada)
    ) AS Reservaciones_diarias;
END

CALL promedio_reservas('2022-03-11', '2022-03-31');

--------------------------------------------------------
CREATE PROCEDURE agregar_reserva(
  IN p_fecha_reserva DATE,
  IN p_fecha_entrada DATE,
  IN p_fecha_salida DATE,
  IN p_id_habitacion INT,
  IN p_Num_Cedula_Cliente VARCHAR(100)
)
BEGIN
  INSERT INTO Reservas (fecha_reserva, fecha_entrada, fecha_salida, id_habitacion, Num_Cedula_Cliente)
  VALUES (p_fecha_reserva, p_fecha_entrada, p_fecha_salida, p_id_habitacion, p_Num_Cedula_Cliente);
END

CALL agregar_reserva('2024-07-01', '2024-07-05', '2024-07-10', 2, '9876543210');

--------------------------------------------------------

CREATE PROCEDURE Cancelar_Reserva(
    IN p_id_reserva INT
)
BEGIN
    DELETE FROM Reservas
    WHERE id_reserva = p_id_reserva;
END

CALL `Cancelar_Reserva`(2)

--------------------------------------------------------