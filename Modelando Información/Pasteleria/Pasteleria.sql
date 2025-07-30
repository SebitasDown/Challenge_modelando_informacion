CREATE DATABASE Pasteleria;
USE Pasteleria;

CREATE TABLE Cliente (
	id_cliente INT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	correo VARCHAR(100) UNIQUE NOT NULL,
	direccion VARCHAR(200)
);

CREATE TABLE Producto (
	id_producto INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE,
    tipo_producto ENUM ('Pastel', 'Cupcake', 'Galleta', 'Otro') NOT NULL
);

CREATE TABLE Pedido (
	id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    descripcion_pedido VARCHAR (100),
    estado_pedido ENUM('Pendiente', 'En preparación', 'Entregado', 'Cancelado') NOT NULL,
    fecha DATE,
	id_cliente INT NOT NULL,
    id_producto INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
	FOREIGN KEY (id_producto) REFERENCES Producto(id_producto)
);