CREATE DATABASE second_sql_lab

USE second_sql_lab;
-- Crear la tabla de Coches
CREATE TABLE Coches (
    ID_Coche INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(20) NOT NULL,
    Fabricante VARCHAR(50),
    Modelo VARCHAR(50),
    Año INT,
    Color VARCHAR(20)
);

-- Crear la tabla de Clientes
CREATE TABLE Clientes (
    ID_Cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100),
    Teléfono VARCHAR(20),
    Correo VARCHAR(100),
    Dirección VARCHAR(255),
    Ciudad VARCHAR(50),
    Estado_Provincia VARCHAR(50),
    País VARCHAR(50),
    Postal VARCHAR(20)
);

-- Crear la tabla de Vendedores
CREATE TABLE Vendedores (
    ID_Vendedor INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100),
    Tienda VARCHAR(100)
);

-- Crear la tabla de Facturas
CREATE TABLE Facturas (
    ID_Factura INT AUTO_INCREMENT PRIMARY KEY,
    Numero_Factura VARCHAR(50) UNIQUE,
    Fecha DATE,
    ID_Coche INT,
    ID_Cliente INT,
    ID_Vendedor INT,
    FOREIGN KEY (ID_Coche) REFERENCES Coches(ID_Coche),
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente),
    FOREIGN KEY (ID_Vendedor) REFERENCES Vendedores(ID_Vendedor)
);
