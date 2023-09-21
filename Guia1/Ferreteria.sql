
CREATE DATABASE Ferreteria;
go
USE Ferreteria;
-- Crear la tabla Direcciones
CREATE TABLE Direcciones (
    idDireccion INT IDENTITY(1,1) PRIMARY KEY,
    Linea1 VARCHAR(255),
    Linea2 VARCHAR(255),
    CP VARCHAR(10),
	Distrito VARCHAR(50) ,
    Municipio VARCHAR(50), 
    Departamento VARCHAR(50)
);
-- Crear la tabla Empleados
CREATE TABLE Empleados (
    idEmpleado INT IDENTITY(1,1) PRIMARY KEY,
    Nombres VARCHAR(50) NOT NULL, -- Reduje la longitud máxima para nombres y apellidos y agregué restricción NOT NULL
    Apellidos VARCHAR(50) NOT NULL,
    DUI VARCHAR(10) UNIQUE, -- Agregué una restricción UNIQUE para asegurar que el DUI sea único
    ISSS VARCHAR(17), -- ISSS (Instituto Salvadoreño del Seguro Social) tiene un formato de 17 caracteres
    IDDireccion INT, -- Referencia a Direcciones
    FechaNacimiento DATE,
    Telefono VARCHAR(15), -- Aumenté la longitud máxima para números de teléfono
    Email VARCHAR(100) -- Aumenté la longitud máxima para direcciones de correo electrónico
);


-- Crear la tabla Proveedores
CREATE TABLE Proveedores (
    idProveedor INT IDENTITY(1,1) PRIMARY KEY,
    Telefono VARCHAR(15),
    idDireccion INT REFERENCES Direcciones(idDireccion),
    Nombre VARCHAR(100)
);
-- Crear la tabla Categorías
CREATE TABLE Categorias (
    idCategoria INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(50) NOT NULL,
    Descripcion NVARCHAR(MAX)
);


-- Crear la tabla Productos
CREATE TABLE Productos (
    idProducto INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Descripcion NVARCHAR(MAX), -- Puedes usar NVARCHAR para admitir caracteres multilingües
    Precio DECIMAL(10, 2) NOT NULL DEFAULT 0.00, -- Ajusta la precisión del precio según tus necesidades
    Stock INT NOT NULL DEFAULT 0, -- Ajusta el valor predeterminado según tus necesidades
	IdCategoria INT,
    FechaCreacion DATETIME2 NOT NULL DEFAULT GETDATE(),
    FechaModificacion DATETIME2,
    Activo BIT NOT NULL DEFAULT 1 -- Para marcar si el producto está activo o inactivo
	FOREIGN KEY (IdCategoria) REFERENCES Categorias(IdCategoria),
);

-- Crear la tabla Clientes
CREATE TABLE Clientes (
    idCliente INT IDENTITY(1,1) PRIMARY KEY,
    Nombres VARCHAR(50) NOT NULL, -- Reduje la longitud máxima para nombres y apellidos y agregué restricción NOT NULL
    Apellidos VARCHAR(50) NOT NULL,
    DUI VARCHAR(10) UNIQUE, -- Agregué una restricción UNIQUE para asegurar que el DUI sea único
    Telefono VARCHAR(15) -- Aumenté la longitud máxima para números de teléfono
);


-- Crear la tabla Pedidos
CREATE TABLE Pedidos (
    idPedido INT IDENTITY(1,1) PRIMARY KEY,
    Fecha DATE,
    IDProveedor INT,
    Observaciones VARCHAR(255), -- Aumenté la longitud máxima de Observaciones para mayor flexibilidad
    CostoTotal DECIMAL(10, 2),
    IDEmpleado INT,
    FOREIGN KEY (IDProveedor) REFERENCES Proveedores(idProveedor),
    FOREIGN KEY (IDEmpleado) REFERENCES Empleados(idEmpleado),
    FechaCreacion DATETIME2 NOT NULL DEFAULT GETDATE() -- Agregué una columna de FechaCreacion para rastrear la fecha de creación del registro de pedido
);
CREATE TABLE DetallePedidos (
    idDetallePedido INT IDENTITY(1,1) PRIMARY KEY,
    idPedido INT,
    idProducto INT,
    Cantidad INT NOT NULL,
    PrecioUnitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (idPedido) REFERENCES Pedidos(idPedido),
    FOREIGN KEY (idProducto) REFERENCES Productos(idProducto)
);
-- Crear la tabla Compras
CREATE TABLE Compras (
    idCompra INT IDENTITY(1,1) PRIMARY KEY,
    IDCliente INT,
    IDEmpleado INT,
    FechaCompra DATE,
    MontoCompra DECIMAL(10, 2),
    FOREIGN KEY (IDCliente) REFERENCES Clientes(idCliente),
    FOREIGN KEY (IDEmpleado) REFERENCES Empleados(idEmpleado),
    FechaCreacion DATETIME2 NOT NULL DEFAULT GETDATE() -- Para registrar la fecha de creación del registro de compra
);

-- Crear la tabla Detalle de Compras (Tabla intermedia)
CREATE TABLE DetalleCompras (
    idDetalleCompra INT IDENTITY(1,1) PRIMARY KEY,
    idCompra INT,
    idProducto INT,
    Cantidad INT NOT NULL,
    PrecioUnitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (idCompra) REFERENCES Compras(idCompra),
    FOREIGN KEY (idProducto) REFERENCES Productos(idProducto)
);
-- Crear la tabla Facturas
CREATE TABLE Facturas (
    idFactura INT IDENTITY(1,1) PRIMARY KEY,
    NumeroFactura VARCHAR(20) NOT NULL, -- Agregué restricción NOT NULL para el número de factura
    CreditoFiscal VARCHAR(50) NOT NULL, -- Agregué restricción NOT NULL para el crédito fiscal
    IVA DECIMAL(5, 2) NOT NULL, -- Agregué restricción NOT NULL para el IVA
    IdCliente INT REFERENCES Clientes(idCliente),
    Monto DECIMAL(10, 2) NOT NULL, -- Agregué restricción NOT NULL para el monto
    FechaFactura DATE, -- Agregué la fecha de la factura
    FechaCreacion DATETIME2 NOT NULL DEFAULT GETDATE() -- Agregué la fecha de creación de la factura
);

