USE [ConsultorioMedico]
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
SET IDENTITY_INSERT [Especialidad].[Turno] ON 

INSERT [Especialidad].[Turno] ([IdTurno], [IdPaciente], [IdEspecialista], [IdJornada], [IdEspecialidad], [FechaHoraTurno], [MotivoConsulta], [Diagnostico], [IdEstadoTurno]) VALUES (2, 1, 2, 1, 1, CAST(N'2023-11-24T10:00:00.000' AS DateTime), N'Consulta rutinaria', N'Sin diagnóstico', 3)
INSERT [Especialidad].[Turno] ([IdTurno], [IdPaciente], [IdEspecialista], [IdJornada], [IdEspecialidad], [FechaHoraTurno], [MotivoConsulta], [Diagnostico], [IdEstadoTurno]) VALUES (3, 3, 4, 2, 2, CAST(N'2023-11-25T14:30:00.000' AS DateTime), N'Dolor de cabeza', N'Necesita más evaluación', 2)
INSERT [Especialidad].[Turno] ([IdTurno], [IdPaciente], [IdEspecialista], [IdJornada], [IdEspecialidad], [FechaHoraTurno], [MotivoConsulta], [Diagnostico], [IdEstadoTurno]) VALUES (4, 2, 1, 3, 1, CAST(N'2023-11-26T11:15:00.000' AS DateTime), N'Dolor de garganta', N'Resfriado común', 3)
INSERT [Especialidad].[Turno] ([IdTurno], [IdPaciente], [IdEspecialista], [IdJornada], [IdEspecialidad], [FechaHoraTurno], [MotivoConsulta], [Diagnostico], [IdEstadoTurno]) VALUES (5, 4, 3, 1, 2, CAST(N'2023-11-27T09:45:00.000' AS DateTime), N'Problemas digestivos', N'Requiere análisis adicional', 2)
INSERT [Especialidad].[Turno] ([IdTurno], [IdPaciente], [IdEspecialista], [IdJornada], [IdEspecialidad], [FechaHoraTurno], [MotivoConsulta], [Diagnostico], [IdEstadoTurno]) VALUES (6, 5, 2, 2, 1, CAST(N'2023-11-28T16:00:00.000' AS DateTime), N'Control de presión arterial', N'Presión arterial normal', 1)
SET IDENTITY_INSERT [Especialidad].[Turno] OFF
GO
