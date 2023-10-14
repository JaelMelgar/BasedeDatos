
use Ferreteria;
-- DIRECCIONES
-- Departamentos
go
insert into Departamentos values
--	ID_Departamento, Departamento, Pais 
	('AH', 'Ahuachap�n', 'El Salvador'),
	('CA', 'Caba�as', 'El Salvador'),
	('CH', 'Chalatenango', 'El Salvador'),
	('CU', 'Cuscatl�n', 'El Salvador'),
	('LL', 'La Libertad', 'El Salvador'),
	('LP', 'La Paz', 'El Salvador'),
	('LU', 'La Uni�n', 'El Salvador'),
	('MO', 'Moraz�n', 'El Salvador'),
	('SA', 'Santa Ana', 'El Salvador'),
	('SM', 'San Miguel', 'El Salvador'),
	('SS', 'San Salvador', 'El Salvador'),
	('SV', 'San Vicente', 'El Salvador'),
	('SO', 'Sonsonate', 'El Salvador'),
	('US', 'Usulut�n', 'El Salvador');
go
select * from Departamentos;

go
-- Municipios
insert into Municipios values
--	ID_Municipio, Municipio, ID_Departamento
	('AHN', 'Ahuachap�n Norte', 'AH'),
	('AHC', 'Ahuachap�n Centro', 'AH'),
	('AHS', 'Ahuachap�n Sur', 'AH'),
	('CAE', 'Caba�as Este', 'CA'),
	('CAO', 'Caba�as Oeste', 'CA'),
	('CHN', 'Chalatenango Norte', 'CH'),
	('CHC', 'Chalatenango Centro', 'CH'),
	('CHS', 'Chalatenango Sur', 'CH'),
	('CUN', 'Cuscatl�n Norte', 'CU'),
	('CUS', 'Cuscatl�n Sur', 'CU'),
	('LLN', 'La Libertad Norte', 'LL'),
	('LLC', 'La Libertad Centro', 'LL'),
	('LLO', 'La Libertad Oeste', 'LL'),
	('LLE', 'La Libertad Este', 'LL'),
	('LLS', 'La Libertad Sur', 'LL'),
	('LLT', 'La Libertad Costa', 'LL'),
	('LPO', 'La Paz Oeste', 'LP'),
	('LPC', 'La Paz Centro', 'LP'),
	('LPE', 'La Paz Este', 'LP'),
	('LUN', 'La Uni�n Norte', 'LU'),
	('LUS', 'La Uni�n Sur', 'LU'),
	('MON', 'Moraz�n Norte', 'MO'),
	('MOS', 'Moraz�n Sur', 'MO'),
	('SAN', 'Santa Ana Norte', 'SA'),
	('SAC', 'Santa Ana Centro', 'SA'),
	('SAE', 'Santa Ana Este', 'SA'),
	('SAO', 'Santa Ana Oeste', 'SA'),
	('SMN', 'San Miguel Norte', 'SM'),
	('SMC', 'San Miguel Centro', 'SM'),
	('SMO', 'San Miguel Oeste', 'SM'),
	('SSN', 'San Salvador Norte', 'SS'),
	('SSO', 'San Salvador Oeste', 'SS'),
	('SSE', 'San Salvador Este', 'SS'),
	('SSC', 'San Salvador Centro', 'SS'),
	('SSS', 'San Salvador Sur', 'SS'),
	('SVN', 'San Vicente Norte', 'SV'),
	('SVS', 'San Vicente Sur', 'SV'),
	('SON', 'Sonsonate Norte', 'SO'),
	('SOC', 'Sonsonate Centro', 'SO'),
	('SOE', 'Sonsonate Este', 'SO'),
	('SOO', 'Sonsonate Oeste', 'SO'),
	('USN', 'Usulut�n Norte', 'US'),
	('USE', 'Usulut�n Este', 'US'),
	('USO', 'Usulut�n Oeste', 'US');
go
select * from Municipios;

