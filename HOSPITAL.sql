USE [master]
GO
/****** Object:  Database [Hospital]    Script Date: 07/05/2019 02:07:03 p.m. ******/
CREATE DATABASE [Hospital]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Hospital', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Hospital.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Hospital_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Hospital_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Hospital] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Hospital].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Hospital] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Hospital] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Hospital] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Hospital] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Hospital] SET ARITHABORT OFF 
GO
ALTER DATABASE [Hospital] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Hospital] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Hospital] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Hospital] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Hospital] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Hospital] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Hospital] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Hospital] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Hospital] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Hospital] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Hospital] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Hospital] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Hospital] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Hospital] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Hospital] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Hospital] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Hospital] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Hospital] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Hospital] SET  MULTI_USER 
GO
ALTER DATABASE [Hospital] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Hospital] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Hospital] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Hospital] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Hospital] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Hospital]
GO
/****** Object:  Table [dbo].[Administracion]    Script Date: 07/05/2019 02:07:03 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administracion](
	[cod_Administracion] [int] IDENTITY(1,1) NOT NULL,
	[encargadoAdmin] [nvarchar](75) NULL,
	[cod_R_H] [int] NULL,
	[cod_AreaFinan] [int] NULL,
	[cod_Adquisi_Contr] [int] NULL,
	[cod_Manteni] [int] NULL,
 CONSTRAINT [PK_Administracion] PRIMARY KEY CLUSTERED 
(
	[cod_Administracion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Aquisicion_Contratacion]    Script Date: 07/05/2019 02:07:03 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aquisicion_Contratacion](
	[cod_Adq_Contra] [int] IDENTITY(1,1) NOT NULL,
	[licitacionesCorrespondientes] [nvarchar](50) NULL,
	[valoracionInsumos] [nvarchar](50) NULL,
	[controlSuministros] [nvarchar](50) NULL,
	[supervicion] [nvarchar](50) NULL,
	[cod_Inventario] [int] NULL,
	[cod_Evaluaciones] [int] NULL,
	[cod_Contratos] [int] NULL,
 CONSTRAINT [PK_Aquisicion_Contratacion] PRIMARY KEY CLUSTERED 
(
	[cod_Adq_Contra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Area Financieras]    Script Date: 07/05/2019 02:07:03 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Area Financieras](
	[cod_AreaFinan] [int] IDENTITY(1,1) NOT NULL,
	[encargadoAreaFinan] [nvarchar](50) NULL,
	[valoracionExistencia] [nvarchar](50) NULL,
	[ejecucionPresupuestaria] [nvarchar](50) NULL,
	[estadosFinancieros] [nvarchar](50) NULL,
	[nominasEmple] [nvarchar](50) NULL,
	[registrosContables] [nvarchar](50) NULL,
	[cod_Planillas] [int] NULL,
	[cod_Emple] [int] NULL,
 CONSTRAINT [PK_Area Financieras] PRIMARY KEY CLUSTERED 
(
	[cod_AreaFinan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contacto]    Script Date: 07/05/2019 02:07:03 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacto](
	[cod_contacto] [int] IDENTITY(1,1) NOT NULL,
	[cod_TipoContacto] [int] NULL,
 CONSTRAINT [PK_Contacto] PRIMARY KEY CLUSTERED 
(
	[cod_contacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contratos]    Script Date: 07/05/2019 02:07:03 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contratos](
	[cod_Contratos] [int] IDENTITY(1,1) NOT NULL,
	[encargadoContra] [nvarchar](50) NULL,
	[fechaContr] [date] NULL,
	[horaContr] [time](7) NULL,
	[cod_R_H] [int] NULL,
 CONSTRAINT [PK_Contratos] PRIMARY KEY CLUSTERED 
(
	[cod_Contratos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Descuentos]    Script Date: 07/05/2019 02:07:03 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Descuentos](
	[cod_Descuentos] [int] IDENTITY(1,1) NOT NULL,
	[afp] [int] NULL,
	[isss] [int] NULL,
	[renta] [int] NULL,
	[otros] [nvarchar](50) NULL,
	[totalDescuentos] [nvarchar](50) NULL,
	[observaciones] [nvarchar](75) NULL,
 CONSTRAINT [PK_Descuentos] PRIMARY KEY CLUSTERED 
(
	[cod_Descuentos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Documentos]    Script Date: 07/05/2019 02:07:03 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documentos](
	[cod_Docum] [int] IDENTITY(1,1) NOT NULL,
	[cod_tipoDocumento] [int] NULL,
 CONSTRAINT [PK_Documentos] PRIMARY KEY CLUSTERED 
(
	[cod_Docum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 07/05/2019 02:07:03 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[cod_Emple] [int] IDENTITY(1,1) NOT NULL,
	[nombreEmple] [nvarchar](50) NULL,
	[primerApellEmple] [nvarchar](50) NULL,
	[segundoApellEmple] [nvarchar](50) NULL,
	[tercerApellEmple] [nvarchar](50) NULL,
	[sexo] [nvarchar](5) NULL,
	[direccion] [nvarchar](100) NULL,
	[fechaNacimiento] [date] NULL,
	[Observacion] [nvarchar](150) NULL,
	[cod_R_H] [int] NULL,
	[cod_Evalu] [int] NULL,
	[cod_planillas] [int] NULL,
	[cod_Contacto] [int] NULL,
	[cod_Documentos] [int] NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[cod_Emple] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Evaluaciones]    Script Date: 07/05/2019 02:07:03 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evaluaciones](
	[cod_Evalu] [int] IDENTITY(1,1) NOT NULL,
	[encargadoEvalu] [nvarchar](50) NULL,
	[fechaEvalu] [date] NULL,
	[horaEvalu] [time](7) NULL,
	[detalleEvalu] [nvarchar](150) NULL,
	[Descripcion] [nvarchar](150) NULL,
 CONSTRAINT [PK_Evaluaciones] PRIMARY KEY CLUSTERED 
(
	[cod_Evalu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Expediente]    Script Date: 07/05/2019 02:07:03 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Expediente](
	[cod_Expediente] [int] IDENTITY(1,1) NOT NULL,
	[numeroExp] [int] NULL,
	[departamento] [nvarchar](50) NULL,
	[municipio] [nvarchar](50) NULL,
	[zona] [nvarchar](50) NULL,
	[temperatura] [nvarchar](50) NULL,
	[pulso] [nvarchar](50) NULL,
	[peso] [nvarchar](50) NULL,
	[estatura] [nvarchar](50) NULL,
	[pres_Arterial] [nvarchar](50) NULL,
	[vacunas] [nvarchar](50) NULL,
	[fechaExp] [date] NULL,
	[descripcion] [nvarchar](150) NULL,
	[cod_Paciente] [int] NULL,
 CONSTRAINT [PK_Expediente] PRIMARY KEY CLUSTERED 
(
	[cod_Expediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 07/05/2019 02:07:03 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario](
	[cod_Inventario] [int] NOT NULL,
	[nombreInventario] [nvarchar](50) NULL,
	[fechaInventario] [date] NULL,
	[medicamentos] [nvarchar](50) NULL,
	[utensiliosLimpieza] [nvarchar](50) NULL,
	[materialQuirurgico] [nvarchar](50) NULL,
	[materiaCuracion] [nvarchar](50) NULL,
	[laboratorios] [nvarchar](50) NULL,
	[materialEstirilizacion] [nvarchar](50) NULL,
	[farmacias] [nvarchar](50) NULL,
	[clinicas] [nvarchar](50) NULL,
	[mobiliario] [nvarchar](50) NULL,
	[utensiliosmedicos] [nvarchar](50) NULL,
 CONSTRAINT [PK_Inventario] PRIMARY KEY CLUSTERED 
(
	[cod_Inventario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mantenimiento]    Script Date: 07/05/2019 02:07:03 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mantenimiento](
	[cod_Manteni] [int] IDENTITY(1,1) NOT NULL,
	[fechaManteni] [nvarchar](50) NULL,
	[ejecucionManteni] [nvarchar](50) NULL,
	[actualizacionInvent] [nvarchar](50) NULL,
	[revisionCumplimiento] [nvarchar](50) NULL,
	[cod_Inventario] [int] NULL,
 CONSTRAINT [PK_Mantenimiento] PRIMARY KEY CLUSTERED 
(
	[cod_Manteni] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 07/05/2019 02:07:03 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paciente](
	[cod_Paciente] [int] IDENTITY(1,1) NOT NULL,
	[nombrePaci] [nvarchar](50) NULL,
	[primerApelliPaci] [nvarchar](50) NULL,
	[segundoApelliPaci] [nvarchar](50) NULL,
	[sexo] [nvarchar](5) NULL,
	[fechaNacimiento] [date] NULL,
	[estadoCivil] [nvarchar](50) NULL,
	[ocupacion] [nvarchar](50) NULL,
	[direccionHabitual] [nvarchar](100) NULL,
	[nombrePadre] [nvarchar](50) NULL,
	[nombreMadre] [nvarchar](50) NULL,
	[nombreConyuge] [nvarchar](50) NULL,
	[responsablePaci] [nvarchar](50) NULL,
	[tomoInformacion] [nvarchar](50) NULL,
	[fechaInscripcion] [date] NULL,
	[observacion] [nvarchar](150) NULL,
	[cod_Documentos] [int] NULL,
	[cod_Contacto] [int] NULL,
 CONSTRAINT [PK_Paciente] PRIMARY KEY CLUSTERED 
(
	[cod_Paciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Planillas]    Script Date: 07/05/2019 02:07:03 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Planillas](
	[cod_Planillas] [int] IDENTITY(1,1) NOT NULL,
	[cargo] [nvarchar](50) NULL,
	[fechaPlanilla] [date] NULL,
	[salarioTotal] [int] NULL,
	[cod_Descuentos] [int] NULL,
	[cod_Adquisi_Contr] [int] NULL,
 CONSTRAINT [PK_Planillas] PRIMARY KEY CLUSTERED 
(
	[cod_Planillas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Recursos Humanos]    Script Date: 07/05/2019 02:07:03 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recursos Humanos](
	[cod_R_H] [int] IDENTITY(1,1) NOT NULL,
	[encargadoR_H] [nvarchar](50) NULL,
	[horaEntraEmple] [time](7) NULL,
	[horaSaliEmple] [time](7) NULL,
	[horasExtrasEmple] [time](7) NULL,
	[tarjetaVida] [nvarchar](50) NULL,
	[seleccion] [nvarchar](50) NULL,
	[registroSistema] [nvarchar](50) NULL,
	[informacion] [nvarchar](50) NULL,
	[cod_Evaluaciones] [int] NULL,
	[cod_Contratos] [int] NULL,
	[cod_Expediente] [int] NULL,
	[cod_Planilla] [int] NULL,
 CONSTRAINT [PK_Recursos Humanos] PRIMARY KEY CLUSTERED 
(
	[cod_R_H] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tipo Contacto]    Script Date: 07/05/2019 02:07:03 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo Contacto](
	[cod_TipoContacto] [int] IDENTITY(1,1) NOT NULL,
	[tipoContacto] [nvarchar](50) NULL,
	[nombreContacto] [nvarchar](50) NULL,
	[numeroContacto] [int] NULL,
	[fechaIngreContacto] [date] NULL,
	[observaciones] [nvarchar](150) NULL,
 CONSTRAINT [PK_Tipo Contacto] PRIMARY KEY CLUSTERED 
(
	[cod_TipoContacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tipo Documentos]    Script Date: 07/05/2019 02:07:03 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo Documentos](
	[cod_TipoDocum] [int] IDENTITY(1,1) NOT NULL,
	[tipoDocum] [nvarchar](50) NULL,
	[nombreDocum] [nvarchar](50) NULL,
	[numeroDocum] [int] NULL,
	[fechaIngresoDocum] [date] NULL,
	[imagenDocum] [image] NULL,
	[observacion] [nvarchar](150) NULL,
 CONSTRAINT [PK_Tipo Documentos] PRIMARY KEY CLUSTERED 
(
	[cod_TipoDocum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[Administracion]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_Aquisicion_Contratacion1] FOREIGN KEY([cod_Adquisi_Contr])
REFERENCES [dbo].[Aquisicion_Contratacion] ([cod_Adq_Contra])
GO
ALTER TABLE [dbo].[Administracion] CHECK CONSTRAINT [FK_Administracion_Aquisicion_Contratacion1]
GO
ALTER TABLE [dbo].[Administracion]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_Area Financieras1] FOREIGN KEY([cod_AreaFinan])
REFERENCES [dbo].[Area Financieras] ([cod_AreaFinan])
GO
ALTER TABLE [dbo].[Administracion] CHECK CONSTRAINT [FK_Administracion_Area Financieras1]
GO
ALTER TABLE [dbo].[Administracion]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_Mantenimiento1] FOREIGN KEY([cod_Manteni])
REFERENCES [dbo].[Mantenimiento] ([cod_Manteni])
GO
ALTER TABLE [dbo].[Administracion] CHECK CONSTRAINT [FK_Administracion_Mantenimiento1]
GO
ALTER TABLE [dbo].[Administracion]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_Recursos Humanos1] FOREIGN KEY([cod_R_H])
REFERENCES [dbo].[Recursos Humanos] ([cod_R_H])
GO
ALTER TABLE [dbo].[Administracion] CHECK CONSTRAINT [FK_Administracion_Recursos Humanos1]
GO
ALTER TABLE [dbo].[Aquisicion_Contratacion]  WITH CHECK ADD  CONSTRAINT [FK_Aquisicion_Contratacion_Contratos1] FOREIGN KEY([cod_Contratos])
REFERENCES [dbo].[Contratos] ([cod_Contratos])
GO
ALTER TABLE [dbo].[Aquisicion_Contratacion] CHECK CONSTRAINT [FK_Aquisicion_Contratacion_Contratos1]
GO
ALTER TABLE [dbo].[Aquisicion_Contratacion]  WITH CHECK ADD  CONSTRAINT [FK_Aquisicion_Contratacion_Evaluaciones1] FOREIGN KEY([cod_Evaluaciones])
REFERENCES [dbo].[Evaluaciones] ([cod_Evalu])
GO
ALTER TABLE [dbo].[Aquisicion_Contratacion] CHECK CONSTRAINT [FK_Aquisicion_Contratacion_Evaluaciones1]
GO
ALTER TABLE [dbo].[Aquisicion_Contratacion]  WITH CHECK ADD  CONSTRAINT [FK_Aquisicion_Contratacion_Inventario1] FOREIGN KEY([cod_Inventario])
REFERENCES [dbo].[Inventario] ([cod_Inventario])
GO
ALTER TABLE [dbo].[Aquisicion_Contratacion] CHECK CONSTRAINT [FK_Aquisicion_Contratacion_Inventario1]
GO
ALTER TABLE [dbo].[Area Financieras]  WITH CHECK ADD  CONSTRAINT [FK_Area Financieras_Empleado1] FOREIGN KEY([cod_Emple])
REFERENCES [dbo].[Empleado] ([cod_Emple])
GO
ALTER TABLE [dbo].[Area Financieras] CHECK CONSTRAINT [FK_Area Financieras_Empleado1]
GO
ALTER TABLE [dbo].[Area Financieras]  WITH CHECK ADD  CONSTRAINT [FK_Area Financieras_Planillas1] FOREIGN KEY([cod_Planillas])
REFERENCES [dbo].[Planillas] ([cod_Planillas])
GO
ALTER TABLE [dbo].[Area Financieras] CHECK CONSTRAINT [FK_Area Financieras_Planillas1]
GO
ALTER TABLE [dbo].[Contacto]  WITH CHECK ADD  CONSTRAINT [FK_Contacto_Tipo Contacto1] FOREIGN KEY([cod_TipoContacto])
REFERENCES [dbo].[Tipo Contacto] ([cod_TipoContacto])
GO
ALTER TABLE [dbo].[Contacto] CHECK CONSTRAINT [FK_Contacto_Tipo Contacto1]
GO
ALTER TABLE [dbo].[Contratos]  WITH CHECK ADD  CONSTRAINT [FK_Contratos_Recursos Humanos] FOREIGN KEY([cod_R_H])
REFERENCES [dbo].[Recursos Humanos] ([cod_R_H])
GO
ALTER TABLE [dbo].[Contratos] CHECK CONSTRAINT [FK_Contratos_Recursos Humanos]
GO
ALTER TABLE [dbo].[Documentos]  WITH CHECK ADD  CONSTRAINT [FK_Documentos_Tipo Documentos1] FOREIGN KEY([cod_tipoDocumento])
REFERENCES [dbo].[Tipo Documentos] ([cod_TipoDocum])
GO
ALTER TABLE [dbo].[Documentos] CHECK CONSTRAINT [FK_Documentos_Tipo Documentos1]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Contacto] FOREIGN KEY([cod_Contacto])
REFERENCES [dbo].[Contacto] ([cod_contacto])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Contacto]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Documentos] FOREIGN KEY([cod_Documentos])
REFERENCES [dbo].[Documentos] ([cod_Docum])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Documentos]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Evaluaciones1] FOREIGN KEY([cod_Evalu])
REFERENCES [dbo].[Evaluaciones] ([cod_Evalu])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Evaluaciones1]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Planillas] FOREIGN KEY([cod_planillas])
REFERENCES [dbo].[Planillas] ([cod_Planillas])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Planillas]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Recursos Humanos] FOREIGN KEY([cod_R_H])
REFERENCES [dbo].[Recursos Humanos] ([cod_R_H])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Recursos Humanos]
GO
ALTER TABLE [dbo].[Expediente]  WITH CHECK ADD  CONSTRAINT [FK_Expediente_Paciente] FOREIGN KEY([cod_Paciente])
REFERENCES [dbo].[Paciente] ([cod_Paciente])
GO
ALTER TABLE [dbo].[Expediente] CHECK CONSTRAINT [FK_Expediente_Paciente]
GO
ALTER TABLE [dbo].[Mantenimiento]  WITH CHECK ADD  CONSTRAINT [FK_Mantenimiento_Inventario] FOREIGN KEY([cod_Inventario])
REFERENCES [dbo].[Inventario] ([cod_Inventario])
GO
ALTER TABLE [dbo].[Mantenimiento] CHECK CONSTRAINT [FK_Mantenimiento_Inventario]
GO
ALTER TABLE [dbo].[Paciente]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_Contacto] FOREIGN KEY([cod_Contacto])
REFERENCES [dbo].[Contacto] ([cod_contacto])
GO
ALTER TABLE [dbo].[Paciente] CHECK CONSTRAINT [FK_Paciente_Contacto]
GO
ALTER TABLE [dbo].[Paciente]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_Documentos] FOREIGN KEY([cod_Documentos])
REFERENCES [dbo].[Documentos] ([cod_Docum])
GO
ALTER TABLE [dbo].[Paciente] CHECK CONSTRAINT [FK_Paciente_Documentos]
GO
ALTER TABLE [dbo].[Planillas]  WITH CHECK ADD  CONSTRAINT [FK_Planillas_Aquisicion_Contratacion] FOREIGN KEY([cod_Adquisi_Contr])
REFERENCES [dbo].[Aquisicion_Contratacion] ([cod_Adq_Contra])
GO
ALTER TABLE [dbo].[Planillas] CHECK CONSTRAINT [FK_Planillas_Aquisicion_Contratacion]
GO
ALTER TABLE [dbo].[Planillas]  WITH CHECK ADD  CONSTRAINT [FK_Planillas_Descuentos] FOREIGN KEY([cod_Descuentos])
REFERENCES [dbo].[Descuentos] ([cod_Descuentos])
GO
ALTER TABLE [dbo].[Planillas] CHECK CONSTRAINT [FK_Planillas_Descuentos]
GO
ALTER TABLE [dbo].[Recursos Humanos]  WITH CHECK ADD  CONSTRAINT [FK_Recursos Humanos_Evaluaciones] FOREIGN KEY([cod_Evaluaciones])
REFERENCES [dbo].[Evaluaciones] ([cod_Evalu])
GO
ALTER TABLE [dbo].[Recursos Humanos] CHECK CONSTRAINT [FK_Recursos Humanos_Evaluaciones]
GO
ALTER TABLE [dbo].[Recursos Humanos]  WITH CHECK ADD  CONSTRAINT [FK_Recursos Humanos_Expediente] FOREIGN KEY([cod_Expediente])
REFERENCES [dbo].[Expediente] ([cod_Expediente])
GO
ALTER TABLE [dbo].[Recursos Humanos] CHECK CONSTRAINT [FK_Recursos Humanos_Expediente]
GO
ALTER TABLE [dbo].[Recursos Humanos]  WITH CHECK ADD  CONSTRAINT [FK_Recursos Humanos_Planillas] FOREIGN KEY([cod_Planilla])
REFERENCES [dbo].[Planillas] ([cod_Planillas])
GO
ALTER TABLE [dbo].[Recursos Humanos] CHECK CONSTRAINT [FK_Recursos Humanos_Planillas]
GO
USE [master]
GO
ALTER DATABASE [Hospital] SET  READ_WRITE 
GO

/* INSERTAR DATOS */

