Drop Database if exists Ferreteria;
go
CREATE DATABASE Ferreteria;
go
USE Ferreteria;
-- TABLAS
-- DIRECCIONES
go
create table Departamentos(
	ID_Departamento char(2) primary key,
	Departamento varchar(60) not null,
	Pais varchar(60)
);
go
create table Municipios(
	ID_Municipio char(3) primary key,
	Municipio varchar(60) not null,
	ID_Departamento char(2) not null
);
go
create table Distritos(
	ID_Distrito varchar(5) primary key,
	Distrito varchar(60) not null,
	ID_Municipio char(3) not null
);
go
create table Direcciones(
	ID_Direccion int primary key identity(1, 1),
    Linea1 varchar(100) not null,
    Linea2 varchar(100),
    ID_Distrito varchar(5) not null,
    CodigoPostal int,
);

go
create table Cargos(
	ID_Cargo int primary key identity(1, 1),
    Cargo varchar(45) not null
);
go
create table Empleados(
	idEmpleado int primary key identity(1, 1),
    DUI varchar(10) unique not null,
    ISSS int not null,
    Nombres varchar(60) not null,
    Apellidos varchar(60) not null,
    FechaNacEmpleado date not null,
    Telefono varchar(10) not null,
    Correo varchar(100),
    ID_Cargo int not null,
    ID_Direccion int not null   
);

-- MANEJO DE ROLES
go
create table Opciones(
	ID_Opcion int primary key identity(1, 1),
    NombreOpcion varchar(60) not null
);
go
create table Roles(
	ID_Rol int primary key identity(1, 1),
    NombreRol varchar(60) not null
);
go 

create table AsignacionRolesOpciones(
	ID_AsignacionRol int primary key identity(1, 1),
    ID_Rol int not null,
    ID_Opcion int not null
);
go
create table Usuarios(
	ID_Usuario int primary key identity(1, 1),	
    ID_Empleado int not null,
	ID_Rol int not null,
    Usuario varchar(60) not null,
    Clave varchar(60) not null,
);

-- Crear la tabla Proveedores
CREATE TABLE Proveedores (
    idProveedor INT IDENTITY(1,1) PRIMARY KEY,
    Telefono VARCHAR(15),
    idDireccion INT REFERENCES Direcciones(ID_Direccion),
    Nombre VARCHAR(100)
);
-- Crear la tabla Categor�as
CREATE TABLE Categorias (
    idCategoria INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(50) NOT NULL,
    Descripcion NVARCHAR(MAX)

);


-- Crear la tabla Productos
CREATE TABLE Productos (
    idProducto INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Descripcion TEXT, -- 
    Precio DECIMAL(10, 2) NOT NULL DEFAULT 0.00, 
    Stock INT NOT NULL DEFAULT 0, 
	IdCategoria INT,
    FechaCreacion DATETIME2 NOT NULL DEFAULT GETDATE(),
	ImagenURL VARCHAR(255),
    FechaModificacion DATETIME2,
    Activo BIT NOT NULL DEFAULT 1 ,
	FOREIGN KEY (IdCategoria) REFERENCES Categorias(IdCategoria)
);

-- Crear la tabla Clientes
CREATE TABLE Clientes (
    idCliente INT IDENTITY(1,1) PRIMARY KEY,
    Nombres VARCHAR(50) NOT NULL, 
    Apellidos VARCHAR(50) NOT NULL,
    DUI VARCHAR(10) UNIQUE, -- Agregue una restriccion UNIQUE para asegurar que el DUI sea unico
    Telefono VARCHAR(15) -- Aumente la longitud maxima para numeros de telefono
);