go
-- Distritos
insert into Distritos values
-- ID_Distrito, Distrito, ID_Municipio
-- Ahuachapan
	('AHN01', 'Atiquizaya', 'AHN'),
	('AHN02', 'El Refugio', 'AHN'),
	('AHN03', 'San Lorenzo', 'AHN'),
	('AHN04', 'Tur�n', 'AHN'),
	('AHC01', 'Ahuachap�n', 'AHC'),
	('AHC02', 'Apaneca', 'AHC'),
	('AHC03', 'Concepci�n de Ataco', 'AHC'),
	('AHC04', 'Tacuba', 'AHC'),
	('AHS01', 'Guaymango', 'AHS'),
	('AHS02', 'Jujutla', 'AHS'),
	('AHS03', 'San Francisco Men�ndez', 'AHS'),
	('AHS04', 'San Pedro Puxtla', 'AHS'),
-- Caba�as
	('CAE01', 'Sensuntepeque', 'CAE'),
	('CAE02', 'Victoria', 'CAE'),
	('CAE03', 'Dolores', 'CAE'),
	('CAE04', 'Guacotecti', 'CAE'),
	('CAE05', 'San Isidro', 'CAE'),
	('CAO01', 'Ilobasco', 'CAO'),
	('CAO02', 'Tejutepeque', 'CAO'),
	('CAO03', 'Jutiapa', 'CAO'),
	('CAO04', 'Cinquera', 'CAO'),
-- Chalatenango
	('CHN01', 'La Palma', 'CHN'),
	('CHN02', 'Cital�', 'CHN'),
	('CHN03', 'San Ignacio', 'CHN'),
	('CHC01', 'Nueva Concepci�n', 'CHC'),
	('CHC02', 'Tejutla', 'CHC'),
	('CHC03', 'La Reina', 'CHC'),
	('CHC04', 'Agua Caliente', 'CHC'),
	('CHC05', 'Dulce Nombre de Mar�a', 'CHC'),
	('CHC06', 'El Para�so', 'CHC'),
	('CHC07', 'San Fernando', 'CHC'),
	('CHC08', 'San Francisco Moraz�n', 'CHC'),
	('CHC09', 'San Rafael', 'CHC'),
	('CHC10', 'Santa Rita', 'CHC'),
	('CHS01', 'Chalatenango', 'CHS'),
	('CHS02', 'Arcatao', 'CHS'),
	('CHS03', 'Azacualpa', 'CHS'),
	('CHS04', 'Comalapa', 'CHS'),
	('CHS05', 'Concepci�n Quezaltepeque', 'CHS'),
	('CHS06', 'El Carrizal', 'CHS'),
	('CHS07', 'La Laguna', 'CHS'),
	('CHS08', 'Las Vueltas', 'CHS'),
	('CHS09', 'Nombre de Jes�s', 'CHS'),
	('CHS10', 'Nueva Trinidad', 'CHS'),
	('CHS11', 'Ojos de Agua', 'CHS'),
	('CHS12', 'Potonico', 'CHS'),
	('CHS13', 'San Antonio de La Cruz', 'CHS'),
	('CHS14', 'San Antonio Los Ranchos', 'CHS'),
	('CHS15', 'San Francisco Lempa', 'CHS'),
	('CHS16', 'San Isidro Labrador', 'CHS'),
	('CHS17', 'San Jos� Cancasque', 'CHS'),
	('CHS18', 'San Miguel de Mercedes', 'CHS'),
	('CHS19', 'San Jos� Las Flores', 'CHS'),
	('CHS20', 'San Luis del Carmen', 'CHS'),