insert into Administracion values ('Juan Carlos Perez','','','');
insert into Administracion values ('Jose Ovidio Castro','','','');
insert into Administracion values ('Zulma Carolina Cruz','','','');
insert into Administracion values ('Sandra Cecilia Lopez','','','');
insert into Administracion values ('Mariana Lourdes Pineda','','','');
insert into Administracion values ('Juan Jose Palacio','','','');
insert into Administracion values ('Maria Nicolasa Lazo','','','');
insert into Administracion values ('Marlon Josue Reyes','','','');
insert into Administracion values ('Mauricio Jose Perez','','','');
insert into Administracion values ('Eduardo Jose Garcia','','','');

insert into Adquisicion_Contratacion values ('Corresponde al Area de Consulta Externa','','valoracion de Insumos','control de suministros','','','Sandra Cecilia Lopez');
insert into Adquisicion_Contratacion values ('Corresponde al Area de Consulta Externa','','valoracion de Insumos','control de suministros','','','Sandra Cecilia Lopez');
insert into Adquisicion_Contratacion values ('Corresponde al Area de Consulta Externa','','valoracion de Insumos','control de suministros','','','Sandra Cecilia Lopez');
insert into Adquisicion_Contratacion values ('Corresponde al Area de Consulta Externa','','valoracion de Insumos','control de suministros','','','Sandra Cecilia Lopez');
insert into Adquisicion_Contratacion values ('Corresponde al Area de Consulta Externa','','valoracion de Insumos','control de suministros','','','Sandra Cecilia Lopez');
insert into Adquisicion_Contratacion values ('Corresponde al Area de Consulta Externa','','valoracion de Insumos','control de suministros','','','Sandra Cecilia Lopez');
insert into Adquisicion_Contratacion values ('Corresponde al Area de Consulta Externa','','valoracion de Insumos','control de suministros','','','Sandra Cecilia Lopez');
insert into Adquisicion_Contratacion values ('Corresponde al Area de Consulta Externa','','valoracion de Insumos','control de suministros','','','Sandra Cecilia Lopez');
insert into Adquisicion_Contratacion values ('Corresponde al Area de Consulta Externa','','valoracion de Insumos','control de suministros','','','Sandra Cecilia Lopez');
insert into Adquisicion_Contratacion values ('Corresponde al Area de Consulta Externa','','valoracion de Insumos','control de suministros','','','Sandra Cecilia Lopez');

