USE [bd2]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Angajati](
	[ID] [int] NOT NULL,
	[Nume] [nchar](30) NOT NULL,
	[Prenume] [nchar](30) NOT NULL,
	[Functie] [nchar](30) NOT NULL,
	[email] [nchar](100) NOT NULL,
 CONSTRAINT [PK_Angajati] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Angajati] ([ID], [Nume], [Prenume], [Functie], [email]) VALUES (1, N'Dinu                          ', N'Maria                         ', N'Medic                         ', N'dinu.maria@gmail.com                                                                                ')
INSERT [dbo].[Angajati] ([ID], [Nume], [Prenume], [Functie], [email]) VALUES (2, N'Iancu                         ', N'Alexandru                     ', N'Medic                         ', N'iancu.alex@gmail.com                                                                                ')
INSERT [dbo].[Angajati] ([ID], [Nume], [Prenume], [Functie], [email]) VALUES (3, N'Nicu                          ', N'Florentina                    ', N'Infirmier                     ', N'nicu.florentina@gmail.com                                                                           ')
INSERT [dbo].[Angajati] ([ID], [Nume], [Prenume], [Functie], [email]) VALUES (4, N'Ionescu                       ', N'Ana                           ', N'Infirmier                     ', N'ana.ionescu@gmail.com                                                                               ')
INSERT [dbo].[Angajati] ([ID], [Nume], [Prenume], [Functie], [email]) VALUES (5, N'Olaru                         ', N'Maria                         ', N'Infirmier                     ', N'maria.olaru@gmail.com                                                                               ')
INSERT [dbo].[Angajati] ([ID], [Nume], [Prenume], [Functie], [email]) VALUES (6, N'Amza                          ', N'Teodora                       ', N'Infirmier                     ', N'amza.teo@gmail.com                                                                                  ')
INSERT [dbo].[Angajati] ([ID], [Nume], [Prenume], [Functie], [email]) VALUES (7, N'Vladu                         ', N'Roxana                        ', N'Infirmier                     ', N'vladu.roxana@gmail.com                                                                              ')
INSERT [dbo].[Angajati] ([ID], [Nume], [Prenume], [Functie], [email]) VALUES (8, N'Radu                          ', N'Constantin                    ', N'Infirmier                     ', N'radu.constantin@gmail.com                                                                           ')
INSERT [dbo].[Angajati] ([ID], [Nume], [Prenume], [Functie], [email]) VALUES (9, N'Matei                         ', N'Ileana                        ', N'Infirmier                     ', N'matei.ileana@gmail.com                                                                              ')
GO
