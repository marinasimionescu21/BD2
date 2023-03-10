USE [bd2]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Email_angajati](
	[id_email] [int] NOT NULL,
	[id_angajat] [int] NOT NULL,
	[tip_email] [nchar](100) NOT NULL,
 CONSTRAINT [PK_Email_angajati] PRIMARY KEY CLUSTERED 
(
	[id_email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Email_angajati] ([id_email], [id_angajat], [tip_email]) VALUES (100001, 2, N'ALERTA MEDICALA NOUA: 2430428172381                                                                 ')
GO
ALTER TABLE [dbo].[Email_angajati]  WITH CHECK ADD  CONSTRAINT [FK_Email_angajati_Angajati] FOREIGN KEY([id_angajat])
REFERENCES [dbo].[Angajati] ([ID])
GO
ALTER TABLE [dbo].[Email_angajati] CHECK CONSTRAINT [FK_Email_angajati_Angajati]
GO
