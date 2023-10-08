-- Inserciones 

INSERT INTO Direcciones (Linea1, Linea2, CP, Municipio, Departamento)
VALUES
    ('Calle Principal 1', 'Colonia Este', 'CP78580', 'Sonsonate', 'Sonsonate'),
    ('Calle Principal 2', 'Colonia 14-',  'CP45690', 'Sonsonate', 'Sonsonate'),
    ('Calle Principal 3', 'Colonia Sur', 'CP78291', 'Sonsonate', 'Sonsonate'),
    ('Calle Principal 4', 'Colonia Principal', 'CP34426','Sonsonate', 'Sonsonate'),
    ('Calle Principal 5', 'Colonia Norte', 'CP90576','Sonsonate', 'Sonsonate');

INSERT INTO Empleados (Nombre, Apellidos, DUI, ISSS, IDDireccion, FechaNacimiento, Telefono, Email)
VALUES
    ('Antonio', 'Martinez', '62446778-0', 'ISSS57748660985', 1, '1999-09-02', '7678-8897', 'Antonio0@email.com'),
    ('Karla', 'Mendez', '76458896-0', 'ISSS46995400897', 2, '1995-01-30', '6877-5400', 'karlam@email.com'),
    ('Saul', 'Aguirre', '57559477-1', 'ISSS21120957469', 3, '1989-11-13', '7656-0097', 'saul_aguirre@email.com'),
    ('Melissa', 'Hernandez', '19392748-0', 'ISSS54773789975', 4, '1992-12-16', '7231-2287', 'meliHernandez@email.com'),
    ('Marta', 'Escobar', '34286672-1', 'ISSS33269986577', 5, '1994-12-05', '7765-7867', 'Marta_Escobar@email.com');
	
INSERT INTO Proveedores (Telefono, idDireccion, Nombre)
VALUES
    ('2455-8700', 1, 'Distribuidora Lopez'),
    ('2282-1244', 2, 'Distribuidora M.C.'),
    ('7746-9065', 3, 'Distribuidora Garcia'),
    ('2099-7578', 4, 'Distribuidora Valencia'),
    ('6874-3467', 5, 'Distribuidora Fernandez');

INSERT INTO Clientes (Nombres, Apellidos, DUI, Telefono)
VALUES
    ('Sara', 'Melendez', '55468896-0', '7878-0997'),
    ('Ernesto', 'Perez', '62743359-6', '7245-8988'),
    ('Karina', 'Garcia', '67253886-0', '6763-9122'),
    ('Luis', 'Martinez', '34447890-1', '7128-9903'),
    ('Ezequiel', 'Godinez', '65372920-1', '7746-8234');

INSERT INTO Categorias (Nombre, Descripcion)
VALUES
    ('Iluminaria', 'Productos de iluminación'),
    ('Herramientas para Jardinería', 'Herramientas de jardín y accesorios'),
    ('Pintura y Acabados', 'Pinturas y suministros de pintura'),
    ('Construcción y Materiales', 'Materiales de construcción y herramientas'),
    ('Cerrajería', 'Cerraduras, llaves y sistemas de seguridad');

INSERT INTO Productos (NombreProducto, IDProveedor, Descripcion, Precio, Stock, IdCategoria, FechaCreacion, FechaModificacion)
VALUES
    ('Rotomartillo Inalámbrico', 1, 'Potente rotomartillo inalámbrico para perforaciones precisas.', 229.99, 75, 1, '2023-09-27', '2023-09-28'),
    ('Licuadora Multifuncional Profesional', 2, 'Licuadora de alto rendimiento con múltiples funciones y potencia mejorada.', 149.99, 45, 1, '2023-09-29', '2023-09-30'),
    ('Martillo de Carpintero Resistente', 3, 'Martillo de carpintero resistente con mango de madera y cabeza de acero.', 44.99, 110, 4, '2023-10-01', '2023-10-02'),
    ('Lámpara de Techo LED Moderna', 4, 'Lámpara de techo LED moderna de bajo consumo con diseño elegante.', 64.99, 90, 1, '2023-10-03', '2023-10-04'),
    ('Set de Pinceles Artísticos Profesionales', 5, 'Set de pinceles artísticos profesionales con cerdas de alta calidad.', 69.99, 25, 3, '2023-10-05', '2023-10-06');


