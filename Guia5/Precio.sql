-- Crear una funci�n de tabla para obtener productos con precio superior a un valor espec�fico
CREATE FUNCTION dbo.ObtenerProductosPorPrecio (
    @PrecioMinimo DECIMAL(10, 2)
)
RETURNS TABLE
AS
RETURN
(
    SELECT Nombre, Descripcion, Precio, Stock
    FROM Productos
    WHERE Precio > @PrecioMinimo
);


-- Llama a la funci�n con un valor espec�fico para @PrecioMinimo
SELECT * FROM dbo.ObtenerProductosPorPrecio(12.00);