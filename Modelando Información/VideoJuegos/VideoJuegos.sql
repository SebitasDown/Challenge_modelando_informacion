CREATE DATABASE VideoJuegos;
USE VideoJuegos;

CREATE TABLE Cliente (
	id_cliente INT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	correo VARCHAR(100) UNIQUE NOT NULL,
	numero_cuenta VARCHAR(50) NOT NULL
);

CREATE TABLE Juego (
	id_juego INT AUTO_INCREMENT PRIMARY KEY,
    plataforma ENUM('PC', 'PlayStation', 'Xbox', 'Nintendo', 'Móvil') NOT NULL,
	genero ENUM('Acción', 'Aventura', 'Estrategia', 'Deportes', 'Simulación', 'RPG') NOT NULL,
    descripcion_juego VARCHAR(200)
);

CREATE TABLE Venta (
	id_venta INT AUTO_INCREMENT PRIMARY KEY,
    cantidad INT NOT NULL,
	estado_venta ENUM('Pendiente', 'Pagado', 'Cancelado') NOT NULL,
    fecha DATE,
    id_cliente INT NOT NULL,
    id_juego INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
	FOREIGN KEY (id_juego) REFERENCES Juego(id_juego)
);