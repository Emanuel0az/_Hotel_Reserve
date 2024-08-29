## 0. Crear la Base de Datos
    Hotel: Se crea una base de datos llamada "Hotel" y se selecciona para realizar todas las operaciones.

## 1. Crear las Tablas
    Clientes: Almacena información básica del cliente (cédula, nombre, apellido, email) y usa la cédula como identificador único.
    Hoteles: Contiene información sobre cada hotel (ID, nombre, número de habitaciones, ubicación).
    Habitaciones: Guarda detalles de cada habitación (número, ID del hotel, disponibilidad, tipo, capacidad, precio).
    Historial_reservas: Registra todas las reservas anteriores con detalles como el hotel, habitación, fecha, y cliente.
    Reservas: Información sobre reservas activas (ID, fechas, habitación, cliente).

## 2. Insertar Datos
    Clientes: Añade registros con cédula, nombre, apellido, y email.
    Hoteles: Inserta datos de hoteles con ID, nombre, habitaciones, y ubicación.
    Habitaciones: Agrega habitaciones con número, ID del hotel, disponibilidad, tipo, capacidad, y precio.
    Reservas: Introduce detalles de reservas como fechas, ID de habitación y cliente.

## 3. Procedimientos Almacenados
    promedio_reservas: Calcula el promedio de reservas diarias en un rango de fechas.
    agregar_reserva: Añade una nueva reserva a la tabla.
    Cancelar_Reserva: Elimina una reserva existente.

## 4. Vistas
    mostrar_disponibles: Muestra habitaciones disponibles.
    mostrar_mantenimiento: Muestra habitaciones en mantenimiento.
    mostrar_ocupadas: Muestra habitaciones ocupadas y detalles del cliente.
    Reservas_Dia_Actual: Muestra reservas hechas en el día actual.

## 5. Triggers
    AfterInsertReserva: Actualiza la disponibilidad de una habitación a "Ocupado" cuando se realiza una nueva reserva.
    AfterDeleteReserve: Cambia la disponibilidad de una habitación a "Disponible" cuando se elimina una reserva.
    trg_add_historial_reserva: Agrega una entrada al historial de reservas después de una nueva reserva.

## 6. Índices
    Clientes: Índices en nombre, apellido y email para búsquedas rápidas.
    Trabajadores y Administradores: Índices en cédula y nombre para mejorar la eficiencia.
    Habitaciones: Índices en número, disponibilidad, capacidad, y precio para optimizar consultas.
    Reservas: Índices en columnas claves como ID de reserva y fechas para acelerar las búsquedas.

## 7. Consultas 
    Contar reservas por hotel: Muestra cuántas reservas hay en cada hotel.
    Número de habitaciones disponibles: Cuenta las habitaciones disponibles en un hotel específico.
    Buscar hoteles por nombre/ubicación: Encuentra hoteles que coincidan con ciertos criterios en nombre o ubicación.
    Reservas recientes por cliente: Muestra reservas recientes de un cliente específico.
    Promedio de reservas diarias: Calcula el promedio de reservas para un día específico.
    Hoteles sin reservas recientes: Muestra hoteles sin reservas en el último mes.
    Unir reservas con habitaciones disponibles: Muestra habitaciones disponibles con información de reservas.
    Mostrar historial de reservas/clientes/trabajadores/administradores: Muestra registros completos de reservas, clientes, trabajadores y administradores.
    Buscar por detalles específicos: Permite buscar clientes, trabajadores, administradores, habitaciones y reservas usando varios criterios.