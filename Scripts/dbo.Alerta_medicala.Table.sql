USE [bd2]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alerta_medicala](
	[id_alerta] [int] NOT NULL,
	[id_rezident] [numeric](13, 0) NOT NULL,
	[id_personal] [int] NOT NULL,
	[Detalii] [nchar](50) NOT NULL,
	[Data] [datetime] NOT NULL,
 CONSTRAINT [PK_Alerta_medicala] PRIMARY KEY CLUSTERED 
(
	[id_alerta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Alerta_medicala] ([id_alerta], [id_rezident], [id_personal], [Detalii], [Data]) VALUES (32, CAST(1390215273944 AS Numeric(13, 0)), 1, N'Alerta durere                                     ', CAST(N'2022-12-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Alerta_medicala] ([id_alerta], [id_rezident], [id_personal], [Detalii], [Data]) VALUES (342, CAST(2430428172381 AS Numeric(13, 0)), 2, N'Alerta privind cadere                             ', CAST(N'2022-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Alerta_medicala] ([id_alerta], [id_rezident], [id_personal], [Detalii], [Data]) VALUES (429, CAST(2420914268543 AS Numeric(13, 0)), 1, N'Alerta criza                                      ', CAST(N'2023-01-23T00:00:00.000' AS DateTime))
INSERT [dbo].[Alerta_medicala] ([id_alerta], [id_rezident], [id_personal], [Detalii], [Data]) VALUES (432, CAST(1490412932991 AS Numeric(13, 0)), 2, N'Alerta durere                                     ', CAST(N'2022-10-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Alerta_medicala] ([id_alerta], [id_rezident], [id_personal], [Detalii], [Data]) VALUES (435, CAST(1490412932991 AS Numeric(13, 0)), 2, N'Alerta durere                                     ', CAST(N'2023-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Alerta_medicala] ([id_alerta], [id_rezident], [id_personal], [Detalii], [Data]) VALUES (643, CAST(2430428172381 AS Numeric(13, 0)), 2, N'Alerta privind semnele vitale                     ', CAST(N'2022-10-31T00:00:00.000' AS DateTime))
INSERT [dbo].[Alerta_medicala] ([id_alerta], [id_rezident], [id_personal], [Detalii], [Data]) VALUES (100000, CAST(2430428172381 AS Numeric(13, 0)), 2, N'Test alerta                                       ', CAST(N'2022-10-31T00:00:00.000' AS DateTime))
GO
ALTER TABLE [dbo].[Alerta_medicala]  WITH CHECK ADD  CONSTRAINT [FK_Alerta_medicala_Angajati] FOREIGN KEY([id_personal])
REFERENCES [dbo].[Angajati] ([ID])
GO
ALTER TABLE [dbo].[Alerta_medicala] CHECK CONSTRAINT [FK_Alerta_medicala_Angajati]
GO
ALTER TABLE [dbo].[Alerta_medicala]  WITH CHECK ADD  CONSTRAINT [FK_Alerta_medicala_Rezident] FOREIGN KEY([id_rezident])
REFERENCES [dbo].[Rezident] ([CNP])
GO
ALTER TABLE [dbo].[Alerta_medicala] CHECK CONSTRAINT [FK_Alerta_medicala_Rezident]
GO