-- Cuscatl�n
	('CUN01', 'Suchitoto', 'CUN'),
	('CUN02', 'San Jos� Guayabal', 'CUN'),
	('CUN03', 'Oratorio de Concepci�n', 'CUN'),
	('CUN04', 'San Bartolom� Perulap�a', 'CUN'),
	('CUN05', 'San Pedro Perulap�n', 'CUN'),
	('CUS01', 'Cojutepeque', 'CUS'),
	('CUS02', 'San Rafael Cedros', 'CUS'),
	('CUS03', 'Candelaria', 'CUS'),
	('CUS04', 'Monte San Juan', 'CUS'),
	('CUS05', 'El Carmen', 'CUS'),
	('CUS06', 'San Cristobal', 'CUS'),
	('CUS07', 'Santa Cruz Michapa', 'CUS'),
	('CUS08', 'San Ram�n', 'CUS'),
	('CUS09', 'El Rosario', 'CUS'),
	('CUS10', 'Santa Cruz Analquito', 'CUS'),
	('CUS11', 'Tenancingo', 'CUS'),
-- La Libertad
	('LLN01', 'Quezaltepeque', 'LLN'),
	('LLN02', 'San Mat�as', 'LLN'),
	('LLN03', 'San Pablo Tacachico', 'LLN'),
	('LLC01', 'San Juan Opico', 'LLC'),
	('LLC02', 'Ciudad Arce', 'LLC'),
	('LLO01', 'Col�n', 'LLO'),
	('LLO02', 'Jayaque', 'LLO'),
	('LLO03', 'Sacacoyo', 'LLO'),
	('LLO04', 'Tepecoyo', 'LLO'),
	('LLO05', 'Talnique', 'LLO'),
	('LLE01', 'Antiguo Cuscatl�n', 'LLE'),
	('LLE02', 'Huiz�car', 'LLE'),
	('LLE03', 'Nuevo Cuscatl�n', 'LLE'),
	('LLE04', 'San Jos� Villanueva', 'LLE'),
	('LLE05', 'Zaragoza', 'LLE'),
	('LLS01', 'Comasagua', 'LLS'),
	('LLS02', 'Santa Tecla', 'LLS'),
	('LLT01', 'Chiltiup�n', 'LLT'),
	('LLT02', 'Jicalapa', 'LLT'),
	('LLT03', 'La Libertad', 'LLT'),
	('LLT04', 'Tamanique', 'LLT'),
	('LLT05', 'Teotepeque', 'LLT'),
-- La Paz
	('LPO01', 'Cuyultitan', 'LPO'),
	('LPO02', 'Olocuilta', 'LPO'),
	('LPO03', 'San Juan Talpa', 'LPO'),
	('LPO04', 'San Luis Talpa', 'LPO'),
	('LPO05', 'San Pedro Masahuat', 'LPO'),
	('LPO06', 'Tapalhuaca', 'LPO'),
	('LPO07', 'San Francisco Chinameca', 'LPO'),
	('LPC01', 'El Rosario', 'LPC'),
	('LPC02', 'Jerusal�n', 'LPC'),
	('LPC03', 'Mercedes La Ceiba', 'LPC'),
	('LPC04', 'Para�so de Osorio', 'LPC'),
	('LPC05', 'San Antonio Masahuat', 'LPC'),
	('LPC06', 'San Emigdio', 'LPC'),
	('LPC07', 'San Juan Tepezontes', 'LPC'),
	('LPC08', 'San Lu�s La Herradura', 'LPC'),
	('LPC09', 'San Miguel Tepezontes', 'LPC'),
	('LPC10', 'San Pedro Nonualco', 'LPC'),
	('LPC11', 'Santa Mar�a Ostuma', 'LPC'),
	('LPC12', 'Santiago Nonualco', 'LPC'),
	('LPE01', 'San Juan Nonualco', 'LPE'),
	('LPE02', 'San Rafael Obrajuelo', 'LPE'),
	('LPE03', 'Zacatecoluca', 'LPE'),
