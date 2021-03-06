USE [IMS]
GO
/****** Object:  Table [dbo].[AFIP.ConceptosIncluidos]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AFIP.ConceptosIncluidos](
	[codigoConcepto] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AFIP.ConceptosIncluidos] PRIMARY KEY CLUSTERED 
(
	[codigoConcepto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AFIP.Iva]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AFIP.Iva](
	[codigoIva] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AFIP.Iva] PRIMARY KEY CLUSTERED 
(
	[codigoIva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AFIP.TiposComprobante]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AFIP.TiposComprobante](
	[codigoTipoComprobante] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AFIP.TiposComprobante] PRIMARY KEY CLUSTERED 
(
	[codigoTipoComprobante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AFIP.TiposDocumento]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AFIP.TiposDocumento](
	[codigoTipoDocumento] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AFIP.TiposDocumento] PRIMARY KEY CLUSTERED 
(
	[codigoTipoDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AFIP.TiposMonedas]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AFIP.TiposMonedas](
	[codigoTipoMoneda] [int] NOT NULL,
	[codigoTipoMonedaAFIP] [varchar](50) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[abreviatura] [varchar](50) NULL,
 CONSTRAINT [PK_AFIP.TiposMonedas] PRIMARY KEY CLUSTERED 
(
	[codigoTipoMoneda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AFIP.UnidadesMedida]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AFIP.UnidadesMedida](
	[codigoUnidadMedida] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[abreviatura] [varchar](50) NULL,
 CONSTRAINT [PK_AFIP.UnidadesMedida] PRIMARY KEY CLUSTERED 
(
	[codigoUnidadMedida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BASE.Perfiles]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BASE.Perfiles](
	[codigoPerfil] [int] IDENTITY(1,1) NOT NULL,
	[nombrePerfil] [varchar](64) NOT NULL,
	[descripcionPerfil] [varchar](256) NULL,
 CONSTRAINT [PK_BASE.Perfiles] PRIMARY KEY CLUSTERED 
(
	[codigoPerfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BASE.PerfilesPorRecurso]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BASE.PerfilesPorRecurso](
	[codigoPerfilesPorRecurso] [int] IDENTITY(1,1) NOT NULL,
	[codigoPerfil] [int] NOT NULL,
	[codigoRecurso] [int] NOT NULL,
 CONSTRAINT [PK_BASE.PerfilesPorRecurso] PRIMARY KEY CLUSTERED 
(
	[codigoPerfilesPorRecurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BASE.Recursos]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BASE.Recursos](
	[codigoRecurso] [int] IDENTITY(1,1) NOT NULL,
	[nombreRecurso] [varchar](64) NOT NULL,
	[descripcionRecurso] [varchar](256) NULL,
 CONSTRAINT [PK_BASE.Recursos] PRIMARY KEY CLUSTERED 
(
	[codigoRecurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BASE.Usuarios]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BASE.Usuarios](
	[codigoUsuario] [int] IDENTITY(1,1) NOT NULL,
	[nombreUsuario] [varchar](128) NOT NULL,
	[contraseña] [varchar](512) NOT NULL,
	[adValidation] [bit] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[codigoUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BASE.UsuariosPorPerfiles]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BASE.UsuariosPorPerfiles](
	[codigoUsuarioPorPerfiles] [int] IDENTITY(1,1) NOT NULL,
	[codigoUsuario] [int] NOT NULL,
	[codigoPerfil] [int] NOT NULL,
 CONSTRAINT [PK_BASE.UsuariosPorPerfiles] PRIMARY KEY CLUSTERED 
(
	[codigoUsuarioPorPerfiles] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ERP.Articulos]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERP.Articulos](
	[codigoArticulo] [int] IDENTITY(1,1) NOT NULL,
	[descripcionCorta] [varchar](50) NOT NULL,
	[descripcionLarga] [varchar](max) NOT NULL,
	[marca] [varchar](50) NOT NULL,
	[nombreImagen] [varchar](50) NOT NULL,
	[codigoUnidadMedida] [int] NOT NULL,
 CONSTRAINT [PK_Articulos] PRIMARY KEY CLUSTERED 
(
	[codigoArticulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ERP.ArticulosCliente]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERP.ArticulosCliente](
	[codigoArticuloCliente] [int] IDENTITY(1,1) NOT NULL,
	[codigoArticulo] [int] NOT NULL,
	[codigoCliente] [int] NOT NULL,
	[numeroInternoCliente] [varchar](100) NOT NULL,
 CONSTRAINT [PK_ArticulosCliente] PRIMARY KEY CLUSTERED 
(
	[codigoArticuloCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_ArticulosCliente] UNIQUE NONCLUSTERED 
(
	[codigoArticulo] ASC,
	[codigoCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ERP.ArticulosProveedor]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERP.ArticulosProveedor](
	[codigoArticuloProveedor] [int] IDENTITY(1,1) NOT NULL,
	[codigoArticulo] [int] NOT NULL,
	[codigoProveedor] [int] NOT NULL,
 CONSTRAINT [PK_[ERP.ArticulosProveedor] PRIMARY KEY CLUSTERED 
(
	[codigoArticuloProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ERP.Clientes]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERP.Clientes](
	[codigoCliente] [int] IDENTITY(1,1) NOT NULL,
	[razonSocial] [varchar](50) NOT NULL,
	[telefono] [varchar](50) NOT NULL,
	[fax] [varchar](50) NULL,
	[mail] [varchar](50) NULL,
	[codigoTipoDocumento] [int] NOT NULL,
	[isInactivo] [bit] NOT NULL,
	[personaContacto] [varchar](100) NOT NULL,
	[numeroCuenta] [varchar](50) NOT NULL,
	[banco] [varchar](50) NOT NULL,
	[cbu] [varchar](50) NOT NULL,
	[observaciones] [varchar](max) NOT NULL,
	[numeroInterno] [int] NULL,
	[numeroDocumento] [varchar](50) NULL,
	[codigoSCF] [varchar](50) NULL,
	[codigoDireccion] [int] NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[codigoCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ERP.CondicionDeVenta]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERP.CondicionDeVenta](
	[codigoCondicionDeVenta] [int] NOT NULL,
	[nombreCondicionDeVenta] [varchar](64) NOT NULL,
	[descripcionCondicionDeVenta] [varchar](256) NOT NULL,
 CONSTRAINT [PK_ERP.CondicionDeVenta] PRIMARY KEY CLUSTERED 
(
	[codigoCondicionDeVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ERP.ContratosMarco]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERP.ContratosMarco](
	[codigoContratoMarco] [int] IDENTITY(1,1) NOT NULL,
	[codigoCliente] [int] NOT NULL,
	[fechaInicio] [datetime] NOT NULL,
	[fechaFin] [datetime] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[comprador] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ContratosMarco] PRIMARY KEY CLUSTERED 
(
	[codigoContratoMarco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ERP.DatosEmpresa]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERP.DatosEmpresa](
	[codigoDatosEmpresa] [int] IDENTITY(1,1) NOT NULL,
	[razonSocial] [varchar](50) NOT NULL,
	[provincia] [varchar](50) NOT NULL,
	[localidad] [varchar](50) NOT NULL,
	[direccion] [varchar](50) NOT NULL,
	[telefono] [varchar](50) NOT NULL,
	[fax] [varchar](50) NULL,
	[mail] [varchar](50) NULL,
	[codigoTipoDocumento] [int] NOT NULL,
	[isInactivo] [bit] NOT NULL,
	[personaContacto] [varchar](100) NOT NULL,
	[numeroCuenta] [varchar](50) NULL,
	[banco] [varchar](50) NOT NULL,
	[cbu] [varchar](50) NOT NULL,
	[observaciones] [varchar](max) NOT NULL,
	[numeroDocumento] [varchar](50) NOT NULL,
	[cai] [varchar](50) NULL,
	[fechaVencimientoCai] [datetime] NULL,
 CONSTRAINT [PK_DatosEmpresa] PRIMARY KEY CLUSTERED 
(
	[codigoDatosEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ERP.Direcciones]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERP.Direcciones](
	[codigoDireccion] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
	[provincia] [varchar](50) NOT NULL,
	[localidad] [varchar](50) NOT NULL,
	[codigoCliente] [int] NOT NULL,
 CONSTRAINT [PK_Direcciones] PRIMARY KEY CLUSTERED 
(
	[codigoDireccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ERP.Facturas]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERP.Facturas](
	[codigoFactura] [int] IDENTITY(1,1) NOT NULL,
	[numeroFactura] [int] NOT NULL,
	[fechaFacturacion] [datetime] NOT NULL,
	[codigoTipoComprobante] [int] NOT NULL,
	[codigoTipoMoneda] [int] NOT NULL,
	[codigoConcepto] [int] NOT NULL,
	[codigoIva] [int] NOT NULL,
	[subtotal] [numeric](9, 2) NOT NULL,
	[total] [numeric](9, 2) NOT NULL,
	[cae] [varchar](50) NULL,
	[fechaVencimiento] [datetime] NULL,
	[condicionVenta] [int] NOT NULL,
	[cotizacion] [numeric](9, 2) NULL,
	[codigoPuntoDeVenta] [int] NULL,
 CONSTRAINT [PK_Facturas] PRIMARY KEY CLUSTERED 
(
	[codigoFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ERP.FormasDePago]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERP.FormasDePago](
	[codigoFormaDePago] [int] IDENTITY(1,1) NOT NULL,
	[nombreFormaDePago] [varchar](64) NOT NULL,
	[descripcionFormaDePago] [varchar](256) NOT NULL,
 CONSTRAINT [PK_ERP.FormasDePago] PRIMARY KEY CLUSTERED 
(
	[codigoFormaDePago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ERP.HistorialCostosArticuloProveedor]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERP.HistorialCostosArticuloProveedor](
	[codigoHistorialCostoArticuloProveedor] [int] IDENTITY(1,1) NOT NULL,
	[fechaDesde] [datetime] NOT NULL,
	[fechaHasta] [datetime] NULL,
	[costo] [numeric](10, 2) NOT NULL,
	[codigoArticuloProveedor] [int] NOT NULL,
	[codigoTipoMoneda] [int] NOT NULL,
 CONSTRAINT [PK_HistorialPreciosArticuloProveedor] PRIMARY KEY CLUSTERED 
(
	[codigoHistorialCostoArticuloProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ERP.HistorialPreciosArticulo]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERP.HistorialPreciosArticulo](
	[codigoHistorialPrecioArticulo] [int] IDENTITY(1,1) NOT NULL,
	[fechaDesde] [datetime] NOT NULL,
	[fechaHasta] [datetime] NULL,
	[precio] [numeric](10, 2) NOT NULL,
	[codigoArticulo] [int] NOT NULL,
	[codigoTipoMoneda] [int] NOT NULL,
 CONSTRAINT [PK_HistorialPreciosArticuloCliente] PRIMARY KEY CLUSTERED 
(
	[codigoHistorialPrecioArticulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ERP.ItemsContratoMarco]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERP.ItemsContratoMarco](
	[codigoItemContratoMarco] [int] IDENTITY(1,1) NOT NULL,
	[codigoContratoMarco] [int] NOT NULL,
	[codigoArticulo] [int] NOT NULL,
	[precio] [numeric](10, 2) NOT NULL,
	[posicion] [int] NULL,
	[codigoTipoMoneda] [int] NOT NULL,
 CONSTRAINT [PK_ItemsContratoMarco] PRIMARY KEY CLUSTERED 
(
	[codigoItemContratoMarco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ERP.ItemsNotaDeCredito]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERP.ItemsNotaDeCredito](
	[codigoItemNotaDeCredito] [int] IDENTITY(1,1) NOT NULL,
	[codigoNotaDeCredito] [int] NOT NULL,
	[codigoItemRemito] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
 CONSTRAINT [PK_ItemsNotaDeCredito] PRIMARY KEY CLUSTERED 
(
	[codigoItemNotaDeCredito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ERP.ItemsNotaDePedido]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERP.ItemsNotaDePedido](
	[codigoItemNotaDePedido] [int] IDENTITY(1,1) NOT NULL,
	[codigoArticulo] [int] NOT NULL,
	[codigoNotaDePedido] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[fechaEntrega] [datetime] NULL,
	[precio] [numeric](9, 2) NULL,
	[posicion] [int] NOT NULL,
 CONSTRAINT [PK_ItemsNotaDePedido] PRIMARY KEY CLUSTERED 
(
	[codigoItemNotaDePedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ERP.ItemsRemito]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERP.ItemsRemito](
	[codigoItemRemito] [int] IDENTITY(1,1) NOT NULL,
	[codigoRemito] [int] NOT NULL,
	[codigoItemNotaDePedido] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[codigoArticuloProveedor] [int] NULL,
	[precio] [numeric](9, 2) NULL,
 CONSTRAINT [PK_ItemsRemito] PRIMARY KEY CLUSTERED 
(
	[codigoItemRemito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ERP.NotasDeCredito]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERP.NotasDeCredito](
	[codigoNotaDeCredito] [int] IDENTITY(1,1) NOT NULL,
	[numeroNotaDeCredito] [int] NOT NULL,
	[codigoFactura] [int] NOT NULL,
	[isFacturaCompleta] [bit] NOT NULL,
	[total] [numeric](9, 2) NOT NULL,
	[subtotal] [numeric](9, 2) NOT NULL,
	[fechaHoraNotaDeCredito] [datetime] NOT NULL,
	[cae] [varchar](200) NULL,
	[fechaHoraVencimientoCAE] [datetime] NULL,
	[codigoTipoComprobante] [int] NOT NULL,
	[codigoPuntoDeVenta] [int] NULL,
 CONSTRAINT [PK_NotasDeCredito] PRIMARY KEY CLUSTERED 
(
	[codigoNotaDeCredito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ERP.NotasDePedido]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERP.NotasDePedido](
	[codigoNotaDePedido] [int] IDENTITY(1,1) NOT NULL,
	[numeroInternoCliente] [varchar](50) NOT NULL,
	[fechaEmision] [datetime] NOT NULL,
	[codigoEstado] [int] NOT NULL,
	[observaciones] [varchar](200) NOT NULL,
	[codigoContratoMarco] [int] NULL,
	[codigoCliente] [int] NOT NULL,
 CONSTRAINT [PK_NotasDePedido] PRIMARY KEY CLUSTERED 
(
	[codigoNotaDePedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ERP.Pagos]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERP.Pagos](
	[codigoPago] [int] NOT NULL,
	[codigoFactura] [int] NOT NULL,
	[codigoFormasDePago] [int] NOT NULL,
	[monto] [numeric](9, 2) NOT NULL,
 CONSTRAINT [PK_ERP.Pagos] PRIMARY KEY CLUSTERED 
(
	[codigoPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ERP.Proveedores]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERP.Proveedores](
	[codigoProveedor] [int] IDENTITY(1,1) NOT NULL,
	[razonSocial] [varchar](50) NOT NULL,
	[provincia] [varchar](50) NOT NULL,
	[localidad] [varchar](50) NOT NULL,
	[direccion] [varchar](50) NOT NULL,
	[telefono] [varchar](50) NOT NULL,
	[fax] [varchar](50) NULL,
	[mail] [varchar](50) NULL,
	[codigoTipoDocumento] [int] NOT NULL,
	[isInactivo] [bit] NOT NULL,
	[personaContacto] [varchar](100) NOT NULL,
	[numeroCuenta] [varchar](50) NOT NULL,
	[banco] [varchar](50) NOT NULL,
	[cbu] [varchar](50) NOT NULL,
	[observaciones] [varchar](max) NOT NULL,
	[numeroInterno] [int] NULL,
	[numeroDocumento] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Proveedores] PRIMARY KEY CLUSTERED 
(
	[codigoProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ERP.PuntosDeVenta]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERP.PuntosDeVenta](
	[codigoPuntoDeVenta] [int] IDENTITY(1,1) NOT NULL,
	[numeroPuntoDeVenta] [int] NULL,
	[descripcion] [varchar](128) NULL,
	[numeroInicial] [int] NOT NULL,
	[numeroActual] [int] NULL,
	[numeroFinal] [int] NULL,
	[codigoTipoComprobante] [int] NULL,
	[codigoPuntoDeVentaParent] [int] NULL,
	[cai] [varchar](32) NULL,
	[vencimientoCai] [datetime] NULL,
 CONSTRAINT [PK_PuntosDeVenta] PRIMARY KEY CLUSTERED 
(
	[codigoPuntoDeVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ERP.Remitos]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERP.Remitos](
	[codigoRemito] [int] IDENTITY(1,1) NOT NULL,
	[fechaEmision] [datetime] NOT NULL,
	[numeroRemito] [int] NULL,
	[codigoEstado] [int] NOT NULL,
	[observaciones] [varchar](200) NULL,
	[codigoNotaDePedido] [int] NOT NULL,
	[codigoTransporte] [int] NULL,
	[codigoDireccion] [int] NULL,
	[cai] [varchar](50) NULL,
	[fechaVencimientoCai] [datetime] NULL,
	[codigoPuntoDeVenta] [int] NULL,
 CONSTRAINT [PK_Remitos] PRIMARY KEY CLUSTERED 
(
	[codigoRemito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ERP.RemitosPorFactura]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERP.RemitosPorFactura](
	[codigoRemitoPorFactura] [int] IDENTITY(1,1) NOT NULL,
	[codigoRemito] [int] NOT NULL,
	[codigoFactura] [int] NOT NULL,
 CONSTRAINT [PK_RemitosPorFactura] PRIMARY KEY CLUSTERED 
(
	[codigoRemitoPorFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RPT.Reportes]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RPT.Reportes](
	[codigoReporte] [int] IDENTITY(1,1) NOT NULL,
	[nombreReporte] [varchar](256) NULL,
	[pathReporte1] [varchar](512) NULL,
	[pathReporte2] [varchar](512) NULL,
	[pathReporte3] [varchar](512) NULL,
 CONSTRAINT [PK_Reportes] PRIMARY KEY CLUSTERED 
(
	[codigoReporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RPT.ReportesPorPuntoDeVenta]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RPT.ReportesPorPuntoDeVenta](
	[codigoReportePuntoDeVenta] [int] IDENTITY(1,1) NOT NULL,
	[codigoReporte] [int] NOT NULL,
	[codigoPuntoDeVenta] [int] NOT NULL,
 CONSTRAINT [PK_ReportesPorPuntoDeVenta] PRIMARY KEY CLUSTERED 
(
	[codigoReportePuntoDeVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TS.Transportes]    Script Date: 20/08/2017 02:18:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TS.Transportes](
	[codigoTransporte] [int] IDENTITY(1,1) NOT NULL,
	[razonSocial] [varchar](50) NOT NULL,
	[provincia] [varchar](50) NOT NULL,
	[localidad] [varchar](50) NOT NULL,
	[direccion] [varchar](50) NOT NULL,
	[telefono] [varchar](50) NOT NULL,
	[fax] [varchar](50) NULL,
	[mail] [varchar](50) NULL,
	[codigoTipoDocumento] [int] NOT NULL,
	[isInactivo] [bit] NOT NULL,
	[personaContacto] [varchar](100) NOT NULL,
	[numeroCuenta] [varchar](50) NULL,
	[banco] [varchar](50) NOT NULL,
	[cbu] [varchar](50) NOT NULL,
	[observaciones] [varchar](max) NOT NULL,
	[numeroDocumento] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Transportes] PRIMARY KEY CLUSTERED 
(
	[codigoTransporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[BASE.PerfilesPorRecurso]  WITH CHECK ADD  CONSTRAINT [FK_BASE.PerfilesPorRecurso_BASE.Perfiles] FOREIGN KEY([codigoPerfil])
REFERENCES [dbo].[BASE.Perfiles] ([codigoPerfil])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[BASE.PerfilesPorRecurso] CHECK CONSTRAINT [FK_BASE.PerfilesPorRecurso_BASE.Perfiles]
GO
ALTER TABLE [dbo].[BASE.PerfilesPorRecurso]  WITH CHECK ADD  CONSTRAINT [FK_BASE.PerfilesPorRecurso_BASE.Recursos] FOREIGN KEY([codigoRecurso])
REFERENCES [dbo].[BASE.Recursos] ([codigoRecurso])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[BASE.PerfilesPorRecurso] CHECK CONSTRAINT [FK_BASE.PerfilesPorRecurso_BASE.Recursos]
GO
ALTER TABLE [dbo].[BASE.UsuariosPorPerfiles]  WITH CHECK ADD  CONSTRAINT [FK_BASE.UsuariosPorPerfiles_BASE.Perfiles] FOREIGN KEY([codigoPerfil])
REFERENCES [dbo].[BASE.Perfiles] ([codigoPerfil])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[BASE.UsuariosPorPerfiles] CHECK CONSTRAINT [FK_BASE.UsuariosPorPerfiles_BASE.Perfiles]
GO
ALTER TABLE [dbo].[BASE.UsuariosPorPerfiles]  WITH CHECK ADD  CONSTRAINT [FK_BASE.UsuariosPorPerfiles_BASE.Usuarios] FOREIGN KEY([codigoUsuario])
REFERENCES [dbo].[BASE.Usuarios] ([codigoUsuario])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[BASE.UsuariosPorPerfiles] CHECK CONSTRAINT [FK_BASE.UsuariosPorPerfiles_BASE.Usuarios]
GO
ALTER TABLE [dbo].[ERP.Articulos]  WITH CHECK ADD  CONSTRAINT [FK_Articulos_AFIP.UnidadesMedida] FOREIGN KEY([codigoUnidadMedida])
REFERENCES [dbo].[AFIP.UnidadesMedida] ([codigoUnidadMedida])
GO
ALTER TABLE [dbo].[ERP.Articulos] CHECK CONSTRAINT [FK_Articulos_AFIP.UnidadesMedida]
GO
ALTER TABLE [dbo].[ERP.ArticulosCliente]  WITH NOCHECK ADD  CONSTRAINT [FK_ArticulosCliente_Articulos] FOREIGN KEY([codigoArticulo])
REFERENCES [dbo].[ERP.Articulos] ([codigoArticulo])
GO
ALTER TABLE [dbo].[ERP.ArticulosCliente] CHECK CONSTRAINT [FK_ArticulosCliente_Articulos]
GO
ALTER TABLE [dbo].[ERP.ArticulosCliente]  WITH NOCHECK ADD  CONSTRAINT [FK_ArticulosCliente_Clientes] FOREIGN KEY([codigoCliente])
REFERENCES [dbo].[ERP.Clientes] ([codigoCliente])
GO
ALTER TABLE [dbo].[ERP.ArticulosCliente] CHECK CONSTRAINT [FK_ArticulosCliente_Clientes]
GO
ALTER TABLE [dbo].[ERP.ArticulosProveedor]  WITH NOCHECK ADD  CONSTRAINT [FK_ArticulosProveedor_Articulos] FOREIGN KEY([codigoArticulo])
REFERENCES [dbo].[ERP.Articulos] ([codigoArticulo])
GO
ALTER TABLE [dbo].[ERP.ArticulosProveedor] CHECK CONSTRAINT [FK_ArticulosProveedor_Articulos]
GO
ALTER TABLE [dbo].[ERP.ArticulosProveedor]  WITH NOCHECK ADD  CONSTRAINT [FK_ArticulosProveedor_Proveedores] FOREIGN KEY([codigoProveedor])
REFERENCES [dbo].[ERP.Proveedores] ([codigoProveedor])
GO
ALTER TABLE [dbo].[ERP.ArticulosProveedor] CHECK CONSTRAINT [FK_ArticulosProveedor_Proveedores]
GO
ALTER TABLE [dbo].[ERP.Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_AFIP.TiposDocumento] FOREIGN KEY([codigoTipoDocumento])
REFERENCES [dbo].[AFIP.TiposDocumento] ([codigoTipoDocumento])
GO
ALTER TABLE [dbo].[ERP.Clientes] CHECK CONSTRAINT [FK_Clientes_AFIP.TiposDocumento]
GO
ALTER TABLE [dbo].[ERP.Facturas]  WITH CHECK ADD  CONSTRAINT [FK_ERP.Facturas_ERP.CondicionDeVenta] FOREIGN KEY([condicionVenta])
REFERENCES [dbo].[ERP.CondicionDeVenta] ([codigoCondicionDeVenta])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ERP.Facturas] CHECK CONSTRAINT [FK_ERP.Facturas_ERP.CondicionDeVenta]
GO
ALTER TABLE [dbo].[ERP.Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_AFIP.ConceptosIncluidos] FOREIGN KEY([codigoConcepto])
REFERENCES [dbo].[AFIP.ConceptosIncluidos] ([codigoConcepto])
GO
ALTER TABLE [dbo].[ERP.Facturas] CHECK CONSTRAINT [FK_Facturas_AFIP.ConceptosIncluidos]
GO
ALTER TABLE [dbo].[ERP.Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_AFIP.Iva] FOREIGN KEY([codigoIva])
REFERENCES [dbo].[AFIP.Iva] ([codigoIva])
GO
ALTER TABLE [dbo].[ERP.Facturas] CHECK CONSTRAINT [FK_Facturas_AFIP.Iva]
GO
ALTER TABLE [dbo].[ERP.Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_AFIP.TiposComprobante] FOREIGN KEY([codigoTipoComprobante])
REFERENCES [dbo].[AFIP.TiposComprobante] ([codigoTipoComprobante])
GO
ALTER TABLE [dbo].[ERP.Facturas] CHECK CONSTRAINT [FK_Facturas_AFIP.TiposComprobante]
GO
ALTER TABLE [dbo].[ERP.Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_AFIP.TiposMonedas] FOREIGN KEY([codigoTipoMoneda])
REFERENCES [dbo].[AFIP.TiposMonedas] ([codigoTipoMoneda])
GO
ALTER TABLE [dbo].[ERP.Facturas] CHECK CONSTRAINT [FK_Facturas_AFIP.TiposMonedas]
GO
ALTER TABLE [dbo].[ERP.HistorialCostosArticuloProveedor]  WITH CHECK ADD  CONSTRAINT [FK_HistorialCostosArticuloProveedor_AFIP.TiposMonedas] FOREIGN KEY([codigoTipoMoneda])
REFERENCES [dbo].[AFIP.TiposMonedas] ([codigoTipoMoneda])
GO
ALTER TABLE [dbo].[ERP.HistorialCostosArticuloProveedor] CHECK CONSTRAINT [FK_HistorialCostosArticuloProveedor_AFIP.TiposMonedas]
GO
ALTER TABLE [dbo].[ERP.HistorialCostosArticuloProveedor]  WITH NOCHECK ADD  CONSTRAINT [FK_HistorialPreciosArticuloProveedor_ArticulosProveedor] FOREIGN KEY([codigoArticuloProveedor])
REFERENCES [dbo].[ERP.ArticulosProveedor] ([codigoArticuloProveedor])
GO
ALTER TABLE [dbo].[ERP.HistorialCostosArticuloProveedor] CHECK CONSTRAINT [FK_HistorialPreciosArticuloProveedor_ArticulosProveedor]
GO
ALTER TABLE [dbo].[ERP.HistorialPreciosArticulo]  WITH CHECK ADD  CONSTRAINT [FK_HistorialPreciosArticulo_AFIP.TiposMonedas] FOREIGN KEY([codigoTipoMoneda])
REFERENCES [dbo].[AFIP.TiposMonedas] ([codigoTipoMoneda])
GO
ALTER TABLE [dbo].[ERP.HistorialPreciosArticulo] CHECK CONSTRAINT [FK_HistorialPreciosArticulo_AFIP.TiposMonedas]
GO
ALTER TABLE [dbo].[ERP.HistorialPreciosArticulo]  WITH NOCHECK ADD  CONSTRAINT [FK_HistorialPreciosArticulo_Articulos] FOREIGN KEY([codigoArticulo])
REFERENCES [dbo].[ERP.Articulos] ([codigoArticulo])
GO
ALTER TABLE [dbo].[ERP.HistorialPreciosArticulo] CHECK CONSTRAINT [FK_HistorialPreciosArticulo_Articulos]
GO
ALTER TABLE [dbo].[ERP.ItemsContratoMarco]  WITH CHECK ADD  CONSTRAINT [FK_ItemsContratoMarco_AFIP.TiposMonedas] FOREIGN KEY([codigoTipoMoneda])
REFERENCES [dbo].[AFIP.TiposMonedas] ([codigoTipoMoneda])
GO
ALTER TABLE [dbo].[ERP.ItemsContratoMarco] CHECK CONSTRAINT [FK_ItemsContratoMarco_AFIP.TiposMonedas]
GO
ALTER TABLE [dbo].[ERP.ItemsContratoMarco]  WITH NOCHECK ADD  CONSTRAINT [FK_ItemsContratoMarco_Articulos] FOREIGN KEY([codigoArticulo])
REFERENCES [dbo].[ERP.Articulos] ([codigoArticulo])
GO
ALTER TABLE [dbo].[ERP.ItemsContratoMarco] CHECK CONSTRAINT [FK_ItemsContratoMarco_Articulos]
GO
ALTER TABLE [dbo].[ERP.ItemsContratoMarco]  WITH NOCHECK ADD  CONSTRAINT [FK_ItemsContratoMarco_ContratosMarco] FOREIGN KEY([codigoContratoMarco])
REFERENCES [dbo].[ERP.ContratosMarco] ([codigoContratoMarco])
GO
ALTER TABLE [dbo].[ERP.ItemsContratoMarco] CHECK CONSTRAINT [FK_ItemsContratoMarco_ContratosMarco]
GO
ALTER TABLE [dbo].[ERP.ItemsNotaDePedido]  WITH NOCHECK ADD  CONSTRAINT [FK_ItemsPorNotaDePedido_Articulos] FOREIGN KEY([codigoArticulo])
REFERENCES [dbo].[ERP.Articulos] ([codigoArticulo])
GO
ALTER TABLE [dbo].[ERP.ItemsNotaDePedido] CHECK CONSTRAINT [FK_ItemsPorNotaDePedido_Articulos]
GO
ALTER TABLE [dbo].[ERP.ItemsNotaDePedido]  WITH NOCHECK ADD  CONSTRAINT [FK_ItemsPorNotaDePedido_NotasDePedido] FOREIGN KEY([codigoNotaDePedido])
REFERENCES [dbo].[ERP.NotasDePedido] ([codigoNotaDePedido])
GO
ALTER TABLE [dbo].[ERP.ItemsNotaDePedido] CHECK CONSTRAINT [FK_ItemsPorNotaDePedido_NotasDePedido]
GO
ALTER TABLE [dbo].[ERP.ItemsRemito]  WITH NOCHECK ADD  CONSTRAINT [FK_ItemsRemito_ArticulosProveedor] FOREIGN KEY([codigoArticuloProveedor])
REFERENCES [dbo].[ERP.ArticulosProveedor] ([codigoArticuloProveedor])
GO
ALTER TABLE [dbo].[ERP.ItemsRemito] CHECK CONSTRAINT [FK_ItemsRemito_ArticulosProveedor]
GO
ALTER TABLE [dbo].[ERP.ItemsRemito]  WITH NOCHECK ADD  CONSTRAINT [FK_ItemsRemito_ItemsNotaDePedido] FOREIGN KEY([codigoItemNotaDePedido])
REFERENCES [dbo].[ERP.ItemsNotaDePedido] ([codigoItemNotaDePedido])
GO
ALTER TABLE [dbo].[ERP.ItemsRemito] CHECK CONSTRAINT [FK_ItemsRemito_ItemsNotaDePedido]
GO
ALTER TABLE [dbo].[ERP.ItemsRemito]  WITH NOCHECK ADD  CONSTRAINT [FK_ItemsRemito_Remito] FOREIGN KEY([codigoRemito])
REFERENCES [dbo].[ERP.Remitos] ([codigoRemito])
GO
ALTER TABLE [dbo].[ERP.ItemsRemito] CHECK CONSTRAINT [FK_ItemsRemito_Remito]
GO
ALTER TABLE [dbo].[ERP.NotasDeCredito]  WITH CHECK ADD  CONSTRAINT [FK_NotasDeCredito_AFIP.TiposComprobante] FOREIGN KEY([codigoTipoComprobante])
REFERENCES [dbo].[AFIP.TiposComprobante] ([codigoTipoComprobante])
GO
ALTER TABLE [dbo].[ERP.NotasDeCredito] CHECK CONSTRAINT [FK_NotasDeCredito_AFIP.TiposComprobante]
GO
ALTER TABLE [dbo].[ERP.NotasDeCredito]  WITH CHECK ADD  CONSTRAINT [FK_NotasDeCredito_Facturas] FOREIGN KEY([codigoFactura])
REFERENCES [dbo].[ERP.Facturas] ([codigoFactura])
GO
ALTER TABLE [dbo].[ERP.NotasDeCredito] CHECK CONSTRAINT [FK_NotasDeCredito_Facturas]
GO
ALTER TABLE [dbo].[ERP.NotasDePedido]  WITH NOCHECK ADD  CONSTRAINT [FK_NotasDePedido_Clientes] FOREIGN KEY([codigoCliente])
REFERENCES [dbo].[ERP.Clientes] ([codigoCliente])
GO
ALTER TABLE [dbo].[ERP.NotasDePedido] CHECK CONSTRAINT [FK_NotasDePedido_Clientes]
GO
ALTER TABLE [dbo].[ERP.NotasDePedido]  WITH NOCHECK ADD  CONSTRAINT [FK_NotasDePedido_ContratosMarco] FOREIGN KEY([codigoContratoMarco])
REFERENCES [dbo].[ERP.ContratosMarco] ([codigoContratoMarco])
GO
ALTER TABLE [dbo].[ERP.NotasDePedido] CHECK CONSTRAINT [FK_NotasDePedido_ContratosMarco]
GO
ALTER TABLE [dbo].[ERP.Pagos]  WITH CHECK ADD  CONSTRAINT [FK_ERP.Pagos_ERP.Facturas] FOREIGN KEY([codigoFactura])
REFERENCES [dbo].[ERP.Facturas] ([codigoFactura])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ERP.Pagos] CHECK CONSTRAINT [FK_ERP.Pagos_ERP.Facturas]
GO
ALTER TABLE [dbo].[ERP.Pagos]  WITH CHECK ADD  CONSTRAINT [FK_ERP.Pagos_ERP.FormasDePago] FOREIGN KEY([codigoFormasDePago])
REFERENCES [dbo].[ERP.FormasDePago] ([codigoFormaDePago])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ERP.Pagos] CHECK CONSTRAINT [FK_ERP.Pagos_ERP.FormasDePago]
GO
ALTER TABLE [dbo].[ERP.Proveedores]  WITH CHECK ADD  CONSTRAINT [FK_Proveedores_AFIP.TiposDocumento] FOREIGN KEY([codigoTipoDocumento])
REFERENCES [dbo].[AFIP.TiposDocumento] ([codigoTipoDocumento])
GO
ALTER TABLE [dbo].[ERP.Proveedores] CHECK CONSTRAINT [FK_Proveedores_AFIP.TiposDocumento]
GO
ALTER TABLE [dbo].[ERP.Remitos]  WITH CHECK ADD  CONSTRAINT [FK_Remitos_Direcciones] FOREIGN KEY([codigoDireccion])
REFERENCES [dbo].[ERP.Direcciones] ([codigoDireccion])
GO
ALTER TABLE [dbo].[ERP.Remitos] CHECK CONSTRAINT [FK_Remitos_Direcciones]
GO
ALTER TABLE [dbo].[ERP.Remitos]  WITH CHECK ADD  CONSTRAINT [FK_Remitos_Transporte] FOREIGN KEY([codigoTransporte])
REFERENCES [dbo].[TS.Transportes] ([codigoTransporte])
GO
ALTER TABLE [dbo].[ERP.Remitos] CHECK CONSTRAINT [FK_Remitos_Transporte]
GO
ALTER TABLE [dbo].[ERP.RemitosPorFactura]  WITH CHECK ADD  CONSTRAINT [FK_RemitosPorFactura_Facturas] FOREIGN KEY([codigoFactura])
REFERENCES [dbo].[ERP.Facturas] ([codigoFactura])
GO
ALTER TABLE [dbo].[ERP.RemitosPorFactura] CHECK CONSTRAINT [FK_RemitosPorFactura_Facturas]
GO
ALTER TABLE [dbo].[ERP.RemitosPorFactura]  WITH CHECK ADD  CONSTRAINT [FK_RemitosPorFactura_Remitos] FOREIGN KEY([codigoRemito])
REFERENCES [dbo].[ERP.Remitos] ([codigoRemito])
GO
ALTER TABLE [dbo].[ERP.RemitosPorFactura] CHECK CONSTRAINT [FK_RemitosPorFactura_Remitos]
GO
ALTER TABLE [dbo].[TS.Transportes]  WITH CHECK ADD  CONSTRAINT [FK_Transportes_TipoDocumento] FOREIGN KEY([codigoTipoDocumento])
REFERENCES [dbo].[AFIP.TiposDocumento] ([codigoTipoDocumento])
GO
ALTER TABLE [dbo].[TS.Transportes] CHECK CONSTRAINT [FK_Transportes_TipoDocumento]
GO
