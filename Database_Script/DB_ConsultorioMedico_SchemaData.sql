USE [master]
GO

/****** Object:  Database [ConsultorioMedico]    Script Date: 29/10/2023 17:05:49 ******/
CREATE DATABASE [ConsultorioMedico]
GO

USE [ConsultorioMedico]
GO
/****** Object:  Schema [Especialidad]    Script Date: 29/11/2023 09:45:57 ******/
CREATE SCHEMA [Especialidad]
GO
/****** Object:  Schema [Usuario]    Script Date: 29/11/2023 09:45:57 ******/
CREATE SCHEMA [Usuario]
GO
/****** Object:  Table [Especialidad].[Especialidad]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Especialidad].[Especialidad](
	[IdEspecialidad] [int] IDENTITY(1,1) NOT NULL,
	[Especialidad] [nvarchar](50) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Especialidad] PRIMARY KEY CLUSTERED 
(
	[IdEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Especialidad].[EspecialistaEspecialidad]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Especialidad].[EspecialistaEspecialidad](
	[IdEspecialistaEspecialidad] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[IdEspecialidad] [int] NOT NULL,
 CONSTRAINT [PK_EspecialistaEspecialidad] PRIMARY KEY CLUSTERED 
(
	[IdEspecialistaEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Especialidad].[EstadoTurno]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Especialidad].[EstadoTurno](
	[IdEstadoTurno] [int] IDENTITY(1,1) NOT NULL,
	[NombreEstado] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_EstadoTurno] PRIMARY KEY CLUSTERED 
(
	[IdEstadoTurno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Especialidad].[Turno]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Especialidad].[Turno](
	[IdTurno] [int] IDENTITY(1,1) NOT NULL,
	[IdPaciente] [int] NOT NULL,
	[IdEspecialista] [int] NOT NULL,
	[IdJornada] [int] NOT NULL,
	[IdEspecialidad] [int] NOT NULL,
	[FechaHoraTurno] [datetime] NOT NULL,
	[MotivoConsulta] [nvarchar](200) NULL,
	[Diagnostico] [text] NULL,
	[IdEstadoTurno] [int] NOT NULL,
 CONSTRAINT [PK_Turno] PRIMARY KEY CLUSTERED 
(
	[IdTurno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Usuario].[Jornada]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Usuario].[Jornada](
	[IdJornada] [int] IDENTITY(1,1) NOT NULL,
	[IdEspecialidad] [int] NOT NULL,
	[IdEspecialista] [int] NOT NULL,
	[DiaSemana] [nvarchar](10) NOT NULL,
	[HoraInicio] [time](7) NOT NULL,
	[HoraFin] [time](7) NOT NULL,
 CONSTRAINT [PK_Jornada] PRIMARY KEY CLUSTERED 
(
	[IdJornada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Usuario].[Paciente]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Usuario].[Paciente](
	[IdPaciente] [int] IDENTITY(1,1) NOT NULL,
	[Apellido] [nvarchar](50) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Dni] [int] NOT NULL,
	[Sexo] [char](1) NOT NULL,
	[FechaNacimiento] [datetime] NOT NULL,
	[Mail] [nvarchar](50) NULL,
	[Telefono] [nvarchar](50) NULL,
	[Cobertura] [nvarchar](50) NULL,
	[NroCredencial] [int] NULL,
 CONSTRAINT [PK_Paciente] PRIMARY KEY CLUSTERED 
(
	[IdPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Usuario].[Perfil]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Usuario].[Perfil](
	[IdPerfil] [int] IDENTITY(1,1) NOT NULL,
	[Perfil] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Perfil] PRIMARY KEY CLUSTERED 
(
	[IdPerfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Usuario].[Usuario]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Usuario].[Usuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Apellido] [nvarchar](50) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Dni] [int] NOT NULL,
	[Sexo] [char](1) NOT NULL,
	[FechaNacimiento] [datetime] NOT NULL,
	[Mail] [nvarchar](50) NULL,
	[Telefono] [nvarchar](50) NULL,
	[Usuario] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[IdPerfil] [int] NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Especialidad].[Especialidad] ON 

INSERT [Especialidad].[Especialidad] ([IdEspecialidad], [Especialidad], [Estado]) VALUES (1, N'Cardiología', 1)
INSERT [Especialidad].[Especialidad] ([IdEspecialidad], [Especialidad], [Estado]) VALUES (2, N'Dermatología', 1)
INSERT [Especialidad].[Especialidad] ([IdEspecialidad], [Especialidad], [Estado]) VALUES (3, N'Endocrinología', 1)
INSERT [Especialidad].[Especialidad] ([IdEspecialidad], [Especialidad], [Estado]) VALUES (4, N'Gastroenterología', 1)
INSERT [Especialidad].[Especialidad] ([IdEspecialidad], [Especialidad], [Estado]) VALUES (5, N'Hematología', 1)
INSERT [Especialidad].[Especialidad] ([IdEspecialidad], [Especialidad], [Estado]) VALUES (6, N'Infectología', 1)
INSERT [Especialidad].[Especialidad] ([IdEspecialidad], [Especialidad], [Estado]) VALUES (7, N'Nefrología', 1)
INSERT [Especialidad].[Especialidad] ([IdEspecialidad], [Especialidad], [Estado]) VALUES (8, N'Neurología', 1)
INSERT [Especialidad].[Especialidad] ([IdEspecialidad], [Especialidad], [Estado]) VALUES (9, N'Oftalmología', 1)
INSERT [Especialidad].[Especialidad] ([IdEspecialidad], [Especialidad], [Estado]) VALUES (10, N'Oncología', 1)
INSERT [Especialidad].[Especialidad] ([IdEspecialidad], [Especialidad], [Estado]) VALUES (11, N'Otorrinolaringología', 1)
INSERT [Especialidad].[Especialidad] ([IdEspecialidad], [Especialidad], [Estado]) VALUES (12, N'Pediatría', 1)
INSERT [Especialidad].[Especialidad] ([IdEspecialidad], [Especialidad], [Estado]) VALUES (13, N'Psiquiatría', 1)
INSERT [Especialidad].[Especialidad] ([IdEspecialidad], [Especialidad], [Estado]) VALUES (14, N'Reumatología', 1)
INSERT [Especialidad].[Especialidad] ([IdEspecialidad], [Especialidad], [Estado]) VALUES (15, N'Traumatología', 1)
INSERT [Especialidad].[Especialidad] ([IdEspecialidad], [Especialidad], [Estado]) VALUES (16, N'Urología', 1)
INSERT [Especialidad].[Especialidad] ([IdEspecialidad], [Especialidad], [Estado]) VALUES (17, N'Ginecología', 1)
INSERT [Especialidad].[Especialidad] ([IdEspecialidad], [Especialidad], [Estado]) VALUES (18, N'Neumonología', 1)
INSERT [Especialidad].[Especialidad] ([IdEspecialidad], [Especialidad], [Estado]) VALUES (19, N'Radiología', 1)
INSERT [Especialidad].[Especialidad] ([IdEspecialidad], [Especialidad], [Estado]) VALUES (20, N'Oncología Pediátrica', 1)
SET IDENTITY_INSERT [Especialidad].[Especialidad] OFF
GO
SET IDENTITY_INSERT [Especialidad].[EspecialistaEspecialidad] ON 

INSERT [Especialidad].[EspecialistaEspecialidad] ([IdEspecialistaEspecialidad], [IdUsuario], [IdEspecialidad]) VALUES (1, 1, 1)
INSERT [Especialidad].[EspecialistaEspecialidad] ([IdEspecialistaEspecialidad], [IdUsuario], [IdEspecialidad]) VALUES (2, 3, 2)
INSERT [Especialidad].[EspecialistaEspecialidad] ([IdEspecialistaEspecialidad], [IdUsuario], [IdEspecialidad]) VALUES (3, 5, 3)
INSERT [Especialidad].[EspecialistaEspecialidad] ([IdEspecialistaEspecialidad], [IdUsuario], [IdEspecialidad]) VALUES (4, 8, 4)
INSERT [Especialidad].[EspecialistaEspecialidad] ([IdEspecialistaEspecialidad], [IdUsuario], [IdEspecialidad]) VALUES (5, 10, 5)
INSERT [Especialidad].[EspecialistaEspecialidad] ([IdEspecialistaEspecialidad], [IdUsuario], [IdEspecialidad]) VALUES (6, 1, 6)
INSERT [Especialidad].[EspecialistaEspecialidad] ([IdEspecialistaEspecialidad], [IdUsuario], [IdEspecialidad]) VALUES (7, 3, 7)
INSERT [Especialidad].[EspecialistaEspecialidad] ([IdEspecialistaEspecialidad], [IdUsuario], [IdEspecialidad]) VALUES (8, 5, 8)
INSERT [Especialidad].[EspecialistaEspecialidad] ([IdEspecialistaEspecialidad], [IdUsuario], [IdEspecialidad]) VALUES (9, 8, 9)
INSERT [Especialidad].[EspecialistaEspecialidad] ([IdEspecialistaEspecialidad], [IdUsuario], [IdEspecialidad]) VALUES (10, 10, 10)
SET IDENTITY_INSERT [Especialidad].[EspecialistaEspecialidad] OFF
GO
SET IDENTITY_INSERT [Especialidad].[EstadoTurno] ON 

INSERT [Especialidad].[EstadoTurno] ([IdEstadoTurno], [NombreEstado]) VALUES (1, N'Pendiente')
INSERT [Especialidad].[EstadoTurno] ([IdEstadoTurno], [NombreEstado]) VALUES (2, N'Atendido')
INSERT [Especialidad].[EstadoTurno] ([IdEstadoTurno], [NombreEstado]) VALUES (3, N'Cancelado')
SET IDENTITY_INSERT [Especialidad].[EstadoTurno] OFF
GO
SET IDENTITY_INSERT [Especialidad].[Turno] ON 

INSERT [Especialidad].[Turno] ([IdTurno], [IdPaciente], [IdEspecialista], [IdJornada], [IdEspecialidad], [FechaHoraTurno], [MotivoConsulta], [Diagnostico], [IdEstadoTurno]) VALUES (2, 1, 2, 1, 1, CAST(N'2023-11-24T10:00:00.000' AS DateTime), N'Consulta rutinaria', N'Sin diagnóstico', 3)
INSERT [Especialidad].[Turno] ([IdTurno], [IdPaciente], [IdEspecialista], [IdJornada], [IdEspecialidad], [FechaHoraTurno], [MotivoConsulta], [Diagnostico], [IdEstadoTurno]) VALUES (3, 3, 4, 2, 2, CAST(N'2023-11-25T14:30:00.000' AS DateTime), N'Dolor de cabeza', N'Necesita más evaluación', 2)
INSERT [Especialidad].[Turno] ([IdTurno], [IdPaciente], [IdEspecialista], [IdJornada], [IdEspecialidad], [FechaHoraTurno], [MotivoConsulta], [Diagnostico], [IdEstadoTurno]) VALUES (4, 2, 1, 3, 1, CAST(N'2023-11-26T11:15:00.000' AS DateTime), N'Dolor de garganta', N'Resfriado común', 3)
INSERT [Especialidad].[Turno] ([IdTurno], [IdPaciente], [IdEspecialista], [IdJornada], [IdEspecialidad], [FechaHoraTurno], [MotivoConsulta], [Diagnostico], [IdEstadoTurno]) VALUES (5, 4, 3, 1, 2, CAST(N'2023-11-27T09:45:00.000' AS DateTime), N'Problemas digestivos', N'Requiere análisis adicional', 2)
INSERT [Especialidad].[Turno] ([IdTurno], [IdPaciente], [IdEspecialista], [IdJornada], [IdEspecialidad], [FechaHoraTurno], [MotivoConsulta], [Diagnostico], [IdEstadoTurno]) VALUES (6, 5, 2, 2, 1, CAST(N'2023-11-28T16:00:00.000' AS DateTime), N'Control de presión arterial', N'Presión arterial normal', 1)
SET IDENTITY_INSERT [Especialidad].[Turno] OFF
GO
SET IDENTITY_INSERT [Usuario].[Jornada] ON 

INSERT [Usuario].[Jornada] ([IdJornada], [IdEspecialidad], [IdEspecialista], [DiaSemana], [HoraInicio], [HoraFin]) VALUES (1, 1, 1, N'Lunes', CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time))
INSERT [Usuario].[Jornada] ([IdJornada], [IdEspecialidad], [IdEspecialista], [DiaSemana], [HoraInicio], [HoraFin]) VALUES (2, 2, 3, N'Martes', CAST(N'10:00:00' AS Time), CAST(N'18:00:00' AS Time))
INSERT [Usuario].[Jornada] ([IdJornada], [IdEspecialidad], [IdEspecialista], [DiaSemana], [HoraInicio], [HoraFin]) VALUES (3, 3, 5, N'Miércoles', CAST(N'08:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [Usuario].[Jornada] ([IdJornada], [IdEspecialidad], [IdEspecialista], [DiaSemana], [HoraInicio], [HoraFin]) VALUES (4, 4, 8, N'Jueves', CAST(N'11:00:00' AS Time), CAST(N'19:00:00' AS Time))
INSERT [Usuario].[Jornada] ([IdJornada], [IdEspecialidad], [IdEspecialista], [DiaSemana], [HoraInicio], [HoraFin]) VALUES (5, 5, 10, N'Viernes', CAST(N'07:00:00' AS Time), CAST(N'15:00:00' AS Time))
SET IDENTITY_INSERT [Usuario].[Jornada] OFF
GO
SET IDENTITY_INSERT [Usuario].[Paciente] ON 

INSERT [Usuario].[Paciente] ([IdPaciente], [Apellido], [Nombre], [Dni], [Sexo], [FechaNacimiento], [Mail], [Telefono], [Cobertura], [NroCredencial]) VALUES (1, N'Gómez', N'Juan', 12345678, N'M', CAST(N'1990-05-15T00:00:00.000' AS DateTime), N'juan.gomez@email.com', N'+54 9 11 1234-5678', N'Swiss Medical', 98765432)
INSERT [Usuario].[Paciente] ([IdPaciente], [Apellido], [Nombre], [Dni], [Sexo], [FechaNacimiento], [Mail], [Telefono], [Cobertura], [NroCredencial]) VALUES (2, N'Martínez', N'Ana', 23456789, N'F', CAST(N'1985-08-20T00:00:00.000' AS DateTime), N'ana.martinez@email.com', N'+54 9 11 2345-6789', N'OSDE', 87654321)
INSERT [Usuario].[Paciente] ([IdPaciente], [Apellido], [Nombre], [Dni], [Sexo], [FechaNacimiento], [Mail], [Telefono], [Cobertura], [NroCredencial]) VALUES (3, N'Rodríguez', N'Pedro', 34567890, N'M', CAST(N'1978-03-10T00:00:00.000' AS DateTime), N'pedro.rodriguez@email.com', N'+54 9 11 3456-7890', N'Swiss Medical', 76543210)
INSERT [Usuario].[Paciente] ([IdPaciente], [Apellido], [Nombre], [Dni], [Sexo], [FechaNacimiento], [Mail], [Telefono], [Cobertura], [NroCredencial]) VALUES (4, N'Fernández', N'Laura', 45678901, N'F', CAST(N'1995-11-25T00:00:00.000' AS DateTime), N'laura.fernandez@email.com', N'+54 9 11 4567-8901', N'OSDE', 65432109)
INSERT [Usuario].[Paciente] ([IdPaciente], [Apellido], [Nombre], [Dni], [Sexo], [FechaNacimiento], [Mail], [Telefono], [Cobertura], [NroCredencial]) VALUES (5, N'López', N'Carlos', 56789012, N'M', CAST(N'1980-07-18T00:00:00.000' AS DateTime), N'carlos.lopez@email.com', N'+54 9 11 5678-9012', N'Swiss Medical', 54321098)
INSERT [Usuario].[Paciente] ([IdPaciente], [Apellido], [Nombre], [Dni], [Sexo], [FechaNacimiento], [Mail], [Telefono], [Cobertura], [NroCredencial]) VALUES (6, N'García', N'Sofía', 67890123, N'F', CAST(N'1989-02-28T00:00:00.000' AS DateTime), N'sofia.garcia@email.com', N'+54 9 11 6789-0123', N'OSDE', 43210987)
INSERT [Usuario].[Paciente] ([IdPaciente], [Apellido], [Nombre], [Dni], [Sexo], [FechaNacimiento], [Mail], [Telefono], [Cobertura], [NroCredencial]) VALUES (7, N'Díaz', N'Ricardo', 78901234, N'M', CAST(N'1972-09-05T00:00:00.000' AS DateTime), N'ricardo.diaz@email.com', N'+54 9 11 7890-1234', N'Swiss Medical', 32109876)
INSERT [Usuario].[Paciente] ([IdPaciente], [Apellido], [Nombre], [Dni], [Sexo], [FechaNacimiento], [Mail], [Telefono], [Cobertura], [NroCredencial]) VALUES (8, N'Pérez', N'María', 89012345, N'F', CAST(N'1987-06-12T00:00:00.000' AS DateTime), N'maria.perez@email.com', N'+54 9 11 8901-2345', N'OSDE', 21098765)
INSERT [Usuario].[Paciente] ([IdPaciente], [Apellido], [Nombre], [Dni], [Sexo], [FechaNacimiento], [Mail], [Telefono], [Cobertura], [NroCredencial]) VALUES (9, N'Mendoza', N'Hernán', 90123456, N'M', CAST(N'1992-12-03T00:00:00.000' AS DateTime), N'hernan.mendoza@email.com', N'+54 9 11 9012-3456', N'Swiss Medical', 10987654)
INSERT [Usuario].[Paciente] ([IdPaciente], [Apellido], [Nombre], [Dni], [Sexo], [FechaNacimiento], [Mail], [Telefono], [Cobertura], [NroCredencial]) VALUES (10, N'Suárez', N'Lucía', 98765432, N'X', CAST(N'1983-04-30T00:00:00.000' AS DateTime), N'lucia.suarez@email.com', N'+54 9 11 9876-5432', N'OSDE', 98765432)
SET IDENTITY_INSERT [Usuario].[Paciente] OFF
GO
SET IDENTITY_INSERT [Usuario].[Perfil] ON 

INSERT [Usuario].[Perfil] ([IdPerfil], [Perfil]) VALUES (1, N'Administrador')
INSERT [Usuario].[Perfil] ([IdPerfil], [Perfil]) VALUES (2, N'Recepcionista')
INSERT [Usuario].[Perfil] ([IdPerfil], [Perfil]) VALUES (3, N'Especialista')
SET IDENTITY_INSERT [Usuario].[Perfil] OFF
GO
SET IDENTITY_INSERT [Usuario].[Usuario] ON 

INSERT [Usuario].[Usuario] ([IdUsuario], [Apellido], [Nombre], [Dni], [Sexo], [FechaNacimiento], [Mail], [Telefono], [Usuario], [Password], [IdPerfil], [Estado]) VALUES (1, N'Gomez', N'Ana', 30123456, N'F', CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'ana@email.com', N'1122334455', N'agomez', N'Gomez1234', 1, 1)
INSERT [Usuario].[Usuario] ([IdUsuario], [Apellido], [Nombre], [Dni], [Sexo], [FechaNacimiento], [Mail], [Telefono], [Usuario], [Password], [IdPerfil], [Estado]) VALUES (2, N'Rodriguez', N'Carlos', 40123456, N'M', CAST(N'1985-02-02T00:00:00.000' AS DateTime), N'carlos@email.com', N'9988776655', N'crodriguez', N'Rodriguez1234', 1, 1)
INSERT [Usuario].[Usuario] ([IdUsuario], [Apellido], [Nombre], [Dni], [Sexo], [FechaNacimiento], [Mail], [Telefono], [Usuario], [Password], [IdPerfil], [Estado]) VALUES (3, N'Lopez', N'Laura', 50123456, N'F', CAST(N'1988-03-03T00:00:00.000' AS DateTime), N'laura@email.com', N'5544332211', N'llopez', N'Lopez1234', 2, 1)
INSERT [Usuario].[Usuario] ([IdUsuario], [Apellido], [Nombre], [Dni], [Sexo], [FechaNacimiento], [Mail], [Telefono], [Usuario], [Password], [IdPerfil], [Estado]) VALUES (4, N'Perez', N'Juan', 60123456, N'M', CAST(N'1987-04-04T00:00:00.000' AS DateTime), N'juan@email.com', N'1122334455', N'jperez', N'Perez1234', 2, 1)
INSERT [Usuario].[Usuario] ([IdUsuario], [Apellido], [Nombre], [Dni], [Sexo], [FechaNacimiento], [Mail], [Telefono], [Usuario], [Password], [IdPerfil], [Estado]) VALUES (5, N'Fernandez', N'Maria', 70123456, N'F', CAST(N'1986-05-05T00:00:00.000' AS DateTime), N'maria@email.com', N'9988776655', N'mfernandez', N'Fernandez1234', 2, 1)
INSERT [Usuario].[Usuario] ([IdUsuario], [Apellido], [Nombre], [Dni], [Sexo], [FechaNacimiento], [Mail], [Telefono], [Usuario], [Password], [IdPerfil], [Estado]) VALUES (6, N'Gonzalez', N'Martin', 80123456, N'M', CAST(N'1985-06-06T00:00:00.000' AS DateTime), N'martin@email.com', N'5544332211', N'mgonzalez', N'Gonzalez1234', 3, 1)
INSERT [Usuario].[Usuario] ([IdUsuario], [Apellido], [Nombre], [Dni], [Sexo], [FechaNacimiento], [Mail], [Telefono], [Usuario], [Password], [IdPerfil], [Estado]) VALUES (7, N'Diaz', N'Luisa', 90123456, N'F', CAST(N'1984-07-07T00:00:00.000' AS DateTime), N'luisa@email.com', N'1122334455', N'ldiaz', N'Diaz1234', 3, 1)
INSERT [Usuario].[Usuario] ([IdUsuario], [Apellido], [Nombre], [Dni], [Sexo], [FechaNacimiento], [Mail], [Telefono], [Usuario], [Password], [IdPerfil], [Estado]) VALUES (8, N'Alvarez', N'Javier', 10012345, N'M', CAST(N'1983-08-08T00:00:00.000' AS DateTime), N'javier@email.com', N'9988776655', N'jalvarez', N'Alvarez1234', 3, 1)
INSERT [Usuario].[Usuario] ([IdUsuario], [Apellido], [Nombre], [Dni], [Sexo], [FechaNacimiento], [Mail], [Telefono], [Usuario], [Password], [IdPerfil], [Estado]) VALUES (9, N'Torres', N'Silvia', 11012345, N'F', CAST(N'1982-09-09T00:00:00.000' AS DateTime), N'silvia@email.com', N'5544332211', N'storres', N'Torres1234', 3, 1)
INSERT [Usuario].[Usuario] ([IdUsuario], [Apellido], [Nombre], [Dni], [Sexo], [FechaNacimiento], [Mail], [Telefono], [Usuario], [Password], [IdPerfil], [Estado]) VALUES (10, N'Rios', N'Eduardo', 12012345, N'M', CAST(N'1981-10-10T00:00:00.000' AS DateTime), N'eduardo@email.com', N'1122334455', N'erios', N'Rios1234', 3, 1)
INSERT [Usuario].[Usuario] ([IdUsuario], [Apellido], [Nombre], [Dni], [Sexo], [FechaNacimiento], [Mail], [Telefono], [Usuario], [Password], [IdPerfil], [Estado]) VALUES (11, N'Mendoza', N'Camila', 13012345, N'F', CAST(N'1980-11-11T00:00:00.000' AS DateTime), N'camila@email.com', N'9988776655', N'cmendoza', N'Mendoza1234', 3, 1)
INSERT [Usuario].[Usuario] ([IdUsuario], [Apellido], [Nombre], [Dni], [Sexo], [FechaNacimiento], [Mail], [Telefono], [Usuario], [Password], [IdPerfil], [Estado]) VALUES (12, N'Castro', N'Roberto', 14012345, N'M', CAST(N'1979-12-12T00:00:00.000' AS DateTime), N'roberto@email.com', N'5544332211', N'rcastro', N'Castro1234', 3, 1)
INSERT [Usuario].[Usuario] ([IdUsuario], [Apellido], [Nombre], [Dni], [Sexo], [FechaNacimiento], [Mail], [Telefono], [Usuario], [Password], [IdPerfil], [Estado]) VALUES (13, N'Romero', N'Alicia', 15012345, N'F', CAST(N'1978-01-01T00:00:00.000' AS DateTime), N'alicia@email.com', N'1122334455', N'aromero', N'Romero1234', 3, 1)
INSERT [Usuario].[Usuario] ([IdUsuario], [Apellido], [Nombre], [Dni], [Sexo], [FechaNacimiento], [Mail], [Telefono], [Usuario], [Password], [IdPerfil], [Estado]) VALUES (14, N'Ortega', N'Carlos', 16012345, N'M', CAST(N'1977-02-02T00:00:00.000' AS DateTime), N'carlos@email.com', N'9988776655', N'cortega', N'Ortega1234', 3, 1)
INSERT [Usuario].[Usuario] ([IdUsuario], [Apellido], [Nombre], [Dni], [Sexo], [FechaNacimiento], [Mail], [Telefono], [Usuario], [Password], [IdPerfil], [Estado]) VALUES (15, N'Suarez', N'Marcela', 17012345, N'F', CAST(N'1976-03-03T00:00:00.000' AS DateTime), N'marcela@email.com', N'5544332211', N'msuarez', N'Suarez1234', 3, 1)
SET IDENTITY_INSERT [Usuario].[Usuario] OFF
GO
ALTER TABLE [Especialidad].[EspecialistaEspecialidad]  WITH CHECK ADD  CONSTRAINT [FK_EspecialistaEspecialidad_Especialidad] FOREIGN KEY([IdEspecialidad])
REFERENCES [Especialidad].[Especialidad] ([IdEspecialidad])
GO
ALTER TABLE [Especialidad].[EspecialistaEspecialidad] CHECK CONSTRAINT [FK_EspecialistaEspecialidad_Especialidad]
GO
ALTER TABLE [Especialidad].[EspecialistaEspecialidad]  WITH CHECK ADD  CONSTRAINT [FK_EspecialistaEspecialidad_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [Usuario].[Usuario] ([IdUsuario])
GO
ALTER TABLE [Especialidad].[EspecialistaEspecialidad] CHECK CONSTRAINT [FK_EspecialistaEspecialidad_Usuario]
GO
ALTER TABLE [Especialidad].[Turno]  WITH CHECK ADD  CONSTRAINT [FK_Turno_Especialidad] FOREIGN KEY([IdEspecialidad])
REFERENCES [Especialidad].[Especialidad] ([IdEspecialidad])
GO
ALTER TABLE [Especialidad].[Turno] CHECK CONSTRAINT [FK_Turno_Especialidad]
GO
ALTER TABLE [Especialidad].[Turno]  WITH CHECK ADD  CONSTRAINT [FK_Turno_Especialista] FOREIGN KEY([IdEspecialista])
REFERENCES [Usuario].[Usuario] ([IdUsuario])
GO
ALTER TABLE [Especialidad].[Turno] CHECK CONSTRAINT [FK_Turno_Especialista]
GO
ALTER TABLE [Especialidad].[Turno]  WITH CHECK ADD  CONSTRAINT [FK_Turno_EstadoTurno] FOREIGN KEY([IdEstadoTurno])
REFERENCES [Especialidad].[EstadoTurno] ([IdEstadoTurno])
GO
ALTER TABLE [Especialidad].[Turno] CHECK CONSTRAINT [FK_Turno_EstadoTurno]
GO
ALTER TABLE [Especialidad].[Turno]  WITH CHECK ADD  CONSTRAINT [FK_Turno_Jornada] FOREIGN KEY([IdJornada])
REFERENCES [Usuario].[Jornada] ([IdJornada])
GO
ALTER TABLE [Especialidad].[Turno] CHECK CONSTRAINT [FK_Turno_Jornada]
GO
ALTER TABLE [Especialidad].[Turno]  WITH CHECK ADD  CONSTRAINT [FK_Turno_Paciente] FOREIGN KEY([IdPaciente])
REFERENCES [Usuario].[Paciente] ([IdPaciente])
GO
ALTER TABLE [Especialidad].[Turno] CHECK CONSTRAINT [FK_Turno_Paciente]
GO
ALTER TABLE [Usuario].[Jornada]  WITH CHECK ADD  CONSTRAINT [FK_Jornada_Especialidad] FOREIGN KEY([IdEspecialidad])
REFERENCES [Especialidad].[Especialidad] ([IdEspecialidad])
GO
ALTER TABLE [Usuario].[Jornada] CHECK CONSTRAINT [FK_Jornada_Especialidad]
GO
ALTER TABLE [Usuario].[Jornada]  WITH CHECK ADD  CONSTRAINT [FK_Jornada_Especialista] FOREIGN KEY([IdEspecialista])
REFERENCES [Usuario].[Usuario] ([IdUsuario])
GO
ALTER TABLE [Usuario].[Jornada] CHECK CONSTRAINT [FK_Jornada_Especialista]
GO
ALTER TABLE [Usuario].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Perfil] FOREIGN KEY([IdPerfil])
REFERENCES [Usuario].[Perfil] ([IdPerfil])
GO
ALTER TABLE [Usuario].[Usuario] CHECK CONSTRAINT [FK_Usuario_Perfil]
GO
/****** Object:  StoredProcedure [Especialidad].[sp_CanTurno]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Especialidad].[sp_CanTurno]
@IdTurno INT
AS
UPDATE Especialidad.Turno
SET [IdEstadoTurno] = 3
WHERE [IdTurno] = @IdTurno


UPDATE Especialidad.EstadoTurno
SET [NombreEstado] = 'Cancelado'
WHERE IdEstadoTurno = 3
GO
/****** Object:  StoredProcedure [Especialidad].[sp_DelEspecialidad]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Especialidad].[sp_DelEspecialidad]
    @IdEspecialidad INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        DELETE FROM [Especialidad].[Especialidad]
        WHERE [IdEspecialidad] = @IdEspecialidad;

        COMMIT;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK;
        END

        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [Especialidad].[sp_DelEstadoTurno]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Especialidad].[sp_DelEstadoTurno]
    @IdEstadoTurno INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        DELETE FROM [Especialidad].[EstadoTurno]
        WHERE [IdEstadoTurno] = @IdEstadoTurno;

        COMMIT;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK;
        END

        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [Especialidad].[sp_DelTurno]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Especialidad].[sp_DelTurno]
    @IdTurno INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        DELETE FROM [Especialidad].[Turno]
        WHERE [IdTurno] = @IdTurno;

        COMMIT;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK;
        END

        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [Especialidad].[sp_GetEspecialidades]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Especialidad].[sp_GetEspecialidades]
AS
BEGIN
    SET NOCOUNT ON;
	BEGIN TRY
		SELECT [IdEspecialidad], [Especialidad], [Estado]
		FROM [Especialidad].[Especialidad];
	END TRY
	BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [Especialidad].[sp_GetTurnos]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Especialidad].[sp_GetTurnos]
AS
BEGIN
    SET NOCOUNT ON;
	BEGIN TRY
		SELECT A.IdTurno, 
			A.FechaHoraTurno, 
			A.MotivoConsulta, 
			A.Diagnostico,
			B.IdPaciente AS IdPaciente,
			B.Dni AS DniPaciente, 
			B.Apellido AS ApellidoPaciente, 
			B.Nombre AS NombrePaciente ,
			B.Sexo AS SexoPaciente,
			B.FechaNacimiento AS FechaNacimientoPaciente,
			B.Mail As MailPaciente,
			B.Telefono AS TelefonoPaciente,
			B.Cobertura As CoberturaPaciente,
			B.NroCredencial As NroCredencialPaciente,
			C.IdUsuario AS IdEspecialista,
			C.Apellido AS ApellidoEspecialista, 
			C.Nombre AS NombreEspecialista,
			C.Dni AS DniEspecialista,
			C.Sexo AS SexoEspecialista,
			C.FechaNacimiento AS FechaNacimientoEspecialista,
			C.Mail AS MailEspecialista,
			C.Telefono AS TelefonoEspecialista,
			C.Usuario AS UsuarioEspecialista,
			C.Password AS PasswordEspecialista,
			C.IdPerfil AS IdPerfilEspecialista,
			C.Estado AS EstadoEspecialista,
			D.IdEspecialidad,
			D.Especialidad,
			D.Estado AS EstadoEspecialidad,
			E.IdEstadoTurno,
			E.NombreEstado 
		FROM Especialidad.Turno AS A 
		LEFT JOIN Usuario.Paciente AS B ON A.IdPaciente = B.IdPaciente 
		LEFT JOIN Usuario.Usuario AS C ON A.IdEspecialista = C.IdUsuario 
		LEFT JOIN Especialidad.Especialidad AS D ON A.IdEspecialidad = D.IdEspecialidad 
		LEFT JOIN Especialidad.EstadoTurno AS E ON A.IdEstadoTurno = E.IdEstadoTurno
	END TRY
	BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [Especialidad].[sp_GetTurnosByEspecialista]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Especialidad].[sp_GetTurnosByEspecialista]
    @IdEspecialista INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        SELECT A.IdTurno, 
            A.FechaHoraTurno, 
            A.MotivoConsulta, 
            A.Diagnostico,
            B.IdPaciente AS IdPaciente,
            B.Dni AS DniPaciente, 
            B.Apellido AS ApellidoPaciente, 
            B.Nombre AS NombrePaciente ,
            B.Sexo AS SexoPaciente,
            B.FechaNacimiento AS FechaNacimientoPaciente,
            B.Mail As MailPaciente,
            B.Telefono AS TelefonoPaciente,
            B.Cobertura As CoberturaPaciente,
            B.NroCredencial As NroCredencialPaciente,
            C.IdUsuario AS IdEspecialista,
            C.Apellido AS ApellidoEspecialista, 
            C.Nombre AS NombreEspecialista,
            C.Dni AS DniEspecialista,
            C.Sexo AS SexoEspecialista,
            C.FechaNacimiento AS FechaNacimientoEspecialista,
            C.Mail AS MailEspecialista,
            C.Telefono AS TelefonoEspecialista,
			C.Usuario AS UsuarioEspecialista,
            C.Password AS PasswordEspecialista,
            C.IdPerfil AS IdPerfilEspecialista,
            C.Estado AS EstadoEspecialista,
            D.IdEspecialidad,
            D.Especialidad,
            D.Estado AS EstadoEspecialidad,
            E.IdEstadoTurno,
            E.NombreEstado 
        FROM Especialidad.Turno AS A 
            LEFT JOIN Usuario.Paciente AS B ON A.IdPaciente = B.IdPaciente 
            LEFT JOIN Usuario.Usuario AS C ON A.IdEspecialista = C.IdUsuario 
            LEFT JOIN Especialidad.Especialidad AS D ON A.IdEspecialidad = D.IdEspecialidad 
            LEFT JOIN Especialidad.EstadoTurno AS E ON A.IdEstadoTurno = E.IdEstadoTurno
        WHERE C.IdUsuario = @IdEspecialista;
    END TRY
    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [Especialidad].[sp_InsEspecialidad]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Especialidad].[sp_InsEspecialidad]
    @NombreEspecialidad NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        INSERT INTO [Especialidad].[Especialidad] ([Especialidad], [Estado])
        VALUES (@NombreEspecialidad, 1);

        COMMIT;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK;
        END

        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [Especialidad].[sp_InsEstadoTurno]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Especialidad].[sp_InsEstadoTurno]
    @NombreEstado NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        INSERT INTO [Especialidad].[EstadoTurno] ([NombreEstado])
        VALUES (@NombreEstado);

        COMMIT;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK;
        END

        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [Especialidad].[sp_InsTurno]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Especialidad].[sp_InsTurno]
    @IdPaciente INT,
    @IdEspecialista INT,
    @IdEspecialidad INT,
    @IdJornada INT,
    @FechaHoraTurno DATETIME,
    @MotivoConsulta NVARCHAR(50),
    @Diagnostico TEXT,
    @IdEstadoTurno INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        INSERT INTO [Especialidad].[Turno] (
            [IdPaciente],
            [IdEspecialista],
            [IdEspecialidad],
            [IdJornada],
            [FechaHoraTurno],
            [MotivoConsulta],
            [Diagnostico],
            [IdEstadoTurno]
        )
        VALUES (
            @IdPaciente,
            @IdEspecialista,
            @IdEspecialidad,
            @IdJornada,
            @FechaHoraTurno,
            @MotivoConsulta,
            @Diagnostico,
            @IdEstadoTurno
        );

        COMMIT;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK;
        END

        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [Especialidad].[sp_UpdEspecialidad]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Especialidad].[sp_UpdEspecialidad]
    @IdEspecialidad INT,
    @NuevoNombreEspecialidad NVARCHAR(50),
    @NuevoEstado BIT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE [Especialidad].[Especialidad]
        SET [Especialidad] = @NuevoNombreEspecialidad,
            [Estado] = @NuevoEstado
        WHERE [IdEspecialidad] = @IdEspecialidad;

        COMMIT;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK;
        END

        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [Especialidad].[sp_UpdEstadoEspecialidad]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Especialidad].[sp_UpdEstadoEspecialidad]
    @IdEspecialidad INT,
    @NuevoEstado BIT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE [Especialidad].[Especialidad]
        SET [Estado] = @NuevoEstado
        WHERE [IdEspecialidad] = @IdEspecialidad;

        COMMIT;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK;
        END

        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [Especialidad].[sp_UpdEstadoTurno]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Especialidad].[sp_UpdEstadoTurno]
    @IdEstadoTurno INT,
    @NuevoNombreEstado NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE [Especialidad].[EstadoTurno]
        SET [NombreEstado] = @NuevoNombreEstado
        WHERE [IdEstadoTurno] = @IdEstadoTurno;

        COMMIT;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK;
        END

        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [Especialidad].[sp_UpdTurno]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Especialidad].[sp_UpdTurno]
    @IdTurno INT,
    @NuevoIdPaciente INT,
    @NuevoIdEspecialista INT,
    @NuevoIdEspecialidad INT,
    @NuevoIdJornada INT,
    @NuevaFechaHoraTurno DATETIME,
    @NuevoMotivoConsulta NVARCHAR(50),
    @NuevoDiagnostico TEXT,
    @NuevoIdEstadoTurno INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE [Especialidad].[Turno]
        SET
            [IdPaciente] = @NuevoIdPaciente,
            [IdEspecialista] = @NuevoIdEspecialista,
            [IdEspecialidad] = @NuevoIdEspecialidad,
            [IdJornada] = @NuevoIdJornada,
            [FechaHoraTurno] = @NuevaFechaHoraTurno,
            [MotivoConsulta] = @NuevoMotivoConsulta,
            [Diagnostico] = @NuevoDiagnostico,
            [IdEstadoTurno] = @NuevoIdEstadoTurno
        WHERE [IdTurno] = @IdTurno;

        COMMIT;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK;
        END

        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [Usuario].[sp_DelJornada]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Usuario].[sp_DelJornada]
    @IdJornada INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        DELETE FROM [Usuario].[Jornada]
        WHERE [IdJornada] = @IdJornada;

        COMMIT;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK;
        END

        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [Usuario].[sp_DelPaciente]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Usuario].[sp_DelPaciente]
    @IdPaciente INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        DELETE FROM [Usuario].[Paciente]
        WHERE [IdPaciente] = @IdPaciente;

        COMMIT;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK;
        END

        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [Usuario].[sp_DelUsuario]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Usuario].[sp_DelUsuario]
    @IdUsuario INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        DELETE FROM [Usuario].[Usuario]
        WHERE [IdUsuario] = @IdUsuario;

        COMMIT;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK;
        END

        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [Usuario].[sp_GetEspecialistas]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Usuario].[sp_GetEspecialistas]
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        SELECT u.[IdUsuario], u.[Apellido], u.[Nombre], u.[Dni], u.[Sexo], u.[FechaNacimiento], u.[Mail], u.[Telefono], u.[Usuario], u.[Password], u.[IdPerfil], u.[Estado]
        FROM [Usuario].[Usuario] u
        WHERE u.[IdPerfil] = 3; -- Perfil 3 corresponde a Especialista
    END TRY
    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [Usuario].[sp_GetPacientes]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Usuario].[sp_GetPacientes]
AS
BEGIN
    SET NOCOUNT ON;
	BEGIN TRY
		SELECT [IdPaciente], [Apellido], [Nombre], [Dni], [Sexo], [FechaNacimiento], [Mail], [Telefono], [Cobertura], [NroCredencial]
		FROM [Usuario].[Paciente];
	END TRY
	BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [Usuario].[sp_GetUsuarioByUsuarioPassword]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Usuario].[sp_GetUsuarioByUsuarioPassword]
    @Usuario NVARCHAR(50),
    @Password NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM [Usuario].[Usuario]
    WHERE [Usuario] = @Usuario AND [Password] = @Password;
END;
GO
/****** Object:  StoredProcedure [Usuario].[sp_GetUsuarios]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Usuario].[sp_GetUsuarios]
AS
BEGIN
    SET NOCOUNT ON;
	BEGIN TRY
		SELECT [IdUsuario], [Apellido], [Nombre], [Dni], [Sexo], [FechaNacimiento], [Mail], [Telefono], [Usuario], [Password], [IdPerfil], [Estado]
		FROM [Usuario].[Usuario]
		WHERE [IdPerfil] IN (1, 2)
	END TRY
	BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [Usuario].[sp_InsJornada]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Usuario].[sp_InsJornada]
    @IdEspecialidad INT,
    @IdEspecialista INT,
    @DiaSemana NVARCHAR(10),
    @HoraInicio TIME,
    @HoraFin TIME
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        -- Verificar si ya existe un registro con los mismos parámetros
        IF EXISTS (
            SELECT 1
            FROM [Usuario].[Jornada]
            WHERE [IdEspecialidad] = @IdEspecialidad
              AND [IdEspecialista] = @IdEspecialista
              AND [DiaSemana] = @DiaSemana
        )
        BEGIN
            -- Si existe, realizar una actualización
            UPDATE [Usuario].[Jornada]
            SET [HoraInicio] = @HoraInicio,
                [HoraFin] = @HoraFin
            WHERE [IdEspecialidad] = @IdEspecialidad
              AND [IdEspecialista] = @IdEspecialista
              AND [DiaSemana] = @DiaSemana;
        END
        ELSE
        BEGIN
            -- Si no existe, realizar una inserción
            INSERT INTO [Usuario].[Jornada] ([IdEspecialidad], [IdEspecialista], [DiaSemana], [HoraInicio], [HoraFin])
            VALUES (@IdEspecialidad, @IdEspecialista, @DiaSemana, @HoraInicio, @HoraFin);
        END

        COMMIT;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK;
        END

        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [Usuario].[sp_InsPaciente]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Usuario].[sp_InsPaciente]
    @NuevoApellido NVARCHAR(50),
    @NuevoNombre NVARCHAR(50),
    @NuevoDni INT,
    @NuevoSexo CHAR(1),
    @NuevaFechaNacimiento DATETIME,
    @NuevoMail NVARCHAR(50),
    @NuevoTelefono NVARCHAR(50),
    @NuevaCobertura NVARCHAR(50),
    @NuevoNroCredencial INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        INSERT INTO [Usuario].[Paciente] ([Apellido], [Nombre], [Dni], [Sexo], [FechaNacimiento], [Mail], [Telefono], [Cobertura], [NroCredencial])
        VALUES (@NuevoApellido, @NuevoNombre, @NuevoDni, @NuevoSexo, @NuevaFechaNacimiento, @NuevoMail, @NuevoTelefono, @NuevaCobertura, @NuevoNroCredencial);

        COMMIT;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK;
        END

        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [Usuario].[sp_InsUsuario]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Usuario].[sp_InsUsuario]
    @Apellido NVARCHAR(50),
    @Nombre NVARCHAR(50),
    @Dni INT,
    @Sexo CHAR(1),
    @FechaNacimiento DATETIME,
    @Mail NVARCHAR(50),
    @Telefono NVARCHAR(50),
    @NombreUsuario NVARCHAR(50),
    @Password NVARCHAR(50),
    @IdPerfil INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        INSERT INTO [Usuario].[Usuario] ([Apellido], [Nombre], [Dni], [Sexo], [FechaNacimiento], [Mail], [Telefono], [Usuario], [Password], [IdPerfil], [Estado])
        VALUES (@Apellido, @Nombre, @Dni, @Sexo, @FechaNacimiento, @Mail, @Telefono, @NombreUsuario, @Password, @IdPerfil, 1);

        COMMIT;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK;
        END

        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [Usuario].[sp_UpdEstadoUsuario]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Usuario].[sp_UpdEstadoUsuario]
    @IdUsuario INT,
    @NuevoEstado BIT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE [Usuario].[Usuario]
        SET [Estado] = @NuevoEstado
        WHERE [IdUsuario] = @IdUsuario;

        COMMIT;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK;
        END

        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [Usuario].[sp_UpdJornada]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Usuario].[sp_UpdJornada]
    @IdJornada INT,
    @IdEspecialidad INT,
    @IdEspecialista INT,
    @NuevoDiaSemana NVARCHAR(10),
    @NuevaHoraInicio TIME,
    @NuevaHoraFin TIME
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE [Usuario].[Jornada]
        SET [IdEspecialidad] = @IdEspecialidad,
            [IdEspecialista] = @IdEspecialista,
            [DiaSemana] = @NuevoDiaSemana,
            [HoraInicio] = @NuevaHoraInicio,
            [HoraFin] = @NuevaHoraFin
        WHERE [IdJornada] = @IdJornada;

        COMMIT;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK;
        END

        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [Usuario].[sp_UpdPaciente]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Usuario].[sp_UpdPaciente]
    @IdPaciente INT,
    @NuevoApellido NVARCHAR(50),
    @NuevoNombre NVARCHAR(50),
    @NuevoDni INT,
    @NuevoSexo CHAR(1),
    @NuevaFechaNacimiento DATETIME,
    @NuevoMail NVARCHAR(50),
    @NuevoTelefono NVARCHAR(50),
    @NuevaCobertura NVARCHAR(50),
    @NuevoNroCredencial INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE [Usuario].[Paciente]
        SET [Apellido] = @NuevoApellido,
            [Nombre] = @NuevoNombre,
            [Dni] = @NuevoDni,
            [Sexo] = @NuevoSexo,
            [FechaNacimiento] = @NuevaFechaNacimiento,
            [Mail] = @NuevoMail,
            [Telefono] = @NuevoTelefono,
            [Cobertura] = @NuevaCobertura,
            [NroCredencial] = @NuevoNroCredencial
        WHERE [IdPaciente] = @IdPaciente;

        COMMIT;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK;
        END

        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [Usuario].[sp_UpdUsuario]    Script Date: 29/11/2023 09:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Usuario].[sp_UpdUsuario]
    @IdUsuario INT,
    @NuevoApellido NVARCHAR(50),
    @NuevoNombre NVARCHAR(50),
    @NuevoDni INT,
    @NuevoSexo CHAR(1),
    @NuevaFechaNacimiento DATETIME,
    @NuevoMail NVARCHAR(50),
    @NuevoTelefono NVARCHAR(50),
    @NuevoNombreUsuario NVARCHAR(50),
    @NuevoPassword NVARCHAR(50),
    @NuevoIdPerfil INT,
    @NuevoEstado BIT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE [Usuario].[Usuario]
        SET [Apellido] = @NuevoApellido,
            [Nombre] = @NuevoNombre,
            [Dni] = @NuevoDni,
            [Sexo] = @NuevoSexo,
            [FechaNacimiento] = @NuevaFechaNacimiento,
            [Mail] = @NuevoMail,
            [Telefono] = @NuevoTelefono,
            [Usuario] = @NuevoNombreUsuario,
            [Password] = @NuevoPassword,
            [IdPerfil] = @NuevoIdPerfil,
            [Estado] = @NuevoEstado
        WHERE [IdUsuario] = @IdUsuario;

        COMMIT;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK;
        END

        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;
GO
