create database BONDIOLETA3
USE [BONDIOLETA3]
GO
/****** Object:  Table [dbo].[CARRUSEL]    Script Date: 3/10/2024 13:38:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARRUSEL](
	[Id_Carrusel] [int] IDENTITY(1,1) NOT NULL,
	[Id_Producto] [int] NULL,
	[Id_Oferta] [int] NULL,
	[Activo] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Carrusel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CATEGORIA]    Script Date: 3/10/2024 13:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORIA](
	[Id_Categoria] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Descripcion] [varchar](300) NULL,
	[Activo] [bit] NULL,
 CONSTRAINT [PK__CATEGORI__CB90334995880D47] PRIMARY KEY CLUSTERED 
(
	[Id_Categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLIENTE]    Script Date: 3/10/2024 13:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTE](
	[Id_Cliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Apellido] [varchar](100) NULL,
	[Celular] [varchar](10) NULL,
 CONSTRAINT [PK__CLIENTE__3DD0A8CB146DC8E9] PRIMARY KEY CLUSTERED 
(
	[Id_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EXTRA_PRODUCTO]    Script Date: 3/10/2024 13:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXTRA_PRODUCTO](
	[Id_ExtraP] [int] IDENTITY(1,1) NOT NULL,
	[Ingrediente_Extra] [varchar](100) NULL,
	[Precio] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_ExtraP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOCALIDAD]    Script Date: 3/10/2024 13:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOCALIDAD](
	[Id_Localidad] [int] IDENTITY(1,1) NOT NULL,
	[Barrio] [varchar](100) NULL,
	[Codigo_Postal] [int] NULL,
	[Departamento] [varchar](100) NOT NULL,
	[Calle] [varchar](100) NULL,
	[Calle_2] [varchar](100) NULL,
	[Piso] [varchar](100) NULL,
	[Referencia] [varchar](500) NULL,
	[Costo_Envio] [int] NULL,
 CONSTRAINT [PK__LOCALIDA__1EFE251232C162AB] PRIMARY KEY CLUSTERED 
(
	[Id_Localidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOG_AUDITORIA]    Script Date: 3/10/2024 13:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOG_AUDITORIA](
	[Id_Auditoria] [int] IDENTITY(1,1) NOT NULL,
	[Id_Usuario] [int] NULL,
	[Id_Venta] [int] NULL,
	[Id_Cliente] [int] NULL,
	[Fecha] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Auditoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OFERTA]    Script Date: 3/10/2024 13:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OFERTA](
	[Id_Oferta] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Precio] [decimal](10, 2) NOT NULL,
	[Nombre_Imagen] [varchar](100) NULL,
	[Ruta_Imagen] [varchar](100) NULL,
	[Descripcion] [varchar](500) NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK__OFERTA__6C9F2EA001AB7275] PRIMARY KEY CLUSTERED 
(
	[Id_Oferta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTO]    Script Date: 3/10/2024 13:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTO](
	[Id_Producto] [int] IDENTITY(1,1) NOT NULL,
	[Id_ExtraP] [int] NULL,
	[Id_Categoria] [int] NULL,
	[Nombre] [varchar](100) NULL,
	[Precio] [decimal](10, 2) NULL,
	[Ruta_Imagen] [varchar](100) NULL,
	[Nombre_Imagen] [varchar](100) NULL,
	[Descripcion] [varchar](500) NULL,
	[Activo] [bit] NULL,
 CONSTRAINT [PK__PRODUCTO__2085A9CFDE38C62D] PRIMARY KEY CLUSTERED 
(
	[Id_Producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIO]    Script Date: 3/10/2024 13:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIO](
	[Id_Usuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Correo] [varchar](100) NULL,
	[Clave] [varchar](200) NULL,
	[Reestablecer] [bit] NULL,
	[Activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VENTA]    Script Date: 3/10/2024 13:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENTA](
	[Id_Venta] [int] IDENTITY(1,1) NOT NULL,
	[Id_Cliente] [int] NULL,
	[Id_Producto] [int] NULL,
	[Id_Localidad] [int] NULL,
	[Fecha_Venta] [datetime] NULL,
	[Total_Productos] [int] NULL,
	[Total_Pago] [decimal](10, 2) NULL,
 CONSTRAINT [PK__VENTA__B3C9EABD34431B2D] PRIMARY KEY CLUSTERED 
(
	[Id_Venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CARRUSEL] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[CATEGORIA] ADD  CONSTRAINT [DF__CATEGORIA__Activ__6EF57B66]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[LOCALIDAD] ADD  CONSTRAINT [DF__LOCALIDAD__Depar__7A672E12]  DEFAULT ((0)) FOR [Departamento]
GO
ALTER TABLE [dbo].[OFERTA] ADD  CONSTRAINT [DF__OFERTA__Precio__7D439ABD]  DEFAULT ((0)) FOR [Precio]
GO
ALTER TABLE [dbo].[OFERTA] ADD  CONSTRAINT [DF__OFERTA__Activo__7E37BEF6]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[PRODUCTO] ADD  CONSTRAINT [DF__PRODUCTO__Precio__07C12930]  DEFAULT ((0)) FOR [Precio]
GO
ALTER TABLE [dbo].[PRODUCTO] ADD  CONSTRAINT [DF__PRODUCTO__Activo__08B54D69]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[USUARIO] ADD  DEFAULT ((1)) FOR [Reestablecer]
GO
ALTER TABLE [dbo].[USUARIO] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[VENTA] ADD  CONSTRAINT [DF__VENTA__Fecha_Ven__02FC7413]  DEFAULT (getdate()) FOR [Fecha_Venta]
GO
ALTER TABLE [dbo].[CARRUSEL]  WITH CHECK ADD  CONSTRAINT [FK__CARRUSEL__Id_Ofe__0D7A0286] FOREIGN KEY([Id_Oferta])
REFERENCES [dbo].[OFERTA] ([Id_Oferta])
GO
ALTER TABLE [dbo].[CARRUSEL] CHECK CONSTRAINT [FK__CARRUSEL__Id_Ofe__0D7A0286]
GO
ALTER TABLE [dbo].[CARRUSEL]  WITH CHECK ADD  CONSTRAINT [FK__CARRUSEL__Id_Pro__0C85DE4D] FOREIGN KEY([Id_Producto])
REFERENCES [dbo].[PRODUCTO] ([Id_Producto])
GO
ALTER TABLE [dbo].[CARRUSEL] CHECK CONSTRAINT [FK__CARRUSEL__Id_Pro__0C85DE4D]
GO
ALTER TABLE [dbo].[LOG_AUDITORIA]  WITH CHECK ADD  CONSTRAINT [FK__LOG_AUDIT__Id_Cl__123EB7A3] FOREIGN KEY([Id_Cliente])
REFERENCES [dbo].[CLIENTE] ([Id_Cliente])
GO
ALTER TABLE [dbo].[LOG_AUDITORIA] CHECK CONSTRAINT [FK__LOG_AUDIT__Id_Cl__123EB7A3]
GO
ALTER TABLE [dbo].[LOG_AUDITORIA]  WITH CHECK ADD FOREIGN KEY([Id_Usuario])
REFERENCES [dbo].[USUARIO] ([Id_Usuario])
GO
ALTER TABLE [dbo].[LOG_AUDITORIA]  WITH CHECK ADD  CONSTRAINT [FK__LOG_AUDIT__Id_Ve__114A936A] FOREIGN KEY([Id_Venta])
REFERENCES [dbo].[VENTA] ([Id_Venta])
GO
ALTER TABLE [dbo].[LOG_AUDITORIA] CHECK CONSTRAINT [FK__LOG_AUDIT__Id_Ve__114A936A]
GO
ALTER TABLE [dbo].[PRODUCTO]  WITH CHECK ADD  CONSTRAINT [FK__PRODUCTO__Id_Cat__05D8E0BE] FOREIGN KEY([Id_Categoria])
REFERENCES [dbo].[CATEGORIA] ([Id_Categoria])
GO
ALTER TABLE [dbo].[PRODUCTO] CHECK CONSTRAINT [FK__PRODUCTO__Id_Cat__05D8E0BE]
GO
ALTER TABLE [dbo].[VENTA]  WITH CHECK ADD  CONSTRAINT [FK__VENTA__Id_Client__01142BA1] FOREIGN KEY([Id_Cliente])
REFERENCES [dbo].[CLIENTE] ([Id_Cliente])
GO
ALTER TABLE [dbo].[VENTA] CHECK CONSTRAINT [FK__VENTA__Id_Client__01142BA1]
GO
ALTER TABLE [dbo].[VENTA]  WITH CHECK ADD  CONSTRAINT [FK_Id_Localidad] FOREIGN KEY([Id_Localidad])
REFERENCES [dbo].[LOCALIDAD] ([Id_Localidad])
GO
ALTER TABLE [dbo].[VENTA] CHECK CONSTRAINT [FK_Id_Localidad]
GO
ALTER TABLE [dbo].[VENTA]  WITH CHECK ADD  CONSTRAINT [FK_Id_Producto] FOREIGN KEY([Id_Producto])
REFERENCES [dbo].[PRODUCTO] ([Id_Producto])
GO
ALTER TABLE [dbo].[VENTA] CHECK CONSTRAINT [FK_Id_Producto]
GO
/****** Object:  StoredProcedure [dbo].[sp_DiasMasVentas]    Script Date: 3/10/2024 13:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DiasMasVentas]
AS
BEGIN
    SELECT 
        CONVERT(DATE, V.Fecha_Venta) AS Dia_Venta,
        SUM(V.Total_Productos) AS Total_Productos_Vendidos
    FROM 
        [dbo].[VENTA] V
    GROUP BY 
        CONVERT(DATE, V.Fecha_Venta)
    ORDER BY 
        Total_Productos_Vendidos DESC;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_EditarCategoria]    Script Date: 3/10/2024 13:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_EditarCategoria](
	@Id_Categoria int,
	@Nombre varchar(100),
	@Activo bit,
	@Mensaje varchar(500) output,
	@Resultado int output
)
AS
BEGIN
	SET @Resultado = 0
	IF NOT EXISTS (SELECT * FROM CATEGORIA WHERE Nombre = @Nombre and Id_Categoria != @Id_Categoria)
	BEGIN
		UPDATE TOP (1) CATEGORIA SET
			Nombre = @Nombre,
			Activo = @Activo
		WHERE Id_Categoria = @Id_Categoria
		SET @Resultado = 1
	END
	ELSE
		SET @Mensaje = 'La categoria ya existe'
END

GO
/****** Object:  StoredProcedure [dbo].[sp_EditarProducto]    Script Date: 3/10/2024 13:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_EditarProducto](
	@Id_Producto int,
	@Id_Categoria int,
	@Nombre varchar(100),
	@Precio decimal(10,2),
	@Descripcion varchar(300),
	
	@Activo bit,
	@Mensaje varchar(500) output,
	@Resultado int output
)
as
begin
	SET @Resultado = 0
	IF NOT EXISTS (SELECT * FROM PRODUCTO WHERE Nombre = @Nombre and Id_Producto != @Id_Producto)
	begin
		update PRODUCTO set

		
		Id_Categoria = @Id_Categoria,
		Nombre = @Nombre,
		Precio = @Precio,
		Descripcion = @Descripcion,
		
		Activo = @Activo
		where Id_Producto = @Id_Producto
		SET @Resultado = 1
	end
	else
		set @Mensaje = 'El producto ya existe'
end
GO
/****** Object:  StoredProcedure [dbo].[sp_EditarUsuario]    Script Date: 3/10/2024 13:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_EditarUsuario](
	@Id_Usuario int,
	@Nombre varchar(100),
	@Apellido varchar(100),
	@Correo varchar(100),
	@Activo bit,
	@Mensaje varchar(500) output,
	@Resultado int output
)
AS
	BEGIN
		SET @Resultado = 0
		IF NOT EXISTS (SELECT * FROM USUARIO WHERE Correo = @Correo and Id_Usuario != @Id_Usuario)
		BEGIN
			UPDATE TOP (1) USUARIO SET
			Nombre = @Nombre,
			Apellido = @Apellido,
			Correo = @Correo,
			Activo = @Activo
			WHERE Id_Usuario = @Id_Usuario

			SET @Resultado = 1
		END
		ELSE
			SET @Mensaje = 'Ya existe un usuario registrado con ese correo'
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_EliminarCategoria]    Script Date: 3/10/2024 13:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_EliminarCategoria](
	@Id_Categoria int,
	@Mensaje varchar(500) output,
	@Resultado int output
)
AS
BEGIN
	SET @Resultado = 0
	IF NOT EXISTS (SELECT * FROM PRODUCTO p
	inner join CATEGORIA c ON c.Id_Categoria = p.Id_Categoria
	WHERE p.Id_Categoria = @Id_Categoria)
	BEGIN
		DELETE TOP (1) FROM CATEGORIA WHERE Id_Categoria = @Id_Categoria
		SET @Resultado = 1
	END
	ELSE
		SET @Mensaje = 'No es posible eliminar la categoría ya que se encuentra relacionada a un producto'
END
GO
/****** Object:  StoredProcedure [dbo].[sp_EliminarProducto]    Script Date: 3/10/2024 13:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_EliminarProducto](
	@Id_Producto int,
	@Mensaje varchar(500) output,
	@Resultado int output
)
AS
BEGIN
	SET @Resultado = 0
	IF NOT EXISTS (SELECT * FROM VENTA dv
	inner join PRODUCTO p ON p.Id_Producto = dv.Id_Producto
	WHERE p.Id_Producto = @Id_Producto)
	BEGIN
		DELETE TOP (1) FROM PRODUCTO WHERE Id_Producto = @Id_Producto
		SET @Resultado = 1
	END
	ELSE
		SET @Mensaje = 'El producto no puede eliminarse ya que se encuentra relacionado a una venta'
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ProductosMasVendidos]    Script Date: 3/10/2024 13:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ProductosMasVendidos]
AS
BEGIN
    SELECT 
        V.Id_Producto,
        SUM(V.Total_Productos) AS Cantidad_Vendida
    FROM 
        [dbo].[VENTA] V
    GROUP BY 
        V.Id_Producto
    ORDER BY 
        Cantidad_Vendida DESC;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_RegistrarCategoria]    Script Date: 3/10/2024 13:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_RegistrarCategoria](
	@Nombre varchar(100),
	@Activo bit,
	@Descripcion varchar(300),
	@Mensaje varchar(500) output,
	@Resultado int output
)
AS
BEGIN
	SET @Resultado = 0
	IF NOT EXISTS (SELECT * FROM CATEGORIA WHERE Nombre = @Nombre)
	BEGIN
		INSERT INTO CATEGORIA(Nombre, Activo, Descripcion) values
		(@Nombre, @Activo, @Descripcion)

		SET @Resultado = SCOPE_IDENTITY()
	END
	ELSE
		SET @Mensaje = 'La categoría ya existe'
END
GO
/****** Object:  StoredProcedure [dbo].[sp_RegistrarProducto]    Script Date: 3/10/2024 13:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_RegistrarProducto](
	@Id_Categoria int,
	@Nombre varchar(100),
	@Precio decimal(10,2),
	@Descripcion varchar(300),
	
	@Activo bit,
	
	@Mensaje varchar(500) output,
	@Resultado int output
)
as
begin
	SET @Resultado = 0
	IF NOT EXISTS (SELECT * FROM PRODUCTO WHERE Nombre = @Nombre)
	begin
		insert into PRODUCTO (Id_Categoria, Nombre, Precio, Descripcion,  Activo) values
		(@Id_Categoria, @Nombre, @Precio, @Descripcion,  @Activo)
		SET @Resultado = scope_identity()
	end
	else
		set @Mensaje = 'El producto ya existe'
end
GO
/****** Object:  StoredProcedure [dbo].[sp_RegistrarUsuario]    Script Date: 3/10/2024 13:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_RegistrarUsuario](
	@Nombre varchar(100),
	@Apellido varchar(100),
	@Correo varchar(100),
	@Clave varchar(200),
	@Activo bit,
	@Mensaje varchar(500) output,
	@Resultado int output
)
AS
	BEGIN
		SET @Resultado = 0
		IF NOT EXISTS (SELECT * FROM USUARIO WHERE Correo = @Correo)
		BEGIN
			INSERT INTO USUARIO(Nombre, Apellido, Correo, Clave, Activo) values
			(@Nombre, @Apellido, @Correo, @Clave, @Activo)

			SET @Resultado = SCOPE_IDENTITY()
		END
		ELSE
			SET @Mensaje = 'El correo del usuario ya existe'
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_ReporteDashboardTotales]    Script Date: 3/10/2024 13:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_ReporteDashboardTotales]
as
begin
    select
        (select count(*) from cliente) as [TotalClientes],
        (select ISNULL(SUM(Total_productos), 0) from Venta) as [TotalVentas],
        (select count(*) from producto) as [TotalProductos];
end;
GO
/****** Object:  StoredProcedure [dbo].[sp_ReporteVentas]    Script Date: 3/10/2024 13:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_ReporteVentas] (
@FechaInicio varchar(10),
@FechaFin varchar(10),
@Id_Venta varchar(50)
)
as
begin
	set dateformat dmy;

select CONVERT(char(10),v.Fecha_Venta,103)[FechaVenta], CONCAT(c.Nombre,' ',c.Apellido)[Cliente],
p.Nombre[Producto], p.Precio, v.Total_Productos, v.Total_Pago, v.Id_Venta
from VENTA v
inner join PRODUCTO p on p.Id_Producto = v.Id_Producto
inner join CLIENTE c on c.Id_Cliente = v.Id_Cliente

where CONVERT(date,v.Fecha_Venta) between @FechaInicio and @FechaFin

and v.Id_Venta = IIF (@Id_Venta = '', v.Id_Venta, @Id_Venta)

end
GO


/**** para listar las categoria en el front end ****/