-- La Uni�n
	('LUN01', 'Anamor�s', 'LUN'),
	('LUN02', 'Bolivar', 'LUN'),
	('LUN03', 'Concepci�n de Oriente', 'LUN'),
	('LUN04', 'El Sauce', 'LUN'),
	('LUN05', 'Lislique', 'LUN'),
	('LUN06', 'Nueva Esparta', 'LUN'),
	('LUN07', 'Pasaquina', 'LUN'),
	('LUN08', 'Polor�s', 'LUN'),
	('LUN09', 'San Jos� La Fuente', 'LUN'),
	('LUN10', 'Santa Rosa de Lima', 'LUN'),
	('LUS01', 'Conchagua', 'LUS'),
	('LUS02', 'El Carmen', 'LUS'),
	('LUS03', 'Intipuc�', 'LUS'),
	('LUS04', 'La Uni�n', 'LUS'),
	('LUS05', 'Meanguera del Golfo', 'LUS'),
	('LUS06', 'San Alejo', 'LUS'),
	('LUS07', 'Yayantique', 'LUS'),
	('LUS08', 'Yucuaiqu�n', 'LUS'),
-- Moraz�n
	('MON01', 'Arambala', 'MON'),
	('MON02', 'Cacaopera', 'MON'),
	('MON03', 'Corinto', 'MON'),
	('MON04', 'El Rosario', 'MON'),
	('MON05', 'Joateca', 'MON'),
	('MON06', 'Jocoaitique', 'MON'),
	('MON07', 'Meanguera', 'MON'),
	('MON08', 'Perqu�n', 'MON'),
	('MON09', 'San Fernando', 'MON'),
	('MON10', 'San Isidro', 'MON'),
	('MON11', 'Torola', 'MON'),
	('MOS01', 'Chilanga', 'MOS'),
	('MOS02', 'Delicias de Concepci�n', 'MOS'),
	('MOS03', 'El Divisadero', 'MOS'),
	('MOS04', 'Gualococti', 'MOS'),
	('MOS05', 'Guatajiagua', 'MOS'),
	('MOS06', 'Jocoro', 'MOS'),
	('MOS07', 'Lolotiquillo', 'MOS'),
	('MOS08', 'Osicala', 'MOS'),
	('MOS09', 'San Carlos', 'MOS'),
	('MOS10', 'San Francisco Gotera', 'MOS'),
	('MOS11', 'San Sim�n', 'MOS'),
	('MOS12', 'Sensembra', 'MOS'),
	('MOS13', 'Sociedad', 'MOS'),
	('MOS14', 'Yamabal', 'MOS'),
	('MOS15', 'Yoloaiqu�n', 'MOS'),
-- Santa Ana
	('SAN01', 'Masahuat', 'SAN'),
	('SAN02', 'Metap�n', 'SAN'),
	('SAN03', 'Santa Rosa Guachipil�n', 'SAN'),
	('SAN04', 'Texistepeque', 'SAN'),
	('SAC01', 'Santa Ana', 'SAC'),
	('SAE01', 'Coatepeque', 'SAE'),
	('SAE02', 'El Congo', 'SAE'),
	('SAO01', 'Candelaria de la Frontera', 'SAO'),
	('SAO02', 'Chalchuapa', 'SAO'),
	('SAO03', 'El Porvenir', 'SAO'),
	('SAO04', 'San Antonio Pajonal', 'SAO'),
	('SAO05', 'San Sebasti�n Salitrillo', 'SAO'),
	('SAO06', 'Santiago de La Frontera', 'SAO'),
-- San Miguel
	('SMN01', 'Ciudad Barrios', 'SMN'),
	('SMN02', 'Sesori', 'SMN'),
	('SMN03', 'Nuevo Ed�n de San Juan', 'SMN'),
	('SMN04', 'San Gerardo', 'SMN'),
	('SMN05', 'San Luis de La Reina', 'SMN'),
	('SMN06', 'Carolina', 'SMN'),
	('SMN07', 'San Antonio del Mosco', 'SMN'),
	('SMN08', 'Chapeltique', 'SMN'),
	('SMC01', 'San Miguel', 'SMC'),
	('SMC02', 'Comacar�n', 'SMC'),
	('SMC03', 'Uluazapa', 'SMC'),
	('SMC04', 'Moncagua', 'SMC'),
	('SMC05', 'Quelepa', 'SMC'),
	('SMC06', 'Chirilagua', 'SMC'),
	('SMO01', 'Chinameca', 'SMO'),
	('SMO02', 'Nueva Guadalupe', 'SMO'),
	('SMO03', 'Lolotique', 'SMO'),
	('SMO04', 'San Jorge', 'SMO'),
	('SMO05', 'San Rafael Oriente', 'SMO'),
	('SMO06', 'El Tr�nsito', 'SMO'),
