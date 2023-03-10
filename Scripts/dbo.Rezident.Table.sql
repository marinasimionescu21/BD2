USE [bd2]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rezident](
	[CNP] [numeric](13, 0) NOT NULL,
	[Nume] [nchar](30) NOT NULL,
	[Prenume] [nchar](30) NOT NULL,
	[id_camera] [int] NOT NULL,
	[Data_nasterii] [datetime] NOT NULL,
	[Varsta_admitere] [int] NOT NULL,
	[Ultima_alerta] [datetime] NULL,
	[id_plan] [int] NULL,
 CONSTRAINT [PK_Rezident] PRIMARY KEY CLUSTERED 
(
	[CNP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Rezident] ([CNP], [Nume], [Prenume], [id_camera], [Data_nasterii], [Varsta_admitere], [Ultima_alerta], [id_plan]) VALUES (CAST(1390215273944 AS Numeric(13, 0)), N'Ilinoiu                       ', N'Mihai                         ', 2, CAST(N'1939-02-15T00:00:00.000' AS DateTime), 80, NULL, NULL)
INSERT [dbo].[Rezident] ([CNP], [Nume], [Prenume], [id_camera], [Data_nasterii], [Varsta_admitere], [Ultima_alerta], [id_plan]) VALUES (CAST(1440907267431 AS Numeric(13, 0)), N'Nistor                        ', N'George                        ', 2, CAST(N'1944-09-07T00:00:00.000' AS DateTime), 66, NULL, NULL)
INSERT [dbo].[Rezident] ([CNP], [Nume], [Prenume], [id_camera], [Data_nasterii], [Varsta_admitere], [Ultima_alerta], [id_plan]) VALUES (CAST(1460128283131 AS Numeric(13, 0)), N'Gruescu                       ', N'Mihai                         ', 6, CAST(N'1946-01-28T00:00:00.000' AS DateTime), 80, NULL, NULL)
INSERT [dbo].[Rezident] ([CNP], [Nume], [Prenume], [id_camera], [Data_nasterii], [Varsta_admitere], [Ultima_alerta], [id_plan]) VALUES (CAST(1460506382113 AS Numeric(13, 0)), N'Vatafu                        ', N'Dumitru                       ', 6, CAST(N'1946-05-06T00:00:00.000' AS DateTime), 73, NULL, NULL)
INSERT [dbo].[Rezident] ([CNP], [Nume], [Prenume], [id_camera], [Data_nasterii], [Varsta_admitere], [Ultima_alerta], [id_plan]) VALUES (CAST(1490412932991 AS Numeric(13, 0)), N'Ghimis                        ', N'Ion                           ', 6, CAST(N'1949-04-12T00:00:00.000' AS DateTime), 77, NULL, NULL)
INSERT [dbo].[Rezident] ([CNP], [Nume], [Prenume], [id_camera], [Data_nasterii], [Varsta_admitere], [Ultima_alerta], [id_plan]) VALUES (CAST(1581112362749 AS Numeric(13, 0)), N'Mihai                         ', N'Ion                           ', 6, CAST(N'1958-11-12T00:00:00.000' AS DateTime), 67, NULL, NULL)
INSERT [dbo].[Rezident] ([CNP], [Nume], [Prenume], [id_camera], [Data_nasterii], [Varsta_admitere], [Ultima_alerta], [id_plan]) VALUES (CAST(2351014652396 AS Numeric(13, 0)), N'Popescu                       ', N'Maria                         ', 3, CAST(N'1935-10-14T00:00:00.000' AS DateTime), 73, NULL, NULL)
INSERT [dbo].[Rezident] ([CNP], [Nume], [Prenume], [id_camera], [Data_nasterii], [Varsta_admitere], [Ultima_alerta], [id_plan]) VALUES (CAST(2390301297453 AS Numeric(13, 0)), N'Ionescu                       ', N'Eugenia                       ', 1, CAST(N'1939-03-01T00:00:00.000' AS DateTime), 80, NULL, NULL)
INSERT [dbo].[Rezident] ([CNP], [Nume], [Prenume], [id_camera], [Data_nasterii], [Varsta_admitere], [Ultima_alerta], [id_plan]) VALUES (CAST(2390404253916 AS Numeric(13, 0)), N'Stoia                         ', N'Maria                         ', 5, CAST(N'1939-04-04T00:00:00.000' AS DateTime), 67, NULL, NULL)
INSERT [dbo].[Rezident] ([CNP], [Nume], [Prenume], [id_camera], [Data_nasterii], [Varsta_admitere], [Ultima_alerta], [id_plan]) VALUES (CAST(2400512286410 AS Numeric(13, 0)), N'Rotaru                        ', N'Ioana                         ', 5, CAST(N'1940-05-12T00:00:00.000' AS DateTime), 80, NULL, NULL)
INSERT [dbo].[Rezident] ([CNP], [Nume], [Prenume], [id_camera], [Data_nasterii], [Varsta_admitere], [Ultima_alerta], [id_plan]) VALUES (CAST(2420914268543 AS Numeric(13, 0)), N'Anghel                        ', N'Ionela                        ', 1, CAST(N'1942-09-14T00:00:00.000' AS DateTime), 71, NULL, NULL)
INSERT [dbo].[Rezident] ([CNP], [Nume], [Prenume], [id_camera], [Data_nasterii], [Varsta_admitere], [Ultima_alerta], [id_plan]) VALUES (CAST(2430428172381 AS Numeric(13, 0)), N'Gheorghe                      ', N'Ana                           ', 5, CAST(N'1943-04-28T00:00:00.000' AS DateTime), 77, NULL, NULL)
INSERT [dbo].[Rezident] ([CNP], [Nume], [Prenume], [id_camera], [Data_nasterii], [Varsta_admitere], [Ultima_alerta], [id_plan]) VALUES (CAST(2461212297410 AS Numeric(13, 0)), N'Dumitru                       ', N'Maria                         ', 7, CAST(N'1946-12-12T00:00:00.000' AS DateTime), 67, NULL, NULL)
INSERT [dbo].[Rezident] ([CNP], [Nume], [Prenume], [id_camera], [Data_nasterii], [Varsta_admitere], [Ultima_alerta], [id_plan]) VALUES (CAST(2491227711047 AS Numeric(13, 0)), N'Popescu                       ', N'Ana                           ', 7, CAST(N'1949-12-27T00:00:00.000' AS DateTime), 66, NULL, NULL)
GO
ALTER TABLE [dbo].[Rezident]  WITH CHECK ADD  CONSTRAINT [FK_Rezident_Camera] FOREIGN KEY([id_camera])
REFERENCES [dbo].[Camera] ([ID])
GO
ALTER TABLE [dbo].[Rezident] CHECK CONSTRAINT [FK_Rezident_Camera]
GO
ALTER TABLE [dbo].[Rezident]  WITH CHECK ADD  CONSTRAINT [FK_Rezident_Plan_ingrijire] FOREIGN KEY([id_plan])
REFERENCES [dbo].[Plan_ingrijire] ([id_plan])
GO
ALTER TABLE [dbo].[Rezident] CHECK CONSTRAINT [FK_Rezident_Plan_ingrijire]
GO
ALTER TABLE [dbo].[Rezident]  WITH CHECK ADD  CONSTRAINT [CK_Rezident] CHECK  (([Varsta_admitere]>(65)))
GO
ALTER TABLE [dbo].[Rezident] CHECK CONSTRAINT [CK_Rezident]
GO
