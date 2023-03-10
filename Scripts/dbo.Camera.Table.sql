USE [bd2]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Camera](
	[ID] [int] NOT NULL,
	[Nr_persoane_camera] [int] NOT NULL,
	[Nr_loc_libere] [int] NOT NULL,
	[Etaj] [int] NOT NULL,
 CONSTRAINT [PK_Camera] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Camera] ([ID], [Nr_persoane_camera], [Nr_loc_libere], [Etaj]) VALUES (1, 2, 3, 1)
INSERT [dbo].[Camera] ([ID], [Nr_persoane_camera], [Nr_loc_libere], [Etaj]) VALUES (2, 2, 3, 1)
INSERT [dbo].[Camera] ([ID], [Nr_persoane_camera], [Nr_loc_libere], [Etaj]) VALUES (3, 1, 4, 1)
INSERT [dbo].[Camera] ([ID], [Nr_persoane_camera], [Nr_loc_libere], [Etaj]) VALUES (4, 0, 5, 2)
INSERT [dbo].[Camera] ([ID], [Nr_persoane_camera], [Nr_loc_libere], [Etaj]) VALUES (5, 3, 2, 2)
INSERT [dbo].[Camera] ([ID], [Nr_persoane_camera], [Nr_loc_libere], [Etaj]) VALUES (6, 5, 0, 2)
INSERT [dbo].[Camera] ([ID], [Nr_persoane_camera], [Nr_loc_libere], [Etaj]) VALUES (7, 2, 3, 2)
GO
ALTER TABLE [dbo].[Camera]  WITH CHECK ADD  CONSTRAINT [CK_Camera] CHECK  (([Nr_persoane_camera]<=(5)))
GO
ALTER TABLE [dbo].[Camera] CHECK CONSTRAINT [CK_Camera]
GO