insert into AreaFinanciera values ('Oscar Javier Castro Lopez','','valoracion de Existencias','Ejecucion Presupuestaria','','','Sandra Cecilia Lopez');
insert into AreaFinanciera values ('Oscar Javier Castro Lopez','','valoracion de Existencias','Ejecucion Presupuestaria','','','Sandra Cecilia Lopez');
insert into AreaFinanciera values ('Oscar Javier Castro Lopez','','valoracion de Existencias','Ejecucion Presupuestaria','','','Sandra Cecilia Lopez');
insert into AreaFinanciera values ('Oscar Javier Castro Lopez','','valoracion de Existencias','Ejecucion Presupuestaria','','','Sandra Cecilia Lopez');
insert into AreaFinanciera values ('Oscar Javier Castro Lopez','','valoracion de Existencias','Ejecucion Presupuestaria','','','Sandra Cecilia Lopez');
insert into AreaFinanciera values ('Oscar Javier Castro Lopez','','valoracion de Existencias','Ejecucion Presupuestaria','','','Sandra Cecilia Lopez');
insert into AreaFinanciera values ('Oscar Javier Castro Lopez','','valoracion de Existencias','Ejecucion Presupuestaria','','','Sandra Cecilia Lopez');
insert into AreaFinanciera values ('Oscar Javier Castro Lopez','','valoracion de Existencias','Ejecucion Presupuestaria','','','Sandra Cecilia Lopez');
insert into AreaFinanciera values ('Oscar Javier Castro Lopez','','valoracion de Existencias','Ejecucion Presupuestaria','','','Sandra Cecilia Lopez');
insert into AreaFinanciera values ('Oscar Javier Castro Lopez','','valoracion de Existencias','Ejecucion Presupuestaria','','','Sandra Cecilia Lopez');

