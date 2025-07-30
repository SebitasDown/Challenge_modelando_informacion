CREATE DATABASE Servicio_domicilio;
USE Servicio_domicilio;

CREATE TABLE Cliente (
	id_cliente INT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	correo VARCHAR(100) UNIQUE NOT NULL,
	telefono VARCHAR(20),
	direccion VARCHAR(200)
);

CREATE TABLE Repartidor (
	id_repartidor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) UNIQUE NOT NULL,
	telefono VARCHAR(20)
);

CREATE TABLE Pedido (
	id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    estado_pedido ENUM('Pendiente', 'En preparación', 'Entregado', 'Cancelado') NOT NULL,
    fecha DATE,
	id_cliente INT NOT NULL,
    id_repartidor INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
	FOREIGN KEY (id_repartidor) REFERENCES Repartidor(id_repartidor)
);