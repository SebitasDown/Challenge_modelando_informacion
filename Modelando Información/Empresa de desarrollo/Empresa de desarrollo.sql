CREATE DATABASE Empresa_desarrollo;
USE Empresa_desarrollo;

CREATE TABLE Empleado (
	id_empleado INT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	correo VARCHAR(100) UNIQUE NOT NULL,
	telefono VARCHAR(20)
);

CREATE TABLE Proyecto (
	id_proyecto INT AUTO_INCREMENT PRIMARY KEY,
    fecha_limite DATE,
    nombre_proyecto VARCHAR(100) NOT NULL
);

CREATE TABLE Tarea (
	id_tarea INT AUTO_INCREMENT PRIMARY KEY,
    descripcion_tarea VARCHAR (100),
    fecha_entrega DATE,
    prioridad ENUM('Alta', 'Media', 'Baja'),
    id_empleado INT NOT NULL,
    id_proyecto INT NOT NULL,
    FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado),
	FOREIGN KEY (id_proyecto) REFERENCES Proyecto(id_proyecto)
);













