CREATE DATABASE PIZZA_CAMPUS;
USE PIZZA_CAMPUS


CREATE TABLE Ingredientes(
  idIngredientes INT  PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  fecha_ingreso DATE NOT NULL,
  Proveedor VARCHAR(50) NOT NULL
);

CREATE TABLE Pizzas(
  idPizza INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  descripcion VARCHAR(50) NOT NULL,
  precio DECIMAL(10,2),
  idIngredientes INT,
  FOREIGN KEY (idIngredientes) REFERENCES Ingredientes (idIngredientes)
);

CREATE TABLE Panzarotti (
    idPanzarotti INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(50) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    idIngredientes INT,
    FOREIGN KEY (idIngredientes) REFERENCES Ingredientes (idIngredientes)
);

CREATE TABLE Postres (
    idPostres INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion DECIMAL(10,2) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    idIngredientes INT,
    FOREIGN KEY (idIngredientes) REFERENCES Ingredientes (idIngredientes)
);

CREATE TABLE Bebidas (
    iBebidas INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(50) NOT NULL,
    precio VARCHAR(50) NOT NULL
);


CREATE TABLE productos (
    IdProductos INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    idPizza INT,
    idPostres INT,
    idPanzarotti INT,
    iBebidas INT,
    FOREIGN KEY (idPizza) REFERENCES Pizzas (idPizza),
    FOREIGN KEY (idPostres) REFERENCES Postres (idPostres),
    FOREIGN KEY (idPanzarotti) REFERENCES Panzarotti(idPanzarotti),
    FOREIGN KEY (iBebidas) REFERENCES Bebidas (iBebidas)
);  

CREATE TABLE Combos (
    idCombos INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    precio DECIMAL(10,2),
    IdProductos INT,
    FOREIGN KEY (IdProductos) REFERENCES productos (IdProductos)
    
);

CREATE TABLE Menu (
    idMenu INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(100) NOT NULL,
	IdProductos INT,
    idCombos    INT,
    FOREIGN KEY (IdProductos) REFERENCES productos (IdProductos),
    FOREIGN KEY (idCombos) REFERENCES Combos (idCombos)
 
);

CREATE TABLE Extras (
    idExtras INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    precio DECIMAL(10,2)
);

CREATE TABLE Crear_orden (
    idOrden INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    idMenu INT,
    idExtras INT,
    FOREIGN KEY (idMenu) REFERENCES Menu (idMenu),
    FOREIGN KEY (idExtras) REFERENCES Extras (idExtras)
);

CREATE TABLE Pedidos (
    idPedido INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    idOrden INT,
    FOREIGN KEY (idOrden) REFERENCES Crear_orden (idOrden)

);