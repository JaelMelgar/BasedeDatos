-- Declarar variables para el cursor
DECLARE @NombreProducto NVARCHAR(100);
DECLARE @PrecioProducto DECIMAL(10, 2);
DECLARE @SQL NVARCHAR(MAX);

-- Crear un cursor din�mico para recorrer la tabla Productos
SET @SQL = 'DECLARE producto_cursor CURSOR FOR SELECT Nombre, Precio FROM Productos';

-- Ejecutar la consulta din�mica
EXEC sp_executesql @SQL;

-- Abrir el cursor
OPEN producto_cursor;

-- Inicializar el cursor
FETCH NEXT FROM producto_cursor INTO @NombreProducto, @PrecioProducto;

-- Recorrer las filas de la tabla Productos
WHILE @@FETCH_STATUS = 0
BEGIN
    -- Mostrar el nombre y el precio del producto (puedes hacer otras operaciones aqu�)
    PRINT 'Producto: ' + @NombreProducto + ', Precio: ' + CAST(@PrecioProducto AS NVARCHAR(20));

    -- Obtener la siguiente fila
    FETCH NEXT FROM producto_cursor INTO @NombreProducto, @PrecioProducto;
END

-- Cerrar el cursor
CLOSE producto_cursor;
DEALLOCATE producto_cursor;