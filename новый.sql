USE [MDS]
GO
/****** Object:  Table [dbo].[Child]    Script Date: 22.11.2022 13:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Child](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [varchar](200) NULL,
	[Adress] [varchar](50) NULL,
	[ID_Parent] [int] NULL,
	[ID_Group] [int] NULL,
	[Gender] [int] NULL,
 CONSTRAINT [PK_Child] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EdGrEvents]    Script Date: 22.11.2022 13:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EdGrEvents](
	[ID_Group] [int] NULL,
	[ID_Events] [int] NULL,
	[ID_Educators] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Educators]    Script Date: 22.11.2022 13:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Educators](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](100) NULL,
	[Phone] [char](11) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Educators] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Events]    Script Date: 22.11.2022 13:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Events](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Date] [date] NULL,
	[Organizator] [int] NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 22.11.2022 13:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Code] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Group]    Script Date: 22.11.2022 13:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Group](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Parents]    Script Date: 22.11.2022 13:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Parents](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [varchar](200) NULL,
	[Adress] [varchar](50) NULL,
	[Phone] [char](11) NULL,
	[Email] [varchar](100) NULL,
	[Place_of_work] [varchar](100) NULL,
	[Query_Child] [int] NULL,
 CONSTRAINT [PK_Parents] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 22.11.2022 13:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] NOT NULL,
	[Login] [varchar](10) NULL,
	[Password] [varchar](10) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Child] ON 

INSERT [dbo].[Child] ([ID], [FIO], [Adress], [ID_Parent], [ID_Group], [Gender]) VALUES (1, N'Логинова И.В', N'ул. Ленина, д. 7', 1, 1, 2)
INSERT [dbo].[Child] ([ID], [FIO], [Adress], [ID_Parent], [ID_Group], [Gender]) VALUES (2, N'Новикова О.А', N'ул. Пушкина, д.32', 2, 3, 2)
INSERT [dbo].[Child] ([ID], [FIO], [Adress], [ID_Parent], [ID_Group], [Gender]) VALUES (3, N'Александров Д.В', N'ул. Загрекова, д 12', 3, 2, 1)
INSERT [dbo].[Child] ([ID], [FIO], [Adress], [ID_Parent], [ID_Group], [Gender]) VALUES (4, N'Шутова К.Р', N'ул. Песочная, д122', 4, 5, 2)
INSERT [dbo].[Child] ([ID], [FIO], [Adress], [ID_Parent], [ID_Group], [Gender]) VALUES (5, N'Журавлев Н.В', N'ул. Гагарина, д. 66', 5, 4, 1)
INSERT [dbo].[Child] ([ID], [FIO], [Adress], [ID_Parent], [ID_Group], [Gender]) VALUES (6, N'Павлова Ю.Ф', N'ул. Лесная, д 11', 6, 4, 2)
INSERT [dbo].[Child] ([ID], [FIO], [Adress], [ID_Parent], [ID_Group], [Gender]) VALUES (7, N'Ермакова А.В', N'ул. Деманова, д.42', 7, 1, 2)
INSERT [dbo].[Child] ([ID], [FIO], [Adress], [ID_Parent], [ID_Group], [Gender]) VALUES (8, N'Молчанова В.Ю', N'ул. Пролетарская, д.46', 8, 3, 2)
INSERT [dbo].[Child] ([ID], [FIO], [Adress], [ID_Parent], [ID_Group], [Gender]) VALUES (9, N'Агапов К.В', N'ул. Юбилейная, д.111', 9, 2, 1)
INSERT [dbo].[Child] ([ID], [FIO], [Adress], [ID_Parent], [ID_Group], [Gender]) VALUES (10, N'Храмов Р.Д', N'ул. Западная, д.98', 10, 5, 1)
SET IDENTITY_INSERT [dbo].[Child] OFF
INSERT [dbo].[EdGrEvents] ([ID_Group], [ID_Events], [ID_Educators]) VALUES (1, 3, 5)
INSERT [dbo].[EdGrEvents] ([ID_Group], [ID_Events], [ID_Educators]) VALUES (5, 4, 1)
INSERT [dbo].[EdGrEvents] ([ID_Group], [ID_Events], [ID_Educators]) VALUES (2, 2, 3)
INSERT [dbo].[EdGrEvents] ([ID_Group], [ID_Events], [ID_Educators]) VALUES (4, 1, 2)
INSERT [dbo].[EdGrEvents] ([ID_Group], [ID_Events], [ID_Educators]) VALUES (3, 5, 4)
INSERT [dbo].[EdGrEvents] ([ID_Group], [ID_Events], [ID_Educators]) VALUES (1, 6, 1)
INSERT [dbo].[EdGrEvents] ([ID_Group], [ID_Events], [ID_Educators]) VALUES (4, 8, 2)
INSERT [dbo].[EdGrEvents] ([ID_Group], [ID_Events], [ID_Educators]) VALUES (5, 7, 5)
INSERT [dbo].[EdGrEvents] ([ID_Group], [ID_Events], [ID_Educators]) VALUES (1, 10, 4)
INSERT [dbo].[EdGrEvents] ([ID_Group], [ID_Events], [ID_Educators]) VALUES (3, 9, 3)
SET IDENTITY_INSERT [dbo].[Educators] ON 

INSERT [dbo].[Educators] ([ID], [FIO], [Phone], [Email]) VALUES (1, N'Макарова Лилия Владимировна', N'89523456782', N'uncle@gmail.com')
INSERT [dbo].[Educators] ([ID], [FIO], [Phone], [Email]) VALUES (2, N'Орлова Ольга Викторовна', N'89474737622', N'drezet@yahoo.com')
INSERT [dbo].[Educators] ([ID], [FIO], [Phone], [Email]) VALUES (3, N'Ильина Наталия Николаевна', N'89463637371', N'moxfulder@outlook.com')
INSERT [dbo].[Educators] ([ID], [FIO], [Phone], [Email]) VALUES (4, N'Зорина Ирина Викторовна', N'89464636264', N'agapow@gmail.com')
INSERT [dbo].[Educators] ([ID], [FIO], [Phone], [Email]) VALUES (5, N'Яшина Светлана Владимировна', N'89547438382', N'aukjan@yahoo.com')
SET IDENTITY_INSERT [dbo].[Educators] OFF
SET IDENTITY_INSERT [dbo].[Events] ON 

INSERT [dbo].[Events] ([ID], [Name], [Date], [Organizator]) VALUES (1, N'8 Марта', CAST(0xAD430B00 AS Date), 1)
INSERT [dbo].[Events] ([ID], [Name], [Date], [Organizator]) VALUES (2, N'23 февраля', CAST(0xA0430B00 AS Date), 5)
INSERT [dbo].[Events] ([ID], [Name], [Date], [Organizator]) VALUES (3, N'День матери', CAST(0xB7440B00 AS Date), 2)
INSERT [dbo].[Events] ([ID], [Name], [Date], [Organizator]) VALUES (4, N'День отца', CAST(0xA8440B00 AS Date), 4)
INSERT [dbo].[Events] ([ID], [Name], [Date], [Organizator]) VALUES (5, N'Рождество', CAST(0xDE440B00 AS Date), 3)
INSERT [dbo].[Events] ([ID], [Name], [Date], [Organizator]) VALUES (6, N'День знаний', CAST(0x5E440B00 AS Date), 1)
INSERT [dbo].[Events] ([ID], [Name], [Date], [Organizator]) VALUES (7, N'Всемирный день ребёнка', CAST(0xAE440B00 AS Date), 2)
INSERT [dbo].[Events] ([ID], [Name], [Date], [Organizator]) VALUES (8, N'Новый год', CAST(0xD4440B00 AS Date), 5)
INSERT [dbo].[Events] ([ID], [Name], [Date], [Organizator]) VALUES (9, N'1 мая', CAST(0xE3430B00 AS Date), 4)
INSERT [dbo].[Events] ([ID], [Name], [Date], [Organizator]) VALUES (10, N'9 мая', CAST(0xE9430B00 AS Date), 1)
SET IDENTITY_INSERT [dbo].[Events] OFF
INSERT [dbo].[Gender] ([Code], [Name]) VALUES (1, N'Мужской')
INSERT [dbo].[Gender] ([Code], [Name]) VALUES (2, N'Женский')
SET IDENTITY_INSERT [dbo].[Group] ON 

INSERT [dbo].[Group] ([ID], [Name]) VALUES (1, N'Кнопочки')
INSERT [dbo].[Group] ([ID], [Name]) VALUES (2, N'Бусинки')
INSERT [dbo].[Group] ([ID], [Name]) VALUES (3, N'Звёздочки')
INSERT [dbo].[Group] ([ID], [Name]) VALUES (4, N'Лучики')
INSERT [dbo].[Group] ([ID], [Name]) VALUES (5, N'Пчёлки')
SET IDENTITY_INSERT [dbo].[Group] OFF
SET IDENTITY_INSERT [dbo].[Parents] ON 

INSERT [dbo].[Parents] ([ID], [FIO], [Adress], [Phone], [Email], [Place_of_work], [Query_Child]) VALUES (1, N'Логинова Кара Тимуровна', N'ул. Ленина, д. 7', N'89314523513', N'floxy@hotmail.com', N'Магазин Smart', 1)
INSERT [dbo].[Parents] ([ID], [FIO], [Adress], [Phone], [Email], [Place_of_work], [Query_Child]) VALUES (2, N'Новикова Юлия Глебовна', N'ул. Пушкина, д.32', N'89857438112', N'hllam@comcast.net', N'Городская поликлиника', 2)
INSERT [dbo].[Parents] ([ID], [FIO], [Adress], [Phone], [Email], [Place_of_work], [Query_Child]) VALUES (3, N'Александрова Екатерина Андреевна', N'ул. Загрекова, д 12', N'89747478322', N'smcnabb@att.net', N'Магазин Магнит', 1)
INSERT [dbo].[Parents] ([ID], [FIO], [Adress], [Phone], [Email], [Place_of_work], [Query_Child]) VALUES (4, N'Шутов Руслан Алексеевич', N'ул. Песочная, д122', N'89436273983', N'aschmitz@hotmail.com', N'Городская администрнация', 1)
INSERT [dbo].[Parents] ([ID], [FIO], [Adress], [Phone], [Email], [Place_of_work], [Query_Child]) VALUES (5, N'Журавлева Жанна Александровна', N'ул. Гагарина, д. 66', N'89747478282', N'ganter@optonline.net', N'Выксунский лесхоз', 3)
INSERT [dbo].[Parents] ([ID], [FIO], [Adress], [Phone], [Email], [Place_of_work], [Query_Child]) VALUES (6, N'Павлов Филипп Аркадьевич', N'ул. Лесная, д 11', N'89466773778', N'jigsaw@aol.com', N'Лукояновская ЦРБ', 1)
INSERT [dbo].[Parents] ([ID], [FIO], [Adress], [Phone], [Email], [Place_of_work], [Query_Child]) VALUES (7, N'Ермакова Анастасия Владимировна', N'ул. Деманова, д.42', N'89463673728', N'csilvers@mac.com', N'Магазин Пятерочка', 1)
INSERT [dbo].[Parents] ([ID], [FIO], [Adress], [Phone], [Email], [Place_of_work], [Query_Child]) VALUES (8, N'Молчанов Борис Владимирович', N'ул. Пролетарская, д.46', N'89604747473', N'rnelson@yahoo.ca', N'ООО ПАП', 1)
INSERT [dbo].[Parents] ([ID], [FIO], [Adress], [Phone], [Email], [Place_of_work], [Query_Child]) VALUES (9, N'Агапова Кристина Александровна', N'ул. Юбилейная, д.111', N'89875747473', N'dogdude@verizon.net', N'МФЦ', 1)
INSERT [dbo].[Parents] ([ID], [FIO], [Adress], [Phone], [Email], [Place_of_work], [Query_Child]) VALUES (10, N'Храмова Наталия Сергеевна', N'ул. Западная, д.98', N'89477477232', N'lukka@hotmail.com', N'ООО Плодородие - Лукоянов', 2)
SET IDENTITY_INSERT [dbo].[Parents] OFF
INSERT [dbo].[Users] ([ID], [Login], [Password]) VALUES (1, N'1', N'111')
INSERT [dbo].[Users] ([ID], [Login], [Password]) VALUES (2, N'2', N'222')
ALTER TABLE [dbo].[Child]  WITH CHECK ADD  CONSTRAINT [FK_Child_Gender] FOREIGN KEY([Gender])
REFERENCES [dbo].[Gender] ([Code])
GO
ALTER TABLE [dbo].[Child] CHECK CONSTRAINT [FK_Child_Gender]
GO
ALTER TABLE [dbo].[Child]  WITH CHECK ADD  CONSTRAINT [FK_Child_Group] FOREIGN KEY([ID_Group])
REFERENCES [dbo].[Group] ([ID])
GO
ALTER TABLE [dbo].[Child] CHECK CONSTRAINT [FK_Child_Group]
GO
ALTER TABLE [dbo].[Child]  WITH CHECK ADD  CONSTRAINT [FK_Child_Parents] FOREIGN KEY([ID_Parent])
REFERENCES [dbo].[Parents] ([ID])
GO
ALTER TABLE [dbo].[Child] CHECK CONSTRAINT [FK_Child_Parents]
GO
ALTER TABLE [dbo].[EdGrEvents]  WITH CHECK ADD  CONSTRAINT [FK_EdGrEvents_Educators] FOREIGN KEY([ID_Educators])
REFERENCES [dbo].[Educators] ([ID])
GO
ALTER TABLE [dbo].[EdGrEvents] CHECK CONSTRAINT [FK_EdGrEvents_Educators]
GO
ALTER TABLE [dbo].[EdGrEvents]  WITH CHECK ADD  CONSTRAINT [FK_EdGrEvents_Events] FOREIGN KEY([ID_Events])
REFERENCES [dbo].[Events] ([ID])
GO
ALTER TABLE [dbo].[EdGrEvents] CHECK CONSTRAINT [FK_EdGrEvents_Events]
GO
ALTER TABLE [dbo].[EdGrEvents]  WITH CHECK ADD  CONSTRAINT [FK_EdGrEvents_Group] FOREIGN KEY([ID_Group])
REFERENCES [dbo].[Group] ([ID])
GO
ALTER TABLE [dbo].[EdGrEvents] CHECK CONSTRAINT [FK_EdGrEvents_Group]
GO
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_Educators] FOREIGN KEY([Organizator])
REFERENCES [dbo].[Educators] ([ID])
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_Educators]
GO