insert into Contacto values ('','');
insert into Contacto values ('','');
insert into Contacto values ('','');
insert into Contacto values ('','');
insert into Contacto values ('','');
insert into Contacto values ('','');
insert into Contacto values ('','');
insert into Contacto values ('','');
insert into Contacto values ('','');
insert into Contacto values ('','');

insert into Contratos values ('','Jose Armando Flores Castro','2019/03/12',08:00:00,'Excelentes Conocimientos en Maquinaria de Hospital');
insert into Contratos values ('','Rafael Jose Mendez Perez','2019/04/12',09:00:00,'Experiencia de medico Quirurgico');
insert into Contratos values ('','Nancy Patricia Soto Leiva','2019/03/20',08:00:00,'EXperiencia de Asistente Medico');
insert into Contratos values ('','Susana Elisa Carmona Perez','2019/03/11',08:00:00,'Enfermera');
insert into Contratos values ('','carlos Manuel Diaz Lopez','2019/03/13',08:00:00,'conocimientos y titulos de Pediatria');
insert into Contratos values ('','Riquelmy Manfredo colorado Moreno','2019/03/12',09:00:00,'Doctor y Cirugano');
insert into Contratos values ('','Melissa Jazmin Reyes Palacio','2019/03/21',08:00:00,'Enfermera');
insert into Contratos values ('','Saul Eduardo Garcia','2019/03/19',10:00:00,'Conocimiento en Doctorado General');
insert into Contratos values ('','Ana Gabriela Lemus LAzo','2019/03/12',08:00:00,'Secretaria para Area Administrativa');
insert into Contratos values ('','Rene Alexander GArcia Garcia','2019/03/12',11:00:00,'Personal para Limpieza');