-- San Salvador
	('SSN01', 'Aguilares', 'SSN'),
	('SSN02', 'El Paisnal', 'SSN'),
	('SSN03', 'Guazapa', 'SSN'),
	('SSO01', 'Apopa', 'SSO'),
	('SSO02', 'Nejapa', 'SSO'),
	('SSE01', 'Ilopango', 'SSE'),
	('SSE02', 'San Mart�n', 'SSE'),
	('SSE03', 'Soyapango', 'SSE'),
	('SSE04', 'Tonacatepeque', 'SSE'),
	('SSC01', 'Ayutuxtepeque', 'SSC'),
	('SSC02', 'Mejicanos', 'SSC'),
	('SSC03', 'San Salvador', 'SSC'),
	('SSC04', 'Cuscatancingo', 'SSC'),
	('SSC05', 'Ciudad Delgado', 'SSC'),
	('SSS01', 'Panchimalco', 'SSS'),
	('SSS02', 'Rosario de Mora', 'SSS'),
	('SSS03', 'San Marcos', 'SSS'),
	('SSS04', 'Santo Tom�s', 'SSS'),
	('SSS05', 'Santiago Texacuangos', 'SSS'),
-- San Vicente
	('SVN01', 'Apastepeque', 'SVN'),
	('SVN02', 'Santa Clara', 'SVN'),
	('SVN03', 'San Ildefonso', 'SVN'),
	('SVN04', 'San Esteban Catarina', 'SVN'),
	('SVN05', 'San Sebasti�n', 'SVN'),
	('SVN06', 'San Lorenzo', 'SVN'),
	('SVN07', 'Santo Domingo', 'SVN'),
	('SVS01', 'San Vicente', 'SVS'),
	('SVS02', 'Guadalupe', 'SVS'),
	('SVS03', 'Verapaz', 'SVS'),
	('SVS04', 'Tepetit�n', 'SVS'),
	('SVS05', 'Tecoluca', 'SVS'),
	('SVS06', 'San Cayetano Istepeque', 'SVS'),
-- Sonsonate
	('SON01', 'Juay�a', 'SON'),
	('SON02', 'Nahuizalco', 'SON'),
	('SON03', 'Salcoatit�n', 'SON'),
	('SON04', 'Santa Catarina Masahuat', 'SON'),
	('SOC01', 'Sonsonate', 'SOC'),
	('SOC02', 'Sonzacate', 'SOC'),
	('SOC03', 'Nahulingo', 'SOC'),
	('SOC04', 'San Antonio del Monte', 'SOC'),
	('SOC05', 'Santo Domingo de Guzm�n', 'SOC'),
	('SOE01', 'Izalco', 'SOE'),
	('SOE02', 'Armenia', 'SOE'),
	('SOE03', 'Caluco', 'SOE'),
	('SOE04', 'San Juli�n', 'SOE'),
	('SOE05', 'Cuisnahuat', 'SOE'),
	('SOE06', 'Santa Isabel Ishuat�n', 'SOE'),
	('SOO01', 'Acajutla', 'SOO'),
