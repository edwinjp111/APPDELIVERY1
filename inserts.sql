INSERT INTO Usuario (id_usuario, nombre, correo, telefono)
VALUES (
       1,
       'juan perez',
       'juanperez@gmail.com',
       '1234567890'
    ),
    (
       2,
       'maria lopez',
       'marialopez@gmail.com',
       '0987654321'
    ),
    (
       3,
       'carlos gomez',
       'carlosgomez@gmail.com',
       '1122334455'
       );

       

INSERT INTO Restaurante
(id_restaurante, nombre, direccion, telefono, categoria, estado)
VALUES
(1, 'El Buen Sabor', 'Calle 10 #5-20', '3001112233', 'Comida rapida', 'Activo'),
(2, 'La Casa del Pollo', 'Carrera 8 #12-30', '3002223344', 'Pollo', 'Activo'),
(3, 'Pizza Express', 'Calle 15 #7-40', '3003334455', 'Pizza', 'Activo');



INSERT INTO Repartidor
(id_repartidor, nombre, telefono, placa_vehiculo, disponibilidad)
VALUES
(1, 'Andres Rodriguez', '3101112233', 'ABC123', 'Disponible'),
(2, 'Laura Martinez', '3102223344', 'DEF456', 'Disponible'),
(3, 'Pedro Sanchez', '3103334455', 'GHI789', 'Ocupado');

INSERT into categoria
(id_categoría, nombre) 
VALUES(1, 'comida rapida'),
(2, 'comida a la carta');

INSERT INTO Plato
(id_plato, id_restaurante, nombre, descripcion, precio, disponibilidad, id_categoría)
VALUES
(1, 1, 'Hamburguesa', 'Hamburguesa con queso', 18000, 1, 1),
(2, 1, 'Perro caliente', 'Perro caliente tradicional', 12000, 1, 1),
(3, 1, 'Salchipapa', 'Salchipapa con salsas', 15000, 1, 1),
(4, 1, 'Papas fritas', 'Porcion de papas fritas', 8000, 1, 1),
(5, 2, 'Pollo asado', 'Pollo asado con papas', 25000, 1, 2),
(6, 2, 'Alitas BBQ', 'Alitas con salsa BBQ', 20000, 1, 2),
(7, 2, 'Pechuga a la plancha', 'Pechuga con ensalada', 22000, 1, 2),
(8, 2, 'Arroz con pollo', 'Arroz con pollo y verduras', 17000, 1, 2),
(9, 3, 'Pizza hawaiana', 'Pizza con jamon y pina', 30000, 1, 1),
(10, 3, 'Pizza de pepperoni', 'Pizza con pepperoni y queso', 32000, 1, 1),
(11, 3, 'Pizza vegetariana', 'Pizza con verduras', 28000, 1, 1),
(12, 3, 'Lasana', 'Lasana de carne y queso', 24000, 1, 1);


INSERT INTO Pedido
(id_pedido, id_usuario, id_restaurante, id_repartidor,
 fecha_pedido, direccion_entrega, estado, total)
VALUES
(1, 1, 1, 1, CURRENT_TIMESTAMP, 'Calle 1', 'Pendiente', 18000),
(2, 2, 1, 2, CURRENT_TIMESTAMP, 'Calle 2', 'En camino', 12000),
(3, 3, 1, 3, CURRENT_TIMESTAMP, 'Calle 3', 'Entregado', 15000),
(4, 1, 1, 1, CURRENT_TIMESTAMP, 'Calle 4', 'Pendiente', 8000),
(5, 2, 2, 2, CURRENT_TIMESTAMP, 'Calle 5', 'En camino', 25000),
(6, 3, 2, 3, CURRENT_TIMESTAMP, 'Calle 6', 'Entregado', 20000),
(7, 1, 2, 1, CURRENT_TIMESTAMP, 'Calle 7', 'Pendiente', 22000),
(8, 2, 2, 2, CURRENT_TIMESTAMP, 'Calle 8', 'Entregado', 17000),
(9, 3, 3, 3, CURRENT_TIMESTAMP, 'Calle 9', 'En camino', 30000),
(10, 1, 3, 1, CURRENT_TIMESTAMP, 'Calle 10', 'Pendiente', 32000),
(11, 2, 3, 2, CURRENT_TIMESTAMP, 'Calle 11', 'Entregado', 28000),
(12, 3, 3, 3, CURRENT_TIMESTAMP, 'Calle 12', 'En camino', 24000);



INSERT INTO Detalle_Pedido
(id_detalle, id_pedido, id_plato, cantidad, precio_unitario)
VALUES
(1, 1, 1, 1, 18000),
(2, 2, 2, 1, 12000),
(3, 3, 3, 1, 15000),
(4, 4, 4, 1, 8000),
(5, 5, 5, 1, 25000),
(6, 6, 6, 1, 20000),
(7, 7, 7, 1, 22000),
(8, 8, 8, 1, 17000),
(9, 9, 9, 1, 30000),
(10, 10, 10, 1, 32000),
(11, 11, 11, 1, 28000),
(12, 12, 12, 1, 24000);



 




    
        