insert into Descuentos values ('','AFP','ISSS','Renta','','','se le desconto llegadas tardias');
insert into Descuentos values ('','AFP','ISSS','Renta','','','no hay descuentos extras');
insert into Descuentos values ('','AFP','ISSS','Renta','','','se le desconto adelanto');
insert into Descuentos values ('','AFP','ISSS','Renta','','','no hay descuentos extras');
insert into Descuentos values ('','AFP','ISSS','Renta','','','se le desconto llegadas tardias');
insert into Descuentos values ('','AFP','ISSS','Renta','','','no hay descuentos extras');
insert into Descuentos values ('','AFP','ISSS','Renta','','','no hay descuentos extras');
insert into Descuentos values ('','AFP','ISSS','Renta','','','no hay descuentos extras');
insert into Descuentos values ('','AFP','ISSS','Renta','','','no hay descuentos extras');
insert into Descuentos values ('','AFP','ISSS','Renta','','','se le desconto llegadas tardias');

insert into Documentos values ('','');
insert into Documentos values ('','');
insert into Documentos values ('','');
insert into Documentos values ('','');
insert into Documentos values ('','');
insert into Documentos values ('','');
insert into Documentos values ('','');
insert into Documentos values ('','');
insert into Documentos values ('','');
insert into Documentos values ('','');
insert into Documentos values ('','');