-- Usulut�n
	('USN01', 'Santiago de Mar�a', 'USN'),
	('USN02', 'Alegr�a', 'USN'),
	('USN03', 'Berl�n', 'USN'),
	('USN04', 'Mercedes Uma�a', 'USN'),
	('USN05', 'Jucuapa', 'USN'),
	('USN06', 'El triunfo', 'USN'),
	('USN07', 'Estanzuelas', 'USN'),
	('USN08', 'San Buenaventura', 'USN'),
	('USN09', 'Nueva Granada', 'USN'),
	('USE01', 'Usulut�n', 'USE'),
	('USE02', 'Jucuar�n', 'USE'),
	('USE03', 'San Dionisio', 'USE'),
	('USE04', 'Concepci�n Batres', 'USE'),
	('USE05', 'Santa Mar�a', 'USE'),
	('USE06', 'Ozatl�n', 'USE'),
	('USE07', 'Tecap�n', 'USE'),
	('USE08', 'Santa Elena', 'USE'),
	('USE09', 'California', 'USE'),
	('USE10', 'Ereguayqu�n', 'USE'),
	('USO01', 'Jiquilisco', 'USO'),
	('USO02', 'Puerto El Triunfo', 'USO'),
	('USO03', 'San Agust�n', 'USO'),
	('USO04', 'San Francisco Javier', 'USO');
go
select * from Distritos;
go
-- Direcciones 
insert into Direcciones values
-- Linea1, Linea2, ID_Distrito, CodigoPostal
	('Col Madera, Calle 1, #1N', 'Frente al parque', 'SON02', '02311'),  -- 1					
	('Barrio El Caldero, Av 2, #2I', 'Frente al amate', 'SOE01', '02306'), -- 2
	('Res El Cangrejo, Av 3, #3A', 'Frente a la playa', 'SOO01', '02302'), -- 3
	('Barrio El Centro, Av 4, #4S', 'Frente a catedral', 'SOC01', '02301'), -- 4
	('Col La Frontera, Calle 5, #5G', 'Km 10', 'AHS03', '02113'), -- 5
	('Res Buenavista, Calle 6, #6A', 'Contiguo a Alcaldia', 'SAC01', '02201'), -- 6
	('Res Altavista, Av 7, #7S', 'Contiguo al ISSS', 'SSC03', '01101'), -- 7
	('Col Las Margaritas, Pje 20, #2-4', 'Junto a ANDA', 'AHS01', '02114'),-- 8
	('Urb Las Magnolias, Pol 21, #2-6', 'Casa de esquina', 'LLO01', '01115'),-- 9
	('Caserio Florencia, 3era Calle, #5', 'Casa rosada', 'SON01', '02305');-- 10
go
-- EMPLEADOS
-- Cargos
INSERT INTO Cargos (Cargo)
VALUES 
('SysAdmin'),
('Gerente'),
('Vendedor'),
('Almacenero'),
('Asistente de Ventas'),
('Recepcionista');

go
-- Empleados
insert into Empleados values
-- DUI_Empleado, ISSS, Nombres, Apellidos, FechaNac, Telefono, Correo, ID_Cargo, ID_Direccion
	('04523695-5', '906325698', 'Juan Carlos', 'Rodas Gonzalez', '01-01-1995', '6532-4526', 'juan@hotmail.com', '1', '1'),
	('04321098-7', '963852741', 'Diego Franciso', 'Sanchez Castro', '02-02-1990', '7895-5698', 'diego@gmail.com', '2', '2'),
	('03210987-4', '321654987', 'Raul Edgardo', 'Del Valle Garcia', '03-03-1980', '6598-2548', 'raul@outlook.com', '3', '3'),
	('06789012-1', '951753258', 'Mary Carmen', 'Perez de Hernandez', '04-04-1985', '7965-2526', 'may@yahoo.com', '4', '4');

-- Proveedores
go
INSERT INTO Proveedores (Telefono, idDireccion, Nombre)
VALUES 
('123456789', 1, 'Ferreter�a El Martillo Dorado'), -- Proveedor 1
('987654321', 2, 'Suministros ConstruF�cil'),       -- Proveedor 2
('111222333', 3, 'Herramientas ProExcel'),           -- Proveedor 3
('555666777', 4, 'Ferreter�a Innovaci�n Total'),      -- Proveedor 4
('999888777', 5, 'Materiales Avanzados S.A.');        -- Proveedor 5