declare @Id_Categoria int = 0

SELECT DISTINCT p.Id_Producto, p.Descripcion
FROM PRODUCTO p
INNER JOIN CATEGORIA c ON c.Id_Categoria = p.Id_Categoria and c.Activo = 1

WHERE c.Id_Categoria = iif (@Id_Categoria = 0, c.Id_Categoria, @Id_Categoria);

/**** inner join registro de producto ****/
select p.Id_Producto, p.Nombre,p.Descripcion,
c.Id_Categoria,c.Descripcion[DesCategoria],
p.Precio,p.Ruta_Imagen,p.Nombre_Imagen,p.Activo
from PRODUCTO p
inner join CATEGORIA c on c.Id_Categoria = p.Id_Categoria


/**** para carrito este esta mal NO EJECUTAL ***/

CREATE PROCEDURE sp_ExisteCarrito
@Id_Producto int,
@Resultado bit OUTPUT
AS
BEGIN
    IF EXISTS(SELECT * FROM VENTA WHERE idproducto = @Id_Producto)
        SET @Resultado = 1
    ELSE
        SET @Resultado = 0
END
CREATE PROCEDURE sp_OperacionCarrito
@Id_Producto int,
@Sumar bit,
@Mensaje varchar(500) OUTPUT,
@Resultado bit OUTPUT
AS
BEGIN
    SET @Resultado = 1
    SET @Mensaje = ''

    DECLARE @existecarrito bit = IIF(EXISTS(SELECT * FROM VENTA WHERE idproducto = @Id_Producto), 1, 0)

    BEGIN TRY
        BEGIN TRANSACTION OPERACION

        IF (@Sumar = 1)
        BEGIN
            IF (@existecarrito = 1)
                UPDATE VENTA SET Cantidad = Cantidad + 1 WHERE idproducto = @Id_Producto
            ELSE
                INSERT INTO VENTA(Id_Producto, Cantidad) VALUES(@Id_Producto, 1)
        END
        ELSE
        BEGIN
            IF (@existecarrito = 1 AND (SELECT Cantidad FROM VENTA WHERE idproducto = @Id_Producto) > 1)
                UPDATE VENTA SET Cantidad = Cantidad - 1 WHERE idproducto = @Id_Producto
            ELSE
                DELETE FROM VENTA WHERE idproducto = @Id_Producto
        END

        COMMIT TRANSACTION OPERACION
    END TRY
    BEGIN CATCH
        SET @Resultado = 0
        SET @Mensaje = ERROR_MESSAGE()
        ROLLBACK TRANSACTION OPERACION
    END CATCH
END

CREATE PROCEDURE sp_ExisteCarrito
@Id_Producto int,
@Resultado bit OUTPUT
AS
BEGIN
    IF EXISTS(SELECT * FROM VENTA WHERE idproducto = @Id_Producto)
        SET @Resultado = 1
    ELSE
        SET @Resultado = 0
END;