insert into Empleado values ('','carlos antonio','escobar','casilla','','M','altos del cerro soyapando','1990/05/12',''),
insert into Empleado values('','cecilia areli','segovia','centeno','','f','colonia zacamil','1889/07/12',''),
insert into Empleado values('','ana maria','urrutia','benites','','f','prados de venecia soyapando','1884/05/01',''),
insert into Empleado values('','antonio josue','espinosa','castro','','M','san jacinto','1990/12/12',''),
insert into Empleado values('','oscar javier','carcamo','ceren','','M','22 de abril soyapando','1885/07/12',''),
insert into Empleado values('','joselin marina','escobar','paulino','','f','san roque mejicanos','1991/08/10',''),
insert into Empleado values('','carlos luis','reyes','mendez','','M','cuscatancingo','1994/05/28','',),
insert into Empleado values('','mauricio alberto','palacio','gomez','','M','mejicanos colonia escorial','1993/04/02',''),
insert into Empleado values('','eduardo saul','medina','ceren','','M','san salvador','1990/10/12','',),
insert into Empleado values('','alexander josue','leiva','gonzales','','M','altos del cerro soyapando','1990/05/12','',);

insert into Evaluaciones values('','Jorge Diaz','2019/01/12','08:00','todo con normalidad','',''),
insert into Evaluaciones values('','mauricio ortiz','2019/01/20','08:00','todo con normalidad','',''),
insert into Evaluaciones values('','Jorge Diaz','2019/01/15','08:00','todo con normalidad','',''),
insert into Evaluaciones values('','Jorge Diaz','2019/01/30','08:00','todo con normalidad','se espera que todo mejore',''),
insert into Evaluaciones values('','mauricio ortiz','2019/02/01','08:00','todo con normalidad','',''),
insert into Evaluaciones values('','Jorge Diaz','2019/01/18','08:00','todo con normalidad','',''),
insert into Evaluaciones values('','Jorge Diaz','2019/01/11','08:00','todo con normalidad','',''),
insert into Evaluaciones values('','mauricio ortiz','2019/02/09','08:00','todo con normalidad','faltan materiales medicos',''),
insert into Evaluaciones values('','Jorge Diaz','2019/02/05','08:00','todo con normalidad','',''),
insert into Evaluaciones values('','mauricio ortiz','2019/02/07','08:00','todo con normalidad','','');

