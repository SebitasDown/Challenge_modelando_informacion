CREATE DATABASE Agencia_viaje;
USE Agencia_viaje;
-- Tabla cliente
CREATE TABLE Cliente (
	id_cliente INT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
    -- Recordar que UNIQUE es para que el valor no se repita en toda la lista
	correo VARCHAR(100) UNIQUE NOT NULL,
	telefono VARCHAR(20)
);

-- Tabla paquete
CREATE TABLE Paquete (
	id_paquete INT AUTO_INCREMENT PRIMARY KEY,
    destino VARCHAR(100) NOT NULL,
    duracion_dias INT,
    precio DECIMAL (10,2)
);

CREATE TABLE Reserva (
	id_reserva INT AUTO_INCREMENT PRIMARY KEY,
	estado_reserva VARCHAR(50),
    medio_pago VARCHAR(50),
    personas_reservadas INT,
    fecha DATE,
    id_cliente INT NOT NULL,
    id_paquete INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
	FOREIGN KEY (id_paquete) REFERENCES Paquete(id_paquete)
);




