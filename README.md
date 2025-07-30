# 📦 Proyecto de Modelado de Bases de Datos en MySQL

Este repositorio contiene varios modelos de bases de datos diseñados para representar distintos sistemas reales utilizando MySQL. Cada uno incluye la estructura SQL necesaria para crear las tablas, relaciones y restricciones fundamentales.

---

## 🗂 Bases de Datos Incluidas

### 1. 🍰 Pastelería

Sistema que gestiona clientes, productos y pedidos de una pastelería.

**Tablas:**
- `Cliente`: Información personal del cliente.
- `Producto`: Datos sobre los productos vendidos.
- `Pedido`: Relación entre cliente y producto, con estado y fecha.

**Relaciones:**
- Un cliente puede hacer varios pedidos.
- Cada pedido corresponde a un único producto.

---

### 2. 🎮 Venta de Videojuegos

Modelo para registrar la venta de videojuegos a clientes.

**Tablas:**
- `Cliente`: Contiene información personal y número de cuenta.
- `Juego`: Plataforma, género y descripción.
- `Venta`: Detalles de la compra de juegos por parte de los clientes.

**Relaciones:**
- Un cliente puede comprar varios juegos.
- Cada venta se relaciona con un cliente y un juego.

---

### 3. 🚚 Servicio a Domicilio

Sistema para gestionar pedidos, clientes y repartidores.

**Tablas:**
- `Cliente`: Datos de contacto y dirección.
- `Repartidor`: Información del personal de entregas.
- `Pedido`: Estado, zona, fecha y asignación de cliente y repartidor.

**Relaciones:**
- Un cliente puede hacer varios pedidos.
- Un repartidor puede estar asignado a múltiples pedidos.

---

### 4. 👨‍💻 Empresa de Desarrollo de Software

Base de datos para asignar tareas a empleados dentro de proyectos.

**Tablas:**
- `Empleado`
- `Proyecto`
- `Tarea`

**Relaciones:**
- Un empleado puede tener múltiples tareas.
- Un proyecto puede tener muchas tareas asociadas.

---

## 🛠️ Tecnologías

- MySQL 8+
- MySQL Workbench (opcional)
- SQL estándar (DDL - Data Definition Language)

---

## 🚀 Cómo usar

1. Clona el repositorio:
   ```bash
   git clone https://github.com/SebitasDown/Challenge_modelando_informacion.git
   cd Challenge_modelando_informacion