INSERT INTO Pedidos (Fecha, IDProveedor, Observaciones, CostoTotal, IDEmpleado)
VALUES
    ('2023-09-20', 1, 'Pedido de herramientas de alta calidad', 780.00, 1),
    ('2023-09-21', 2, 'Compra de electrodomésticos para el hogar', 520.00, 2),
    ('2023-09-22', 3, 'Adquisición de suministros de ferretería esenciales', 310.00, 3),
    ('2023-09-23', 4, 'Pedido de iluminación para renovación de oficinas', 220.00, 4),
    ('2023-09-24', 5, 'Adquisición de pintura y material de arte', 315.00, 5);

INSERT INTO Compras (IDCliente, IDEmpleado, FechaCompra, MontoCompra)
VALUES
    (1, 1, '2023-09-19', 260.00),
    (2, 2, '2023-10-20', 170.00),
    (3, 3, '2023-11-21', 110.00),
    (4, 4, '2023-12-22', 80.00),
    (5, 5, '2024-01-23', 130.00);

INSERT INTO Facturas (NumeroFactura, CreditoFiscal, IVA, IdCliente, Monto)
VALUES
    ('FAC006', 'CF006', 13.00, 1, 230.00),
    ('FAC007', 'CF007', 13.00, 2, 145.00),
    ('FAC008', 'CF008', 13.00, 3, 95.00),
    ('FAC009', 'CF009', 13.00, 4, 68.00),
    ('FAC010', 'CF010', 13.00, 5, 110.00);

--Consultas Normales

--Calcular el total de productos que hay en stock cuando su precio es menor de $100.00
SELECT COUNT(*) AS TotalProductos
FROM Productos
WHERE Precio < 100 AND Stock > 0;

--Calcular el total de productos que hay en stock cuando su precio es mayor de $200.00
SELECT COUNT(*) AS TotalProductos
FROM Productos
WHERE Precio > 200 AND Stock > 0;

--Productos con precio más alto
SELECT NombreProducto, Precio
FROM Productos
WHERE Precio > (SELECT AVG(Precio) FROM Productos);

--Mostrar Categoria especifica
SELECT * FROM Categorias 
WHERE Nombre = 'Iluminaria' 

--Los empleados que nacieron a partir de 1994
SELECT idEmpleado, Nombre, Apellidos 
FROM Empleados 
WHERE FechaNacimiento > '1994'

--Consultas de tipo Multitabla, Subconsulta y Joins 

--Productos y sus proveedores
SELECT p.NombreProducto, c.Nombre AS Proveedor
FROM Productos p
INNER JOIN Proveedores c ON p.IDProveedor = c.idProveedor;

--Productos y sus categorias
SELECT p.NombreProducto, c.Nombre AS Categoria
FROM Productos p
INNER JOIN Categorias c ON p.IdCategoria = c.IdCategoria;

--Cantidad total de productos en stock por proveedor
SELECT pr.Nombre AS Proveedor, SUM(p.Stock) AS TotalStock
FROM Productos p
INNER JOIN Proveedores pr ON p.IDProveedor = pr.IDProveedor
GROUP BY pr.Nombre;

--Mostrar informacion de los pedido
SELECT pe.Fecha, e.Nombre AS Empleado, pe.CostoTotal
FROM Pedidos pe
INNER JOIN Empleados e ON pe.IDEmpleado = e.IDEmpleado;

--Mostrar informacion de las facturas
SELECT f.NumeroFactura, c.Nombres AS Cliente, f.Monto
FROM Facturas f
INNER JOIN Clientes c ON f.IdCliente = c.IDCliente;
