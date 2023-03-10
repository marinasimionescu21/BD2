USE [bd2]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vizite](
	[id_vizita] [int] NOT NULL,
	[id_rezident] [numeric](13, 0) NOT NULL,
	[Nume_vizitator] [nchar](30) NOT NULL,
	[Prenume_vizitator] [nchar](30) NOT NULL,
	[Data_vizita] [date] NOT NULL,
 CONSTRAINT [PK_Vizite] PRIMARY KEY CLUSTERED 
(
	[id_vizita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Vizite] ([id_vizita], [id_rezident], [Nume_vizitator], [Prenume_vizitator], [Data_vizita]) VALUES (34, CAST(2420914268543 AS Numeric(13, 0)), N'Ionescu                       ', N'Maria                         ', CAST(N'2022-11-02' AS Date))
INSERT [dbo].[Vizite] ([id_vizita], [id_rezident], [Nume_vizitator], [Prenume_vizitator], [Data_vizita]) VALUES (54, CAST(1490412932991 AS Numeric(13, 0)), N'Mihai                         ', N'Ilie                          ', CAST(N'2023-01-04' AS Date))
INSERT [dbo].[Vizite] ([id_vizita], [id_rezident], [Nume_vizitator], [Prenume_vizitator], [Data_vizita]) VALUES (123, CAST(1460128283131 AS Numeric(13, 0)), N'Florea                        ', N'Maria                         ', CAST(N'2022-10-21' AS Date))
INSERT [dbo].[Vizite] ([id_vizita], [id_rezident], [Nume_vizitator], [Prenume_vizitator], [Data_vizita]) VALUES (131, CAST(1460128283131 AS Numeric(13, 0)), N'Florea                        ', N'Ion                           ', CAST(N'2022-09-12' AS Date))
INSERT [dbo].[Vizite] ([id_vizita], [id_rezident], [Nume_vizitator], [Prenume_vizitator], [Data_vizita]) VALUES (132, CAST(1390215273944 AS Numeric(13, 0)), N'Ion                           ', N'Maria                         ', CAST(N'2022-10-23' AS Date))
INSERT [dbo].[Vizite] ([id_vizita], [id_rezident], [Nume_vizitator], [Prenume_vizitator], [Data_vizita]) VALUES (532, CAST(2420914268543 AS Numeric(13, 0)), N'Ionescu                       ', N'Cristian                      ', CAST(N'2022-11-27' AS Date))
INSERT [dbo].[Vizite] ([id_vizita], [id_rezident], [Nume_vizitator], [Prenume_vizitator], [Data_vizita]) VALUES (544, CAST(1581112362749 AS Numeric(13, 0)), N'Ionescu                       ', N'Ana                           ', CAST(N'2023-01-17' AS Date))
INSERT [dbo].[Vizite] ([id_vizita], [id_rezident], [Nume_vizitator], [Prenume_vizitator], [Data_vizita]) VALUES (583, CAST(2390404253916 AS Numeric(13, 0)), N'Ionescu                       ', N'Ana                           ', CAST(N'2023-01-02' AS Date))
INSERT [dbo].[Vizite] ([id_vizita], [id_rezident], [Nume_vizitator], [Prenume_vizitator], [Data_vizita]) VALUES (839, CAST(1490412932991 AS Numeric(13, 0)), N'Mihai                         ', N'Ilie                          ', CAST(N'2022-07-12' AS Date))
INSERT [dbo].[Vizite] ([id_vizita], [id_rezident], [Nume_vizitator], [Prenume_vizitator], [Data_vizita]) VALUES (3144, CAST(1390215273944 AS Numeric(13, 0)), N'Ionescu                       ', N'Cristina                      ', CAST(N'2022-12-02' AS Date))
INSERT [dbo].[Vizite] ([id_vizita], [id_rezident], [Nume_vizitator], [Prenume_vizitator], [Data_vizita]) VALUES (3217, CAST(1390215273944 AS Numeric(13, 0)), N'Ilinoiu                       ', N'Liviu                         ', CAST(N'2022-12-23' AS Date))
INSERT [dbo].[Vizite] ([id_vizita], [id_rezident], [Nume_vizitator], [Prenume_vizitator], [Data_vizita]) VALUES (4321, CAST(2491227711047 AS Numeric(13, 0)), N'Andreescu                     ', N'Marcel                        ', CAST(N'2022-11-10' AS Date))
INSERT [dbo].[Vizite] ([id_vizita], [id_rezident], [Nume_vizitator], [Prenume_vizitator], [Data_vizita]) VALUES (5314, CAST(2461212297410 AS Numeric(13, 0)), N'Dumitru                       ', N'Maria                         ', CAST(N'2022-12-23' AS Date))
INSERT [dbo].[Vizite] ([id_vizita], [id_rezident], [Nume_vizitator], [Prenume_vizitator], [Data_vizita]) VALUES (5652, CAST(2461212297410 AS Numeric(13, 0)), N'Dumitru                       ', N'Irina                         ', CAST(N'2022-12-09' AS Date))
INSERT [dbo].[Vizite] ([id_vizita], [id_rezident], [Nume_vizitator], [Prenume_vizitator], [Data_vizita]) VALUES (5832, CAST(1581112362749 AS Numeric(13, 0)), N'Simina                        ', N'Cristian                      ', CAST(N'2023-01-17' AS Date))
INSERT [dbo].[Vizite] ([id_vizita], [id_rezident], [Nume_vizitator], [Prenume_vizitator], [Data_vizita]) VALUES (7583, CAST(2461212297410 AS Numeric(13, 0)), N'Dumitru                       ', N'Maria                         ', CAST(N'2022-12-09' AS Date))
INSERT [dbo].[Vizite] ([id_vizita], [id_rezident], [Nume_vizitator], [Prenume_vizitator], [Data_vizita]) VALUES (7782, CAST(1581112362749 AS Numeric(13, 0)), N'Ionescu                       ', N'Andrei                        ', CAST(N'2022-12-09' AS Date))
INSERT [dbo].[Vizite] ([id_vizita], [id_rezident], [Nume_vizitator], [Prenume_vizitator], [Data_vizita]) VALUES (42425, CAST(2351014652396 AS Numeric(13, 0)), N'Dumitru                       ', N'Ana                           ', CAST(N'2022-10-27' AS Date))
GO
ALTER TABLE [dbo].[Vizite]  WITH CHECK ADD  CONSTRAINT [FK_Vizite_Rezident] FOREIGN KEY([id_rezident])
REFERENCES [dbo].[Rezident] ([CNP])
GO
ALTER TABLE [dbo].[Vizite] CHECK CONSTRAINT [FK_Vizite_Rezident]
GO