insert into Expediente values('',001,'san salvador','mejicanos','','normal','normal','160 libras','','','todas','2019/03/11','',''),
insert into Expediente values('',002,'san salvador','Apopa    ','','normal','normal','160 libras','','','todas','2019/03/11','',''),
insert into Expediente values('',003,'san salvador','San jacinto','','normal','normal','160 libras','','','todas','2019/03/11','',''),
insert into Expediente values('',004,'san salvador','Mejicanos','','normal','normal','160 libras','','','todas','2019/03/11','',''),
insert into Expediente values('',005,'san salvador','Zacamil','','normal','normal','160 libras','','','todas','2019/03/11','',''),
insert into Expediente values('',006,'san salvador','mejicanos','','normal','normal','160 libras','','','todas','2019/03/11','',''),
insert into Expediente values('',007,'san salvador','mejicanos','','normal','normal','160 libras','','','todas','2019/03/11','',''),
insert into Expediente values('',008,'san salvador','mejicanos','','normal','normal','160 libras','','','todas','2019/03/11','',''),
insert into Expediente values('',009,'san salvador','mejicanos','','normal','normal','160 libras','','','todas','2019/03/11','',''),
insert into Expediente values('',010,'san salvador','mejicanos','','normal','normal','160 libras','','','todas','2019/03/11','',''),

insert into Inventario values ('','inventario final','2019/12/20','deficiente','falta utensilios','falta de camas','faltan implementos','falta materiales','deficiencia','completo','faltan aparatos');
insert into Inventario values ('','inventario final','2019/12/20','deficiente','falta utensilios','falta de camas','faltan implementos','falta materiales','deficiencia','completo','faltan aparatos');
insert into Inventario values ('','inventario final','2019/12/20','deficiente','falta utensilios','falta de camas','faltan implementos','falta materiales','deficiencia','completo','faltan aparatos');
insert into Inventario values ('','inventario final','2019/12/20','deficiente','falta utensilios','falta de camas','faltan implementos','falta materiales','deficiencia','completo','faltan aparatos');
insert into Inventario values ('','inventario final','2019/12/20','deficiente','falta utensilios','falta de camas','faltan implementos','falta materiales','deficiencia','completo','faltan aparatos');
insert into Inventario values ('','inventario final','2019/12/20','deficiente','falta utensilios','falta de camas','faltan implementos','falta materiales','deficiencia','completo','faltan aparatos');
insert into Inventario values ('','inventario final','2019/12/20','deficiente','falta utensilios','falta de camas','faltan implementos','falta materiales','deficiencia','completo','faltan aparatos');
insert into Inventario values ('','inventario final','2019/12/20','deficiente','falta utensilios','falta de camas','faltan implementos','falta materiales','deficiencia','completo','faltan aparatos');
insert into Inventario values ('','inventario final','2019/12/20','deficiente','falta utensilios','falta de camas','faltan implementos','falta materiales','deficiencia','completo','faltan aparatos');
insert into Inventario values ('','inventario final','2019/12/20','deficiente','falta utensilios','falta de camas','faltan implementos','falta materiales','deficiencia','completo','faltan aparatos');

insert into Mantenimiento values ('','2019/01/30','con normalidad','','se actualizo','Si cumplio');
insert into Mantenimiento values ('','2019/02/28','incompleto','','se actualizo','Si cumplio');
insert into Mantenimiento values ('','2019/03/30','falta mantenimiento','','se actualizo','Si cumplio');
insert into Mantenimiento values ('','2019/04/30','sin revisar','','se actualizo','no cumplio');
insert into Mantenimiento values ('','2019/05/30','con normalidad','','se actualizo','Si cumplio');
insert into Mantenimiento values ('','2019/06/30','incompleto','','se actualizo','no cumplio');
insert into Mantenimiento values ('','2019/07/30','con normalidad','','se actualizo','Si cumplio');
insert into Mantenimiento values ('','2019/08/30','falta revision','','se actualizo','no cumplio');
insert into Mantenimiento values ('','2019/09/30','con normalidad','','se actualizo','Si cumplio');
insert into Mantenimiento values ('','2019/10/30','incompleto','','se actualizo','Si cumplio');

insert into Paciente values ('','jose alberto','perez','mejia','M','1988/02/22','casado','albañil','colonia la chacara soyapango','','jose zamora','maria mejia','carmen de Zamora','ninguno','','Doctor Brizuela','2019/03/25','paciente para cirugia');
insert into Paciente values ('','claudia lissette','salami','mejia','F','1990/02/22','soltera','estudiante','colonia zacamil','','juan perez','mariana mejia','','ninguno','','Doctor Brizuela','2019/03/25','paciente para consuta general');
insert into Paciente values ('','mario jose','zamora','fermina','M','1988/02/22','casado','vendedor',' soyapango','','jose zamora','mari lopez','carmen de Zamora','ninguno','','Doctor Brizuela','2019/03/25','paciente para consulta');
insert into Paciente values ('','carlos escobar','zamora','lopez','M','1988/02/22','soltero','veterinaria','colonia malaga','','emanuel vasquez','maria mejia','carmen de Zamora','ninguno','','Doctor Brizuela','2019/03/25','paciente para consulta general');
insert into Paciente values ('','misael joel','zamora','portillo','M','1988/02/22','viudo','albañil','colonia modelo','','mendoza guerra','maria mejia','carmen de Zamora','ninguno','','Doctor Brizuela','2019/03/25','paciente para pre operacion');
insert into Paciente values ('','luis paolo','zamora','londres','M','1988/02/22','casado','abogado','sn jacinto','','jose zamora','maria mejia','carmen de Zamora','ninguno','','Doctor Brizuela','2019/03/25','paciente para cirugia');
insert into Paciente values ('','leo londre','zamora','lenovo','M','1988/02/22','casado','maestro','colonia 22 de abril','','jose zamora','maria mejia','carmen de Zamora','ninguno','','Doctor Brizuela','2019/03/25','consulta');
insert into Paciente values ('','maria eunice','zamora','villalobos','F','1988/02/22','soltero','ama de casa','colonia Amatepec','','jose zamora','maria mejia','carmen de Zamora','ninguno','','Doctor Brizuela','2019/03/25','paciente para odontologia');
insert into Paciente values ('','karla elia','leiva','mejia','F','1988/02/22','casado','','colonia la chacara ','','jose zamora','maria mejia','carmen de Zamora','ninguno','','Doctor Brizuela','2019/03/25','paciente para quimioterapia');
insert into Paciente values ('','mary elina','carcamo','mejia','F','1988/02/22','acompañada','cajera','san jacinto ','','jose zamora','maria mejia','carmen de Zamora','ninguno','','Doctor Brizuela','2019/03/25','paciente para consulta');