-- Crear la tabla Pedidos
CREATE TABLE Pedidos (
    idPedido INT IDENTITY(1,1) PRIMARY KEY,
    Fecha DATE,
    IDProveedor INT,
    Observaciones VARCHAR(255),
    CostoTotal DECIMAL(10, 2),
	Estado VARCHAR(50),
    IDEmpleado INT,
    FOREIGN KEY (IDProveedor) REFERENCES Proveedores(idProveedor),
    FOREIGN KEY (IDEmpleado) REFERENCES Empleados(idEmpleado),
    FechaCreacion DATETIME2 NOT NULL DEFAULT GETDATE()
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
-- Crear la tabla Ventas
CREATE TABLE Ventas (
    idVenta INT IDENTITY(1,1) PRIMARY KEY,
    IDCliente INT,
    IDEmpleado INT,
    FechaCompra DATE,
    MontoCompra DECIMAL(10, 2),
    FOREIGN KEY (IDCliente) REFERENCES Clientes(idCliente),
    FOREIGN KEY (IDEmpleado) REFERENCES Empleados(idEmpleado),
    FechaCreacion DATETIME2 NOT NULL DEFAULT GETDATE() 
);
-- Crear la tabla Detalle de Ventas (Tabla intermedia)
CREATE TABLE DetalleVentas (
    idDetalleVenta INT IDENTITY(1,1) PRIMARY KEY,
    idVenta INT,
    idProducto INT,
    Cantidad INT NOT NULL,
    FOREIGN KEY (idVenta) REFERENCES Ventas(idVenta),
    FOREIGN KEY (idProducto) REFERENCES Productos(idProducto)
);


CREATE TABLE Compras (
    idCompra INT IDENTITY(1,1) PRIMARY KEY,
    IDProveedor INT,
    IDEmpleado INT,
    FechaCompra DATE,
    MontoCompra DECIMAL(10, 2),
    FechaCreacion DATETIME2 NOT NULL DEFAULT GETDATE(),
    FOREIGN KEY (IDProveedor) REFERENCES Proveedores(idProveedor),
    FOREIGN KEY (IDEmpleado) REFERENCES Empleados(idEmpleado)
);

CREATE TABLE DetalleCompras (
    idDetalleCompra INT IDENTITY(1,1) PRIMARY KEY,
    idCompra INT,
    idProducto INT,
    Cantidad INT NOT NULL,
    PrecioUnitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (idCompra) REFERENCES Compras(idCompra),
    FOREIGN KEY (idProducto) REFERENCES Productos(idProducto)
);

-- Modificar la tabla Facturas para incluir una referencia a la tabla Compras
CREATE TABLE Facturas (
    idFactura INT IDENTITY(1,1) PRIMARY KEY,
    NumeroFactura VARCHAR(20) NOT NULL, 
    CreditoFiscal VARCHAR(50) , 
    IVA DECIMAL(5, 2) NOT NULL, 
    idVenta INT, 
    IdCliente INT,
    Monto DECIMAL(10, 2) NOT NULL, --  NOT NULL para el monto
    FechaFactura DATE, -- 
    FechaCreacion DATETIME2 NOT NULL DEFAULT GETDATE(), 
    FOREIGN KEY (idVenta) REFERENCES Ventas(idVenta), 
    FOREIGN KEY (IdCliente) REFERENCES Clientes(idCliente) 
);

alter table Municipios add foreign key (ID_Departamento) references Departamentos(ID_Departamento);
alter table Distritos add foreign key (ID_Municipio) references Municipios(ID_Municipio);
alter table Direcciones add foreign key (ID_Distrito) references Distritos(ID_Distrito);
alter table Empleados add foreign key (ID_Cargo) references Cargos(ID_Cargo);
alter table Empleados add foreign key (ID_Direccion) references Direcciones(ID_Direccion);

alter table Usuarios add foreign key (ID_Empleado) references Empleados(idEmpleado);
alter table Usuarios add foreign key (ID_Rol) references Roles(ID_Rol);
alter table AsignacionRolesOpciones add foreign key (ID_Rol) references Roles(ID_Rol);
alter table AsignacionRolesOpciones add foreign key (ID_Opcion) references Opciones(ID_Opcion);