-- Insertar datos en la tabla Categorias
go
INSERT INTO Categorias (Nombre, Descripcion)
VALUES 
('Herramientas', 'Productos relacionados con herramientas y accesorios.'),
('Materiales de Construcci�n', 'Productos para la construcci�n y remodelaci�n.'),
('Pinturas y Acabados', 'Productos para pintura y acabados de interiores y exteriores.'),
('Fontaner�a', 'Productos para sistemas de fontaner�a y plomer�a.'),
('Electricidad', 'Productos relacionados con sistemas el�ctricos y electr�nicos.');

go

-- Insertar datos en la tabla Productos
INSERT INTO Productos (Nombre, Descripcion, Precio, Stock, IdCategoria, ImagenURL)
VALUES 
('Martillo', 'Martillo de alta calidad para trabajos de construcci�n.', 19.99, 50, 1, '/imagenes/martillo.jpg'),
('Destornillador', 'Destornillador magn�tico con mango ergon�mico.', 9.99, 100, 1, '/imagenes/destornillador.jpg'),
('Pintura Blanca', 'Pintura acr�lica blanca para interiores.', 29.99, 30, 3, '/imagenes/pintura.jpg'),
('Tuber�a PVC', 'Tuber�a de PVC resistente para sistemas de fontaner�a.', 12.50, 75, 4, '/imagenes/tuberia.jpg'),
('Bombilla LED', 'Bombilla LED de bajo consumo para iluminaci�n.', 5.99, 200, 5, '/imagenes/bombilla.jpg');

-- Insertar datos en la tabla Clientes
go
INSERT INTO Clientes (Nombres, Apellidos, DUI, Telefono)
VALUES 
('Juan', 'P�rez', '1234567890', '123456789'),
('Mar�a', 'G�mez', '2345678901', '234567890'),
('Carlos', 'Mart�nez', '3456789012', '345678901');

-- Insertar datos en la tabla Pedidos
go
INSERT INTO Pedidos (Fecha, IDProveedor, Observaciones, CostoTotal, Estado, IDEmpleado)
VALUES 
('2023-10-01', 1, 'Pedido de herramientas', 500.00, 'En proceso', 1), -- Pedido 1
('2023-10-02', 2, 'Pedido de materiales de construcci�n', 800.00, 'En espera', 2), -- Pedido 2
('2023-10-03', 1, 'Pedido de pinturas', 300.00, 'Entregado', 3), -- Pedido 3
('2023-10-04', 3, 'Pedido de fontaner�a', 250.00, 'En proceso', 1), -- Pedido 4
('2023-10-05', 2, 'Pedido de herramientas el�ctricas', 600.00, 'Entregado', 2); -- Pedido 5

-- Insertar datos en la tabla DetallePedidos
go
INSERT INTO DetallePedidos (idPedido, idProducto, Cantidad, PrecioUnitario)
VALUES 
(1, 1, 10, 25.00), -- Detalle del Pedido 1
(1, 2, 5, 40.00),
(2, 3, 8, 50.00), -- Detalle del Pedido 2
(3, 4, 15, 20.00), -- Detalle del Pedido 3
(4, 5, 12, 18.00), -- Detalle del Pedido 4
(5, 5, 7, 55.00); -- Detalle del Pedido 5

-- Insertar datos en la tabla Ventas
go
INSERT INTO Ventas (IDCliente, IDEmpleado, FechaCompra, MontoCompra)
VALUES 
(1, 1, '2023-10-01', 200.00), -- Venta 1
(2, 2, '2023-10-02', 150.00), -- Venta 2
(3, 3, '2023-10-03', 300.00), -- Venta 3
(1, 2, '2023-10-04', 180.00), -- Venta 4
(2, 1, '2023-10-05', 250.00); -- Venta 5

