USE [bd2]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Apartinator](
	[ID] [int] NOT NULL,
	[Nume] [nchar](30) NOT NULL,
	[Prenume] [nchar](30) NOT NULL,
	[id_rezident] [numeric](13, 0) NOT NULL,
	[nr_telefon] [nvarchar](50) NULL,
 CONSTRAINT [PK_Apartinator] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Apartinator] ([ID], [Nume], [Prenume], [id_rezident], [nr_telefon]) VALUES (1, N'Ilinoiu                       ', N'Liviu                         ', CAST(1390215273944 AS Numeric(13, 0)), N'+40742127883')
INSERT [dbo].[Apartinator] ([ID], [Nume], [Prenume], [id_rezident], [nr_telefon]) VALUES (21, N'Florea                        ', N'Ion                           ', CAST(1460128283131 AS Numeric(13, 0)), N'+40721183521')
INSERT [dbo].[Apartinator] ([ID], [Nume], [Prenume], [id_rezident], [nr_telefon]) VALUES (22, N'Stoia                         ', N'Ana                           ', CAST(2390404253916 AS Numeric(13, 0)), N'+40762127931')
INSERT [dbo].[Apartinator] ([ID], [Nume], [Prenume], [id_rezident], [nr_telefon]) VALUES (33, N'Ghimis                        ', N'Irina                         ', CAST(1490412932991 AS Numeric(13, 0)), N'+40742878790')
INSERT [dbo].[Apartinator] ([ID], [Nume], [Prenume], [id_rezident], [nr_telefon]) VALUES (63, N'Rotaru                        ', N'Cristian                      ', CAST(2400512286410 AS Numeric(13, 0)), N'+40752193025')
INSERT [dbo].[Apartinator] ([ID], [Nume], [Prenume], [id_rezident], [nr_telefon]) VALUES (77, N'Vatafu                        ', N'Ioana                         ', CAST(1460506382113 AS Numeric(13, 0)), N'+40790462119')
INSERT [dbo].[Apartinator] ([ID], [Nume], [Prenume], [id_rezident], [nr_telefon]) VALUES (78, N'Constantin                    ', N'Maria                         ', CAST(1440907267431 AS Numeric(13, 0)), N'+40763123851')
INSERT [dbo].[Apartinator] ([ID], [Nume], [Prenume], [id_rezident], [nr_telefon]) VALUES (79, N'Ionescu                       ', N'Maria                         ', CAST(2420914268543 AS Numeric(13, 0)), N'+40744126153')
INSERT [dbo].[Apartinator] ([ID], [Nume], [Prenume], [id_rezident], [nr_telefon]) VALUES (122, N'Ionescu                       ', N'Mihai                         ', CAST(2390301297453 AS Numeric(13, 0)), N'+40782125643')
INSERT [dbo].[Apartinator] ([ID], [Nume], [Prenume], [id_rezident], [nr_telefon]) VALUES (155, N'Gheorghe                      ', N'Simona                        ', CAST(2430428172381 AS Numeric(13, 0)), N'+40776234097')
INSERT [dbo].[Apartinator] ([ID], [Nume], [Prenume], [id_rezident], [nr_telefon]) VALUES (173, N'Dumitru                       ', N'Irina                         ', CAST(2461212297410 AS Numeric(13, 0)), N'+40756128896')
INSERT [dbo].[Apartinator] ([ID], [Nume], [Prenume], [id_rezident], [nr_telefon]) VALUES (231, N'Mihai                         ', N'Cristina                      ', CAST(1581112362749 AS Numeric(13, 0)), N'+40761234509')
INSERT [dbo].[Apartinator] ([ID], [Nume], [Prenume], [id_rezident], [nr_telefon]) VALUES (753, N'Popescu                       ', N'Ana-Maria                     ', CAST(2491227711047 AS Numeric(13, 0)), N'+40770218943')
INSERT [dbo].[Apartinator] ([ID], [Nume], [Prenume], [id_rezident], [nr_telefon]) VALUES (873, N'Dumitrescu                    ', N'Mihai                         ', CAST(2351014652396 AS Numeric(13, 0)), N'+40753785567')
GO
ALTER TABLE [dbo].[Apartinator]  WITH CHECK ADD  CONSTRAINT [FK_Apartinator_Rezident] FOREIGN KEY([id_rezident])
REFERENCES [dbo].[Rezident] ([CNP])
GO
ALTER TABLE [dbo].[Apartinator] CHECK CONSTRAINT [FK_Apartinator_Rezident]
GO
