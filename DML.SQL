INSERT INTO Ingredientes (nombre, fecha_ingreso, Proveedor) VALUES
("MASA", "2026-09-25", "MOLINOS"),
("MOZZARELA", "2026-09-10", "PARMA"),
("PEPERONI", "2026-09-01", "MOLINOS"),
("SALSA DE TOMATE", "2026-09-30", "PREGO"),
("SALCHICHA ITALIANA", "2026-08-01", "BREMEN"),
("VEGETALES", "2026-08-08", "LATERMINAL"),
("CREMA", "2026-09-25", "PARMA"),
("LECHE", "2026-09-25", "FRESAS"),
("FRESAS", "2026-09-25", "LATERMINAL"),
("CHOCOLATE", "2026-09-25", "GRANADA");

INSERT INTO Pizzas (nombre, descripcion, precio, idIngredientes) VALUES
("Pizza de peperoni", "Deliciosa pizza de peperoni", 80.00, 3),
("Pizza de salchicha", "Deliciosa pizza de salchicha", 85.00, 5),
("Pizza de queso", "Deliciosa pizza de queso", 70.00, 2),
("Pizza suprema", "Deliciosa pizza e vegetales y carne", 90.00, 3);

INSERT into Panzarotti (nombre, descripcion, precio, idIngredientes) VALUES
("Panzarotti de queso", "Deliciosa panzarotti de queso", 30, 2),
("Panzarotti de vegetales", "Deliciosa panzarotti de vegetales", 40, 6),
("Panzarotti de salchicha", "Delicioso panzarotti de salchicha", 30, 4);

INSERT into Postres (nombre, descripcion, precio, idIngredientes) VALUES
("Pastel de chocolate", "Delicioso pastel de chocolate", 28.00, 10),
("Tiramisu", "Delicioso tiramisu", 30.00, 8);

INSERT into Bebidas (nombre, descripcion, precio) VALUES
("coca-cola", "Deliciosa Coca-cola", 10.00),
("Pepsi", "Pepsi", 30.00);

INSERT into Bebidas (nombre, descripcion, precio) VALUES
("coca-cola", "Deliciosa Coca-cola", 10.00),
("Pepsi", "Pepsi", 30.00);