-- Insertar datos en la tabla DetalleVentas
go
INSERT INTO DetalleVentas (idVenta, idProducto, Cantidad)
VALUES 
(1, 1, 5), -- Detalle de Venta 1
(1, 2, 3),
(2, 3, 2), -- Detalle de Venta 2
(3, 4, 4), -- Detalle de Venta 3
(4, 5, 7), -- Detalle de Venta 4
(5, 5, 6); -- Detalle de Venta 5

-- Insertar datos en la tabla Compras
go
INSERT INTO Compras (IDProveedor, IDEmpleado, FechaCompra, MontoCompra)
VALUES 
(1, 1, '2023-10-01', 500.00), -- Compra 1
(2, 2, '2023-10-02', 800.00), -- Compra 2
(3, 3, '2023-10-03', 300.00), -- Compra 3
(1, 2, '2023-10-04', 250.00), -- Compra 4
(2, 1, '2023-10-05', 600.00); -- Compra 5

-- Insertar datos en la tabla DetalleCompras
go
INSERT INTO DetalleCompras (idCompra, idProducto, Cantidad, PrecioUnitario)
VALUES 
(1, 1, 10, 45.00), -- Detalle de Compra 1
(1, 2, 5, 30.00),
(2, 3, 8, 55.00), -- Detalle de Compra 2
(3, 4, 15, 22.50), -- Detalle de Compra 3
(4, 5, 12, 20.00), -- Detalle de Compra 4
(5, 5, 7, 65.00); -- Detalle de Compra 5

-- Insertar datos en la tabla Facturas (relacionadas con Compras)
go
INSERT INTO Facturas (NumeroFactura, CreditoFiscal, IVA, idVenta, IdCliente, Monto, FechaFactura)
VALUES 
('FAC123', 'CF123456', 13.00, NULL, NULL, 500.00, '2023-10-02'), -- Factura relacionada con Compra 1
('FAC124', 'CF654321', 13.00, NULL, NULL, 800.00, '2023-10-03'), -- Factura relacionada con Compra 2
('FAC125', 'CF987654', 13.00, NULL, NULL, 300.00, '2023-10-04'), -- Factura relacionada con Compra 3
('FAC126', 'CF111222', 13.00, NULL, NULL, 250.00, '2023-10-05'), -- Factura relacionada con Compra 4
('FAC127', 'CF333444', 13.00, NULL, NULL, 600.00, '2023-10-06'); -- Factura relacionada con Compra 5


-- Insertar datos en la tabla Opciones para una ferreter�a
go
INSERT INTO Opciones (NombreOpcion)
VALUES 
('Gestionar Productos'), -- 1
('Gestionar Proveedores'), -- 2
('Gestionar Compras'), -- 3
('Gestionar Ventas'), -- 4
('Gestionar Clientes'), -- 5
('Gestionar Empleados'), -- 6
('Gestionar Inventarios'), -- 7
('Generar Reportes'), -- 8
('Gestionar Promociones'), -- 9
('Gestionar Sucursales'), -- 10
('Gestionar Devoluciones'); -- 11

-- Roles
go
INSERT INTO Roles(NombreRol)
VALUES 
('SysAdmin'),
('Gerente'),
('Vendedor'),
('Almacenero'),
('Asistente de Ventas'),
('Recepcionista');

-- Insertar datos en la tabla AsignacionRolesOpciones
go
INSERT INTO AsignacionRolesOpciones (ID_Rol, ID_Opcion)
VALUES 
(1, 1), -- Asignar Opci�n 1 a Rol 1
(1, 2), -- Asignar Opci�n 2 a Rol 1
(2, 2), -- Asignar Opci�n 2 a Rol 2
(2, 3); -- Asignar Opci�n 3 a Rol 2





-- Insertar datos en la tabla Usuarios
go
INSERT INTO Usuarios (ID_Empleado, ID_Rol, Usuario, Clave)
VALUES 
(1, 1, 'admin', 'admin123'), -- Usuario Admin
(2, 2, 'empleado1', 'pass123'), -- Usuario Empleado con Rol 2
(3, 2, 'empleado2', 'pass456'); -- Otro Usuario Empleado con Rol 2

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
