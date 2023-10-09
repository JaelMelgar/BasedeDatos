use Ferreteria
go
create procedure AgregarClientes

	@Nombres varchar(65),
	@Apelldos varchar(65) ,
	@DUI varchar(10),
	@Telefono varchar(9)
as begin 
insert into Clientes values(
    @Nombres,
	@Apelldos,
	@DUI,
	@Telefono );
	select * from Clientes;
	end

    EXECUTE AgregarClientes
    @Nombres = 'Helen Andrea',
	@Apelldos = 'Gomez Mendez' ,
	@DUI = '45202326-0',
	@Telefono = '7234-0965'

go
create procedure MostrarFechasCompras
as begin
select C.DUI,
       C.Nombres,
       C.Apellidos,
       COMP.FechaCompra
	   from Clientes C,
     Compras COMP
	 where C.DUI = COMP.IDCliente
	 order by C.DUI
	 end
	 exec MostrarFechasCompras;