insert into Planillas values ('','','Doctor','','','2019/02/15','$800');
insert into Planillas values ('','','enfermera','','','2019/03/15','$350');
insert into Planillas values ('','','Doctor','','','2019/02/15','$800');
insert into Planillas values ('','','personal de limpieza','','','2019/04/15','$280');
insert into Planillas values ('','','Doctor en cirugia','','','2019/05/15','$1000');
insert into Planillas values ('','','Doctor general','','','2019/02/15','$800');
insert into Planillas values ('','','personal de limpieza','','','2019/02/15','$250');
insert into Planillas values ('','','Doctor','','','2019/02/15','$800');
insert into Planillas values ('','','enfermera','','','2019/02/15','$350');
insert into Planillas values ('','','secretaria','','','2019/02/15','$300');

insert into RecursosHumanos values ('','jose luis beltran','6:00 am','5:00 pm','0 horas','','','','00012','','registrado','completa','');
insert into RecursosHumanos values ('','claudia lissette leiva','5:00 am','4:00 pm','3 horas','','','','00013','','registrado','completa','');
insert into RecursosHumanos values('','maria ester campos','6:00 am','5:00 pm','3 horas','','','','00014','','registrado','completa','');
insert into RecursosHumanos values('','Eduardo jose palacios','6:00 pm','5:00 am','2 horas','','','','00015','','registrado','completa','');
insert into RecursosHumanos values('','Alexander Daniel Campos','6:00 am','5:00 pm','3 horas','','','','00016','','registrado','completa','');
insert into RecursosHumanos values('','lucia mariana perez','6:00 am','5:00 pm','3 horas','','','','00017','','registrado','completa','');
insert into RecursosHumanos values('','carlos jose menjivar','6:00 pm','5:00 am','5 horas','','','','00018','','registrado','completa','');
insert into RecursosHumanos values('','lucrecia maritza castro','6:00 am','5:00 pm','3 horas','','','','00019','','registrado','completa','');
insert into RecursosHumanos values('','debora maria guerra','6:00 am','5:00 pm','8 horas','','','','00020','','registrado','completa','');
insert into RecursosHumanos values('','elvin jose guevara','6:00 am','5:00 pm','6 horas','','','','00021','','registrado','completa','');

insert into TipoContacto values ('','celular','','7745-8899','2019/02/03','completo');
insert into TipoContacto values ('','casa','','2232-1234','2019/01/03','completo');
insert into TipoContacto values ('','celular','','7354-9876','2019/03/03','completo');
insert into TipoContacto values ('','celular','','7576-8753','2019/01/05','');
insert into TipoContacto values ('','fax','','2345-9864','2019/08/07','');
insert into TipoContacto values ('','celular','','7745-8899','2019/06/03','completo');
insert into TipoContacto values ('','celular','','7745-8899','2019/09/03','completo');
insert into TipoContacto values ('','casa','','2232-1234','2019/01/03','');
insert into TipoContacto values ('','celular','','7745-8899','2019/04/03','completo');
insert into TipoContacto values ('','celular','','7745-8899','2019/09/03','completo');

insert into TipoDocumento values ('','personales','dui','050902-5','2019/05/22','','completo');
insert into TipoDocumento values ('','personales','nit','056387298374','2019/04/02','','completo');
insert into TipoDocumento values ('','personales','dui','050502-5','2019/05/12','','falta nit');
insert into TipoDocumento values ('','personales','dui','050502-5','2019/01/06','','completo');
insert into TipoDocumento values ('','personales','nit','056387298374','2019/02/13','','faltan documentos');
insert into TipoDocumento values ('','personales','dui','050502-5','2019/01/22','','completo');
insert into TipoDocumento values ('','personales','dui','050502-5','2019/05/22','','completo');
insert into TipoDocumento values ('','personales','nit','056387298374','2019/03/25','','falta dui');
insert into TipoDocumento values ('','personales','dui','050502-5','2019/04/15','','faltan documentos');
insert into TipoDocumento values ('','personales','dui','050502-5','2019/01/28','','completo');
