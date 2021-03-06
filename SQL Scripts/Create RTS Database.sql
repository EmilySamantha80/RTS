﻿USE [rts]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 4/2/2018 8:55:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryCode] [nvarchar](50) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
	[SortId] [int] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HitCount]    Script Date: 4/2/2018 8:55:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HitCount](
	[UniqueHitsTotal] [bigint] NOT NULL,
	[PageViewsTotal] [bigint] NOT NULL,
	[CurrentDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Setting]    Script Date: 4/2/2018 8:55:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Setting](
	[SettingName] [nvarchar](50) NOT NULL,
	[SettingValue] [nvarchar](50) NULL,
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[SettingName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tone]    Script Date: 4/2/2018 8:55:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tone](
	[ToneId] [int] IDENTITY(1,1) NOT NULL,
	[Available] [bit] NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Artist] [nvarchar](255) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Counter] [int] NOT NULL,
	[Added] [datetime] NOT NULL,
	[Rtttl] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_Tones] PRIMARY KEY CLUSTERED 
(
	[ToneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Visitor]    Script Date: 4/2/2018 8:55:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Visitor](
	[IPAddress] [nvarchar](64) NOT NULL,
	[FirstVisit] [datetime] NOT NULL,
	[LastVisit] [datetime] NOT NULL,
 CONSTRAINT [PK_Visitor] PRIMARY KEY CLUSTERED 
(
	[IPAddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Category] ([CategoryCode], [CategoryName], [SortId]) VALUES (N'80s', N'80''s', 10)
GO
INSERT [dbo].[Category] ([CategoryCode], [CategoryName], [SortId]) VALUES (N'Anthems', N'Anthems', 20)
GO
INSERT [dbo].[Category] ([CategoryCode], [CategoryName], [SortId]) VALUES (N'Christmas', N'Christmas', 30)
GO
INSERT [dbo].[Category] ([CategoryCode], [CategoryName], [SortId]) VALUES (N'Classical', N'Classical', 40)
GO
INSERT [dbo].[Category] ([CategoryCode], [CategoryName], [SortId]) VALUES (N'Country', N'Country', 50)
GO
INSERT [dbo].[Category] ([CategoryCode], [CategoryName], [SortId]) VALUES (N'Dance', N'Dance', 60)
GO
INSERT [dbo].[Category] ([CategoryCode], [CategoryName], [SortId]) VALUES (N'Disney', N'Disney', 70)
GO
INSERT [dbo].[Category] ([CategoryCode], [CategoryName], [SortId]) VALUES (N'Holiday', N'Holiday', 80)
GO
INSERT [dbo].[Category] ([CategoryCode], [CategoryName], [SortId]) VALUES (N'Latin', N'Latin', 90)
GO
INSERT [dbo].[Category] ([CategoryCode], [CategoryName], [SortId]) VALUES (N'Movie', N'Movie', 110)
GO
INSERT [dbo].[Category] ([CategoryCode], [CategoryName], [SortId]) VALUES (N'Musical', N'Musicals', 120)
GO
INSERT [dbo].[Category] ([CategoryCode], [CategoryName], [SortId]) VALUES (N'Oldies', N'Oldies', 100)
GO
INSERT [dbo].[Category] ([CategoryCode], [CategoryName], [SortId]) VALUES (N'Other', N'Other', 230)
GO
INSERT [dbo].[Category] ([CategoryCode], [CategoryName], [SortId]) VALUES (N'Pop', N'Pop', 130)
GO
INSERT [dbo].[Category] ([CategoryCode], [CategoryName], [SortId]) VALUES (N'Rap', N'Rap', 140)
GO
INSERT [dbo].[Category] ([CategoryCode], [CategoryName], [SortId]) VALUES (N'RB', N'R&B', 150)
GO
INSERT [dbo].[Category] ([CategoryCode], [CategoryName], [SortId]) VALUES (N'Rock', N'Rock', 160)
GO
INSERT [dbo].[Category] ([CategoryCode], [CategoryName], [SortId]) VALUES (N'Swing', N'Swing', 170)
GO
INSERT [dbo].[Category] ([CategoryCode], [CategoryName], [SortId]) VALUES (N'Techno', N'Techno', 180)
GO
INSERT [dbo].[Category] ([CategoryCode], [CategoryName], [SortId]) VALUES (N'Theme', N'Themes', 190)
GO
INSERT [dbo].[Category] ([CategoryCode], [CategoryName], [SortId]) VALUES (N'Traditional', N'Traditional', 200)
GO
INSERT [dbo].[Category] ([CategoryCode], [CategoryName], [SortId]) VALUES (N'TV', N'TV', 210)
GO
INSERT [dbo].[Category] ([CategoryCode], [CategoryName], [SortId]) VALUES (N'VG', N'Video Game', 220)
GO
INSERT [dbo].[HitCount] ([UniqueHitsTotal], [PageViewsTotal], [CurrentDate]) VALUES (860267, 5307946, CAST(N'2018-01-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Setting] ([SettingName], [SettingValue]) VALUES (N'CountingSince', N'2001-12-04')
GO
INSERT [dbo].[Setting] ([SettingName], [SettingValue]) VALUES (N'CurrentDate', N'2018-04-02')
GO
INSERT [dbo].[Setting] ([SettingName], [SettingValue]) VALUES (N'PageViews', N'5312518')
GO
INSERT [dbo].[Setting] ([SettingName], [SettingValue]) VALUES (N'UniqueHits', N'860405')
GO
SET IDENTITY_INSERT [dbo].[Tone] ON 

GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (1, 1, N'-Pop-', N'''N Sync', N'Bye Bye Bye', 9851, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'ByeByeBye:d=4,o=5,b=320:32p,2e.,d.,d.,d.,c.,2e.,2a.4,8d.,8d.,8d.,8c.,d.,c.,2e.,2a.4,d.,d.,d.,e.,2f.,2e.,d.,c.,e.,d.,2c.,2a.4,d.,d.,d.,c.,2e.,2a.4,d.,d.,d.,c.,2e.,2a.4,d.,d.,d.,e.,2f.,2e.,d.,c.,e.,1d,g.,f.,e.,f.,d.,c.,d.,e.,2d.,d.,e.,d.,1c,g.,f.,e.,f.,d.,c.,d.,e.,d.,8a.4,8c.,d.,e.,2d.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (2, 1, N'-Pop-', N'''N Sync', N'It''s Gonna Be Me', 2642, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'GonnaBeMe:d=4,o=4,b=180:32p,8a5,8g5,8f5,8e5,d5,a5,1g5,8g5,8f5,8e5,8d5,c5,g5,1f5,8f5,8e5,8d5,8c5,a#.,d.5,f5,1e5,f.5,g.5,a5,2g5,8a5,8g5,8f5,8e5,d.5,a.5,1g5,8e5,8d5,c.5,g.5,2f.5,2e5,2d.5,f5,8e5,8d5,d5,2d5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (3, 1, N'-Pop-', N'''N Sync', N'Tearin'' Up My Heart', 2643, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'TearingUp:d=4,o=5,b=450:32p,2g#4,2g#,2f#,2f,2d#,1f,2a#4,1c#,1d#,1d#.,2d#,2g#,2f#,2f,2d#,1f,2a#4,1c#,1d#,1d#,2c#,1c,1c#,1d#,1f,2f#,1f,1f#,1f,1c,1f,1d#,1d#,1c#.,2a#4,2c,2c#,1d#,1d#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (4, 1, N'-Rap-', N'2 Pac', N'Ain''t Mad Atcha', 8483, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'AintMad:d=4,o=5,b=160:32p,8c6,8d6,8d#6,8d6,8c6,8g,8g,p,c6,8p,8a#,8g#,32g#,g#,p,8g6,8a6,8a#6,8a6,g6,e6,8c6,p,8c6,8d6,8e6,8d6,32d6,8c6,g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (5, 1, N'-Dance-80s-', N'Abba', N'Dancing Queen', 8245, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'AbbaQueen:d=4,o=5,b=80:32p,2d,8c.,2d#,32d.,16c.,32a#.4,8c.,8d.,2d.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (6, 1, N'-Dance-80s-', N'Abba', N'Gimme Gimme Gimme', 2085, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Gimme:d=4,o=5,b=40:32p,32d#.,32f#.,32d#.,32f#.,32d#.,32f#.,32a#.,16g#.,32f#.,32d#.,16f#.,16d#.,16g#.,32g#.,32f#.,32d#.,32f#.,32d#.,32d#.,32d#.,32c#.,32a#.4,32f#.,8d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (7, 1, N'-Dance-80s-', N'Abba', N'Mamma Mia', 1525, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'MammaMia:d=4,o=5,b=50:32p,32c.,32d.,32f.,a.,32a.,32g.,32a.,32g.,16f.,32c.,32d.,32f.,a.,32a.,32g.,32a#.,32a.,32f.,16g.,16a.,32a.,32g.,f,32a.,32a.,32a.,32g.,32f.,16g.,16a.,c')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (8, 1, N'-Dance-80s-', N'Abba', N'Money Money Money', 1683, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'AbbaMoney:d=8,o=6,b=112:32p,e,e,e,e,e,e,16e5,16a5,16c,16e,d#,d#,d#,d#,d#,d#,16f5,16a5,16c,16d#,4d,c,a5,c,4c,2a5,16a5,16c,16e,a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (9, 1, N'-Dance-80s-', N'Ace Of Base', N'Don''t Turn Around', 1523, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'DontTurn:d=4,o=5,b=63:16g#.,32g#.,32g.,32d#.,8d#,16g#.,32g#.,32g.,32d#.,8d#,16g#.,32g#.,32g.,32d#.,8f,16f.,16f.,16f.,8g.,16g.,32f.,d#.,16g#.,16g#.,16g#.,g#,32g.,32g.,32g.,32g.,16f.,16d#.,16c.,8d#.,c,16g#.,16g#.,16a#.,g,32g.,32g.,16g.,16g#.,8a#.,8a#.,g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (10, 1, N'-Dance-80s-', N'Ace Of Base', N'The Sign', 2004, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'TheSign:d=4,o=5,b=200:32p,2c6,g#,8g#,1g#,8d#,8d#,f,g#,g#,8a#,b.,a#,g#,8a#,2g#,c6,8a#,g#,2a#,2g#,8g#,g#,g#.,c6,2c6,2a#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (11, 1, N'-Rock-', N'Aerosmith', N'Walk This Way', 2400, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'WalkThis:d=4,o=5,b=355:32p,a#,b,c6,2f6,a#,b,c6,2f6,1f.,a#,b,c6,2f6,a#,b,c6,2f6,g#,f,1f6,a#,b,c6,2f6,a#,b,c6,2f6,1f.,a#,b,c6,2f6,a#,b,c6,2f6,g#,f,1f6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (12, 1, N'-80s-', N'Aha', N'Take On Me', 1761, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'TakeOnMe:d=32,o=5,b=40:p,g,g,g,16d#,16c,16f,16f,f,a,a,a#,c6,a#,a#,a#,16f,16d#,16g,16g,g,f,f,g,f,g,g,g,16d#,16c,16f,16f,f,a,a,a#,c6,a#,a#,a#,16f,16d#,16g,16g,g,f,f,g,f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (13, 1, N'-80s-', N'Air Supply', N'Making Love Out Of Nothing', 1520, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'MakingLove:d=16,o=6,b=40:32p,g#5,d#5,g#5,a#5,c#,32c,32c#,32c,32a#5,32g#5,32g5,g#5,d#5,g#5,a#5,c#,8c,32g#5,32g5,g#5,f5,g#5,a#5,8c.,g#5,g#5,f5,g#5,a#5,c#,32c,a#5,32g#5,32g#5,32g#5,g#5,g5,a#5,g#5,8d#.,g5,g#5,d#5,g#5,a#5,c#,8c,32g#5,32g5,g#5,f5,g#5,a#5,8c.,g#5,g#5,f5,g#5,a#5,c#,32c,a#5,32g#5,32g#5,32g#5,g#5,g5,a#5,g#5,8d#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (14, 1, N'-Dance-', N'Alexia', N'Uh La La La', 1924, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'UhLaLaLa:d=4,o=5,b=40:32p,8a#,32g#,16a#,b,16g#,16g#,32a#,16g#,f#,16a#,32g#,16a#,16b,f#,16g#,16g#,32f#,8f#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (15, 1, N'-Dance-', N'Alice Dee Jay', N'Better Off Alone', 4003, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'BetterOff:d=8,o=5,b=140:32p,c6,p,c6,a,p,c6,p,c6,p,b,p,g,g6,16p,g6,16p,e6,c6,p,c6,a,p,c6,p,c6,p,b,p,g,f6,16p,f6,16p,e6,c6,p,c6,a,p,c6,p,c6,p,b,p,g,g6,16p,g6,16p,e6,c6,p,c6,a,p,c6,p,c6,p,b,p,g,f6,16p,f6,16p,e6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (16, 1, N'-Pop-', N'All Saints', N'Pure Shores', 643, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'PureShores:d=32,o=5,b=25:p,f#,d,16a4,f#,d,d,f,e,16d,f,e,16d,16f,d,d,f,e,16d,f,e,8d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (17, 1, N'-Anthems-', N'Theme', N'American National Anthem', 1923, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'AnthemUSA:d=4,o=5,b=130:32p,8g.,16e,c,e,g,2c6,8e6.,16d6,c6,e,f#,2g,g,e6.,8d6,c6,2h,8a.,16h,c6,c6,g,e,c')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (18, 1, N'-Anthems-', N'Anthem', N'Deutschlandlied', 1044, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Deutschlandlied:d=4,o=5,b=115:32p,g.,8a,h,a,c6,h,8a,8f#,g,e6,d6,c6,h,a,8h,8g,2d6,a,h,8a,8f#,d,c6,h,8a,8f#,d,d6,c6,h.,8h,c#6,8c#6,8d6,2d6,g6.,8f#6,8f#6,8e6,d6,e6.,8d6,8d6,8c6,h,a.,16h,16c6,8d6,8e6,8c6,8a,g,8h,8a,2g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (19, 1, N'-Anthems-', N'Anthem', N'La Marcha Real - Spanish National Anthem', 1283, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'MarReal:d=4,o=6,b=90:32p,c,g5,e,c,32p,8g,8f,8e,8d,8c,8c,8b5,8a5,8g5,c,d,e,16p,8g,8f,8e,8d,8c,g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (20, 1, N'-Pop-Dance-', N'Aqua', N'Barbie Girl', 2323, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'BarbieGirl:d=32,o=5,b=45:p,a#,f#,a#,d#,8b,g#,c#,g#,c#,8a#,f#,d#,16g#,8d#,a#,g#,16a#,g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (21, 1, N'-Pop-Dance-', N'Aqua', N'Dr Jones', 1443, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'DrJones:d=32,o=5,b=70:p,16e,b,e,16e6,b,e,16f#,b,f#,16f#6,b,f#,16a,c#6,a,16e6,e,e6,16b,e6,b,f#6,b,16g#6,16e,b,e,16e6,b,e,16f#,b,f#,16f#6,b,f#,16g#,c#6,g#,16d#6,g#,e6,16b,e6,b,f#6,b,16g#6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (22, 1, N'-Pop-', N'Aqua', N'Turn Back Time', 802, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'TurnBack:d=16,o=5,b=50:32p,c#,c#,e,f#,e,4b,8e.,8f#,8g#,e,e,e,e,e,8b,e.,8e,8g#,4f#,c#,c#,e,f#,e,4b,8e.,8f#,8g#.,e,8e.,4a,8g#,a,2f#,g#,f#,e,4c#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (23, 1, N'-Pop-', N'Backstreet Boys', N'Larger Than Life', 962, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Larger:d=4,o=5,b=225:32p,2e,2e,e,e,e,c#,2d#,d#,c#,1c#,e,e,e,e,e,c#,c#,c#,2d#,d#,1c#.,e,e,e,c#,1e,d#,d#,d#,c#,2c#,2g#4,2d#.,2c#.,2e,2d#.,2c#.,2b4,c#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (24, 1, N'-Pop-', N'Backstreet Boys', N'Shape Of My Heart', 2323, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'ShapeOfHeart:d=4,o=5,b=112:32p,f,g,8a,8a,8a#,a,f,g,p,a#,a,8g,8g,8g,g,d,c,p,g,e,f,p,8f,8f,8g,8a,d,p,8a,8g,8f,e,f,g,a,g,8e,f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (25, 1, N'-Rock-', N'Baha Men', N'Who Let The Dogs Out', 2160, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'BahaMen:d=8,o=5,b=140:32p,4g,16g.,32p,g,4g,4g,32p,4c,p,c,p,c,16p,c,16p,c,32p,16g.,32p,16g.,32p,16g.,32p,4g,4g,32p,4c,p,c,p,c,16p,c,16p,c,4p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (26, 1, N'-Oldies-', N'Bangles', N'Walk Like An Egyptian', 1040, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Egyptian:d=8,o=4,b=100:32p,c6,a5,a5,a5,16p,g5,16p,c6,a5,16a5,a#5,16a5,f5,f5,16p,d#5,16d#5,f5,p,c6,a5,a5,a5,16p,g5,16p,c6,a5,16a5,a#5,16a5,f5,f5,16f5,d#5,16d#5,f5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (27, 1, N'-Pop-', N'Barenaked Ladies', N'One Week', 803, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'OneWeek:d=16,o=6,b=112:8a#5,4c,8d,8d,a#5,a#5,8c,a#5,4a#.5,8d,d,d,d,d,8d#,a#5,a#5,a#5,8c,4a#5,8d,8d,a#5,a#5,8c,a#5,8a#.5,a#5,a#5,d.,d.,d.,d,8d,8d#,8a#5,a#5,8c,4a#5,8d,8d,a#5,a#5,c,8a#5,4a#5,g5,d,d,d,d,d,8d,8d#,a#5,a#5,a#5,8c,8a#5,d,d,4d,c,a#5,c,8a#5,8a#5,g5,a#5,g5,d,8d,d,d,8d,8d#,a#5,8a#5,8c,8a#.5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (28, 1, N'-Oldies-', N'Barry Manilow', N'Copa Cobanna', 960, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'CopaCobanna:d=8,o=5,b=120:32p,c,d#,f,g#.,2c#,g#,g,f,g.,2c,16p,16c,d#,f,g,16g#,g,g#,4g,16p,d#,h4,16d,16p,16d,16p,d,16c,d,16p,c,d#,f,g#.,4c#.,16p,16g,g#,g,f,g.,2c,16p,16c,d#,f,g,16g#,g,g#,4g,16p,d#,h4,c,16d,d#,f,g.,d#,c,g4,h4.,d,16p,4c,d#,c,g4,h4.,d,16p,4c,p,c,g4,g#4,16a#4,16c,d,16d#,f.,d,f,f,g.,16p,g.,16p,g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (29, 1, N'-Oldies-', N'Beach Boys', N'California Girls', 1040, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'CaliGirl:d=16,o=6,b=50:32p,32f,f.,d#.,c#,c.,c#.,g#.5,a#.5,32a#5,c#.,b.5,c#.,b.5,a#.5,b5,32a#5,8g#.5,d#,32c#,e.,d#.,c#,32c#,d#,32d#,a5,32a5,d#,c#.,32f#,f#,32f#,f#.,f.,d#,f.,4g#5,32f,f.,d#.,c#,c.,c#.,g#.5,a#.5,32a#5,c#.,b.5,c#.,b.5,a#.5,b5,32a#5,8g#.5,d#,32c#,e.,d#.,c#,32c#,d#,32d#,a5,32a5,d#,c#.,32f#,f#,32f#,f#.,f.,d#,f.,4g#5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (30, 1, N'-Oldies-', N'Beach Boys', N'Fun Fun Fun', 880, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'FunFunFun:d=32,o=6,b=40:32p,16d,c,d,d,c,c,d#,d#,d,d,c,c,a5,a5,c,c,f,16g,4f,d,d,c,d,d,c,16d#,d#,d,d,c,c,a5,a5,c,d,c,16c,4g5,d,d,c,d,d,c,16d#,d#,16d,c,c,a5,a5,c,c,f,16g,4f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (31, 1, N'-Oldies-', N'Beach Boys', N'Good Vibrations', 1040, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'GoodVibes:d=4,o=5,b=225:32p,1e.6,8b,b,8b,e6,8e6,g.6,a.6,d6,d.6,8c6,1b.,a,8b,c.6,d.6,a.,b.,c.6,b,a.,g.,a.,8g,1f#.,1b.6,b6,8b6,b6,8a6,g.6,d.6,e.6,1b,8a,2g.,a.,8b,c.6,d.6,a.,b.,c.6,b,a.,g.,a.,8g,2f#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (32, 1, N'-Oldies-', N'Beach Boys', N'Help Me Rhonda', 640, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Rhonda:d=4,o=6,b=320:a.5,8a.5,2b5,d,2b5,2d,8d.,d.,d,g.,8g.,f#.,8e.,2f#,2f#,1d.,8b.5,d.,8d.,2e,2d,2c#,8d,8c#,1b.5,2b5,8b.5,2f#,f#,2e,8e.,d.,2c#,8e.,8d.,1b.5,a5,2b5,1a5,2f#,8e.,2d,a.5,2g,8g.,2f#,8e.,f#.,8e.,f#.,1d.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (33, 1, N'-Oldies-', N'Beach Boys', N'Surfin USA', 1120, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'SurfinUSA:d=16,o=6,b=70:32p,d,d,d,d,d,8c#,8b.5,4f#.5,d,d,b5,d,8c#,2b5,d,d,d,d,d,8c#,8b.5,4f#.5,d,d,d,d,8c#.,2b5,e,e,e,e,8e.,8e.,4a5,c#,d,d#,e,8e,2b5,d,d,d,d,d,8c#,8b.5,2f#5,a5,a5,g#5,f#.5,4e.5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (34, 1, N'-Rock-', N'Beastie Boys', N'Brass Monkey', 2400, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'BrassMonkey:d=4,o=5,b=125:32p,f,8e,16f,p,8p,8f,8e,8f,8g#,16f,2p,f,8e,8f,8e,16f,8p,16p,8f,8e,8f,8g#,16f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (35, 1, N'-Oldies-', N'Beatles', N'Every Little Thing She Does', 640, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'EveryLittle:d=8,o=4,b=160:32p,c6,d6,4f6,d6,p,4c6,p,a#5,2a#5,4p,p,a#5,a#5,p,a#5,p,a#5,4c6,p,a#5,4c6,4p,p,c6,d6,4f6,d6,p,4c6,p,a#5,2a#5,4p,p,a#5,a#5,p,a#5,p,a#5,4c6,p,a#5,2c6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (36, 1, N'-Oldies-', N'Beatles', N'Hard Days Night', 800, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'HardDaysNight:d=16,o=5,b=100:32p,e.,f.,e.,4g.,4g.,2g,f.,g,f.,g.,4a#.,g,f.,32g.,32f.,4e.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (37, 1, N'-Oldies-', N'Beatles', N'Strawberry Fields', 642, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Strawberry:d=4,o=5,b=225:32p,8c#6,8p,c#6,d6,2c#6,2a,p,e,f#,b,2a,1g,p,g,8p,a,8p,b,1e,2p,g,8p,a,8p,a#,2e,p,e,e6,d6,c#6,b,8a#,8b,2c#6,p,c#6,8p,a,8p,f#,c#6,8p,a,8p,e,b,2a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (38, 1, N'-Classical-', N'Beethoven', N'Abdelazer', 2723, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Abdelazer:d=8,o=5,b=160:32p,2d,2f,2a,4d6,e6,f6,g6,f6,e6,d6,2c#6,4a6,d6,f6,a6,f6,4d6,2a6,4g6,c6,e6,g6,e6,4c6,2a6,4f6,b,d6,f6,d6,4b,2g6,4e6,a,c#6,e6,c6,4a,2f6,e6,f6,e6,d6,4c#6,4f6,e6,f6,e6,d6,4a,4d6,c#6,d6,e6,d6,2d6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (39, 1, N'-Pop-', N'Bette Midler', N'Wind Beneath My Wings', 1043, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'WindBeneath:d=8,o=6,b=160:32p,b.5,g#.,a.,b.,2a,2g#,f#.,4e.,2g#,c#.,1c#,p,b.5,g#.,a.,b.,4a.,2g#.,f#.,4e.,p,1e,f#.,g#.,a.,2g#.,f#.,4e.,4f#.,1f#,p,f#.,g#.,a.,2g#.,f#.,4e.,4f#.,1e')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (40, 1, N'-Oldies-', N'Bill Haley', N'Rock Around The Clock', 640, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'RockClock:d=16,o=5,b=160:32p,c,8p,p,e,8p,p,g,4p,8p,c,p,32p,e,8p,p,g,2p,c,8p,p,e,8p,p,g,8p,p,8a,32p,8g,32a#,4p,8g,32p,e,8p,p,8c,8d,32p,8c,8g,8p,f,8p,p,d#,8p,p,c,8p,p,g,8p,p,8f,32p,d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (41, 1, N'-80s-', N'Billy Idol', N'White Wedding', 2000, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'WhiteWed:d=8,o=5,b=63:32p,c,16d#,16f,g,16g,c,d#,f,4f.,c,16d#,16f,g,16g,a#,g,f,16g,4g.,c,16d#,16f,g,16g,a#,g,f,16g,g,c,16d#,16f,g,16g,a#,g,f,16g,c,c,16d#,16f,g,16g,a#,4g,16d#,c,d#,d#,c.,a#,16g,16f,4g.,16d#,4c,d#,d#,16c,4c,d#,16d#,2d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (42, 1, N'-Country-', N'Billy Ray Cyrus', N'Achy Breaky Heart', 1604, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Achy:d=8,o=6,b=140:32a,4p,a,g,f,4p,c,a,g,a,g,f,4p,c,16a,p,16p,a,p,f,c,d,d#,e')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (43, 1, N'-Rock-', N'Black Sabbath', N'Iron Man', 2163, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'IronMan:d=4,o=6,b=90:a5,c,8c,8d,d,16f,16e,16f,16e,16f,16e,8c,8c,8d,d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (44, 1, N'-Pop-', N'Blessed Union Of Souls', N'Hey Leonardo', 963, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'HeyLeo:d=16,o=6,b=56:32p,32f,f,f,32d#,4f,c#,a#,8g#,f,f,d#,32f,d#,c#,d#.,f,32d#,d#.,c#,32c#,c,c,a#.5,c,32c,a#5,g#5,8g#5,32g#5,f,d#,f#,4f,c#,a#,8g#,f,f,32d#,f,8d#.,f,f,d#,f,32d#,f,8d#,32c#,32d#,f.,32d#,f.,d#,32f,d#,c#,d#.,4c#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (45, 1, N'-Rock-', N'Blink 182', N'Adam''s Song', 1680, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'AdamSong:d=16,o=5,b=50:32p,d#,8f,8f#,8f.,d#,8f,8f#,8f.,c#,8d#,8f,8f#,8f,8d#,8f,4c#,8d#,8f,8f#,8f,8d#,8f,4c#,c#,c#,d#,f,f#,f#,8f,8d#,8f,8c#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (46, 1, N'-Rock-', N'Blink 182', N'All The Small Things', 2480, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'SmallThings:d=32,o=6,b=25:p,f.,8c#,c.,8c#,f.,8c#,c.,8c#,f.,8c#,c.,8c#,f.,8c#,c.,8c#,f.,8f#,f.,8c#,f.,16c#.,g#.5,c.,8c#,f.,8c#,c.,8c#,f.,16c#.,g#.5,c.,8c#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (47, 1, N'-Rock-', N'Blink 182', N'What''s My Age Again', 2323, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'MyAge:d=4,o=5,b=320:32p,g,b,c6,1b.,a,a,a,a,b,2b.,g,b,c6,1b.,a,a,b,a,g,2g.,g,g,g,g,g,2g.,e,g,g,g,g,2g.,g,c6,c6,b,a,g,b,1a.,a,b,a,b,a,b,a,g,a,2b.,a,1a.,g,g,g,b,a,g,a,2b.,a,1a.,g,g,a,b,a,g,a,2b,2b,1a,g,g,g,g,b,a,g.,8g,b,b,b,b,b,a,1a,b,b,b,b,1b,a,b,g,g,1g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (48, 1, N'-Oldies-', N'Bobby McFerran', N'Don''t Worry Be Happy', 960, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'DontWorry:d=4,o=6,b=180:32p,2c#.7,a#.,g#.,a#,8d#,f.,g#,8f,d#,8c#,d#,8f,1d#,8p,g#,8f,d#,8c#,d#,8f,1d#,8p,e,8d#,c#,8a#5,1c#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (49, 1, N'-Pop-', N'Britney Spears', N'Baby One More Time', 1203, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'HitMeBaby:d=2,o=6,b=320:32p,c#,c#,c#,c#,1c#,c#,d#,c,g#5,1g#5,f#5,1g#.5,8p,g#5,c#,c#,d#,e,1d#,1c#,8p,c#,c#,c#,c#,1c#,c#,d#,c,g#5,1g#5,b5,1b5,4e5,4f#5,1g#5,g#5,c#,c#,d#,e,1d#,1c#,1e,1e,e,e,f#,e,1d#,1d#.,c#,d#,1e,1e,e,e,f#,e,1g#,1g#,g#,f#,1e')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (50, 1, N'-Pop-', N'Britney Spears', N'Oops I Did It Again', 2483, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'OopsAgain:d=8,o=5,b=100:32p,g#,f#,e,d#,c#,4g#,4c#,c,c#,d#,4c#,4p,h4,h4,d#,f#,4e,4p,h4,f#,g#,f#,4e,4p,g#,f#,e,c#,c,4g#,4c#,c,c#,d#,16e,16d#,4c#,p,16h4,16h4,h4,d#,f#,4a,4g#,4f#,e,p,e,4g#,4g#,f#,e,4c#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (51, 1, N'-Pop-', N'Bryan Adams', N'Everything I Do', 3122, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'DoItForYou:d=4,o=6,b=100:32p,16f#.,16g.,16f#.,16e.,32e,32f#,32e,2d.,e,16d.,32c#.,32b.5,2a.5,2b5,8c#.,d.,16f#.,16e.,8d.,2e.,f#,16g.,32f#.,32e.,2d.,e,16d.,32c#.,32b.5,2a.5,8a5,b.5,c#.,d.,g.,32f#.,32e.,2d,8e.,2e,8f#.,g.,g,16g.,8g.,8b.,8a.,8f#.,2e.,16e.,8f#.,g.,g,16g.,8g.,8b.,8a.,8f#.,2e.,16a.5,8f#.,8g.,32f#.,32e.,2d.,16g.,16a.,16g.,16f#.,2e.,16a.5,16f#.,8f#.,e,1d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (52, 1, N'-Rock-', N'Cake', N'Going The Distance', 1760, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Distance:d=4,o=6,b=45:32p,32f5,16f5,32f5,16f5,32f5,16f5,32f5,16f5,32a#5,32b5,16c,32f5,16f5,32f5,16f5,32f5,16f5,32f5,16f.,32d#,16c')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (53, 1, N'-Rock-', N'Cake', N'Never There', 1600, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'NeverThere:d=4,o=6,b=63:32p,8f.5,16c,8f.,a#5,16c#,16f,16c,8e,8f.5,16c,8f.,a#5,16c#,16f,16c,8e,8f.5,16c,8f.,a#5,16c#,16f,16c,8e')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (54, 1, N'-Movie-Pop-', N'Celine Dion', N'Beauty And The Beast', 2563, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'BeautyBeast:d=4,o=4,b=140:32p,e5,g5,b5,c6,1f5,p,e5,g5,b5,c6,2d6,2p,e6,8p,8d6,e6,g6,2c6,2p,c6,b5,c6,d6,2f5,2p,e6,f6,d6,e6,1c6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (55, 1, N'-Swing-', N'Cherry Poppin Daddies', N'Zoot Suit Riot', 1443, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'ZootSuit:d=4,o=6,b=180:32p,8e5,g5,a5,d#,1d,d,8c,d,1c,2d#,d,8c,d,8c,g5,a5,1d#,d,8c,d,1c,32c,8e5,g#5,2a5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (56, 1, N'-80s-', N'Chicago', N'You''re My Inspiration', 960, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Inspiration:d=32,o=5,b=40:p,c,c,d,16e,16c,16e,g,4g,c,16a,a,16a.,16a,16g.,g,g,16f,d,4c,c,d,16e,16c,16a,16b,4g.,16a,a,16a.,16a,16g,g,16g.,16a,4f.,8g.,g,16g.,8e.,16a,g,16f.,e,4f,16e,f,16e.,d,8c,c,16d,d,8d.,16e,e,4e.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (57, 1, N'-Pop-', N'Christina Aguilera', N'Genie In A Bottle', 1522, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Genie:d=8,o=6,b=100:32p,d,16e,16p,f,16e,16p,e,d,a#5,16p,d,16e,16p,f,16e,16p,e,d,4a5,p,16d,16e,f,16e,16p,e,d,e,d,p,32d,32p,16d,c#,16d,16p,e,4d,p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (58, 1, N'-Pop-', N'Christina Aguilera', N'What A Girl Wants', 963, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'WhatAGirl:d=16,o=6,b=35:32p,32d,32d,f,8f,32d,32d,f,8f,32d,32d,32f,g,f,d,a#5,c,d,d.,32a#5,32a#5,d#,d#,d#,d#,32c#,32c,a#5,8c.,8a#.5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (59, 1, N'-Holiday-Christmas-', N'Christmas', N'Amazing Grace', 2322, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'AmazingGrace:d=8,o=5,b=80:c,f,2f,a,g,f,2a,a,g,2f,4d,2c,c,f,2f,a,g,f,2a,g,a,2c.6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (60, 1, N'-Holiday-Christmas-', N'Christmas', N'Greensleeves', 1762, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Greensleeves:d=4,o=5,b=140:32p,g,2a#,c6,d.6,8d#6,d6,2c6,a,f.,8g,a,2a#,g,g.,8f,g,2a,f,2d,g,2a#,c6,d.6,8e6,d6,2c6,a,f.,8g,a,a#.,8a,g,f#.,8e,f#,2g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (61, 1, N'-Holiday-Christmas-', N'Christmas', N'Jingle Bells', 4404, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'JingleBells:d=8,o=5,b=112:32p,a,a,4a,a,a,4a,a,c6,f.,16g,2a,a#,a#,a#.,16a#,a#,a,a.,16a,a,g,g,a,4g,4c6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (62, 1, N'-Holiday-Christmas-', N'Christmas', N'Little Town Of Bethlehem', 2642, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Bethlehem:d=4,o=5,b=160:c,f,f,f,g,8a,8g,8a,8a#,c6,a,a#,8a,8f,g,g,2f.,c,f,f,f,g,8a,8g,8a,8a#,c6,a,a#,8a,8f,g,g,2f.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (63, 1, N'-Holiday-Christmas-', N'Christmas', N'Oh Come All Ye Faithful', 2802, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'ComeFaithful:d=4,o=5,b=160:g,2g,d,g,2a,2d,b,a,b,c6,2b,a,g,2g,f#,e,f#,g,a,b,2f#,e.,8d,2d.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (64, 1, N'-Holiday-Christmas-', N'Christmas', N'Rudolph The Red Nose Reindeer', 7763, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Rudolph:d=16,o=6,b=100:32p,g#5,8a#5,g#5,8f5,8c#,8a#5,4g#.5,g#5,a#5,g#5,a#5,8g#5,8c#,2c,f#5,8g#5,f#5,8d#5,8c,8a#5,4g#.5,g#5,a#5,g#5,a#5,8g#5,8a#5,2f5,g#5,8a#5,a#5,8f5,8c#,8a#5,4g#.5,g#5,a#5,g#5,a#5,8g#5,8c#,2c,f#5,8g#5,f#5,8d#5,8c,8a#5,4g#.5,g#5,a#5,g#5,a#5,8g#5,8d#,2c#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (65, 1, N'-Holiday-Christmas-', N'Christmas', N'Silent Night', 3283, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'SilentNight:d=4,o=5,b=160:g.,8a,g,2e.,g.,8a,g,2e.,2d6,d6,2b.,2c6,c6,2g.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (66, 1, N'-Oldies-', N'Chuck Berry', N'Johnny B Good', 960, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'JBGood:d=4,o=6,b=450:32p,1f,f.,f.,f.,f.,f.,d#.,d.,d#.,2d.,1f.,2f.,2f,f.,f.,f.,2f,d#.,d.,d#.,1d,1a#.5,1d#,2d#,2d#.,1d#,d#.,c#.,16c#,1d#,c#.,1d#.,1f,f.,f.,f.,2f.,d#.,d.,d#.,2d.,1a#5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (67, 1, N'-Musical-', N'Cinderella', N'Bibbidy-Bobbidy-Boo', 1203, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Bibbidy:d=8,o=4,b=160:32p,f6,f6,f6,4g6,f6,d6,d6,d6,4d#6,d6,a#5,a#5,a#5,a#5,a5,g5,4f5,2p,f5,g5,a5,a#5,c6,d6,d#6,d6,c6,f6,4p,f6,g6,f6,d#6,d6,c6,4a#5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (68, 1, N'-80s-', N'Cinderella', N'Don''t Know What You Got Till It''s Gone', 1123, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'DontKnow:d=4,o=5,b=40:16a#.,16a#.,16a#.,32a#.,a,32d.6,16c.6,16a#.,2g,16a#.,16a#.,16a#.,32a#.,8a.,32g.,16a#.,16c.6,8d.6,8c.6,16a#.,g.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (69, 1, N'-Oldies-', N'Coasters', N'Yakety Yak', 640, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Yakety:d=32,o=5,b=200:8c#.6,p,8c#.6,p,8c#.6,p,8c#.6,p,8c#.6,p,8c#.6,p,8g#.,p,4c#.6,1p,8c#.6,p,8c#.6,p,8c#.6,p,8c#.6,p,8c#.6,p,8c#.6,p,8c#.6,p,4a#.,1p,8c#.6,p,8c#.6,p,8c#.6,p,8c#.6,p,8c#.6,p,8c#.6,p,8c#.6,p,4c.6,1p,8c#.6,p,8c#.6,p,16c#.6,p,16c#.6,p,8c#.6,p,8c#.6,p,8c#.6,p,8c#.6,p,8c#.6,8p,16c#.6,p,16c#.6,p,8c#.6,p,8c#.6,8p,8c#.6,p,8c#.6,p,8c#.6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (70, 1, N'-Rock-', N'Coldplay', N'Yellow', 1760, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Yellow:d=4,o=5,b=225:32p,e.,e.,d.,1e.,e.,e.,d.,2e.,2g.,1d.,d.,d.,c.,2d.,g.,1c.,8a.4,8c.,8a.4,2c.,8c.,1a4')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (71, 1, N'-Rock-', N'Collective Soul', N'Shine', 1360, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Shine:d=32,o=6,b=35:p,f,g,16g,16g.,16f,d#,d#,a#5,8d#,f,g,g,g,16g,16a#.,d#,16d#,16f,16g,16f,8d#.,d#,16f,16g,g,f,8d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (72, 1, N'-Dance-', N'Corona', N'Rhythm Of The Night', 1763, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'CoronaRhythm:d=8,o=5,b=180:32p,c,p,f,p,e,p,f,a#,p,a,p,g,p,a,f,p,c,p,f,p,e,p,f,a#,p,a,p,g,p,a,f,2p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (73, 1, N'-Rock-', N'Count Basie', N'Low Rider', 1200, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'LowRider:d=16,o=6,b=63:b5,b5,b5,b5,b5,8c,4d,g5,b5,8c,8b5,2g5,p,f5,f5,f5,f5,f5,8p,f5,f5,f5,f5,f5,8p,f5,2g5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (74, 1, N'-Oldies-', N'Credence Clearwater Revival', N'Bad Moon Rising', 640, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'BadMoon:d=32,o=5,b=31:p,g.,16g.,d#.,f.,d#.,16f,16g,8d#.,g.,16g.,d#.,16f.,g.,d#,8d#.,g#.,g#.,g#.,f,8d#,d#,16f,16g,16g,g.,f,8d#.,8f,f,16f,16d#,16d#,d#,4d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (75, 1, N'-Oldies', N'Credence Clearwater Revival', N'Heard It Through The Grapevine', 0, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Grapevine:d=4,o=6,b=160:32p,2g#5,8g#.5,b.5,2g#.5,8g#.5,8g#.5,8b.5,a#.5,2a#5,a#.5,b.5,1g#5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (76, 1, N'-Rock-', N'Creed', N'Higher', 2000, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Higher:d=16,o=5,b=40:32p,a#,c6,32a#,8g.,a#,32g#,g.,32g#,g#.,32g,8d#.,g#,32g,8g#,32g#,32g#,32g,8g.,a#,32g#,8g.,32g#,4g#,d#6,d#6,8d6,8f6,8d#6,8c6,4a#,d#6,d#6,8d6,8f6,8d#6,4c6,d#6,d#6,8d6,8f6,8d#6,8c6,a#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (77, 1, N'-Rock-', N'Creed', N'With Arms Wide Open', 3040, CAST(N'2001-10-23T00:00:00.000' AS DateTime), N'WithArms:d=16,o=5,b=35:32p,32d#,d#.,32c#,c,8c#.,c#,c#.,32c,c,8c#.,c#,c,8c,c#,8c#,d#,d#,c#,c,8c#,8c#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (78, 1, N'-Oldies-', N'Crosby Stills Nash & Young', N'Our House', 560, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'OurHouse:d=4,o=5,b=160:32p,2b,p,2b,p,8b,8b,8e6,8e6,8e6,8e6,8e6,8d6,c6,2b,p,b,c6,d6,c6,8b,2b,p,8p,b,c6,8d6,c6,b,8p,8b,8a,g,p,8b,c6,8p,8d6,c6,8p,b,b,a,8g,d,8p,2e')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (79, 1, N'-Dance-', N'Culture Beat', N'Mr Vain', 1364, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'MrVain:d=8,o=5,b=180:32p,4a,e6,a,p,d6,f,p,f,c6,f,c6,g,d6,g,d6,a,p,a,p,e6,a,e6,a,p,4e6,4a,d6,f,p,f,c6,f,h,g,d6,g,d6,a,p,a,e6,a,e6,p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (80, 1, N'-Oldies-', N'Deep Purple', N'Smoke On The Water', 1120, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Smoke:d=4,o=5,b=125:32p,c,d#,f.,c,d#,8f#,f,p,c,d#,f.,d#,c,2p,8p,c,d#,f.,c,d#,8f#,f,p,c,d#,f.,d#,c,p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (81, 1, N'-RB-', N'Destiny''s Child', N'Jumpin Jumpin', 2001, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Jumpin:d=8,o=5,b=125:32p,c#6,c#6,c#6,c#6,4g#,g#,a,4p,g#,a,p,b,p,g#,g#,g#,g#,g#,g#,4g#,4a,2p,g#,g#,g#,c#6,c#6,c#6,c#6,g#,g#,g#,4a,4p,g#,4a,4b,g#,g#,g#,g#,g#,p,4g#,4g#,4f#,4e,4d#,4c#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (82, 1, N'-RB-', N'Destiny''s Child', N'Say My Name', 1681, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'SayMyName:d=16,o=6,b=70:32p,g,g,8g,f,d#,4d#,a#5,c,d#,c,8f,c,p,a#5,c,d#,c,8f,c,p,a#5,c,d#,c,8d#,g,g,a#,g,f,d#,4d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (83, 1, N'-Pop-', N'Dido', N'Here With Me', 1443, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'HereWith:d=4,o=5,b=56:32p,16c,16d.,16c.,8d.,16c.,2d#,32d.,16c.,16d.,16c.,8d,8d#.,2c,16c.,16d#.,16f.,16g.,16d#.,f.,16d#.,8f,32g.,16c.,f.,16d#.,2g,16f,16d#,16d.,8d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (84, 1, N'-Pop-', N'Dido', N'Thank You', 2323, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'ThankYou:d=16,o=5,b=80:32p,e,8e,8e,e,8f,8d,8c,2d,b4,8c,8e,8b4,8e,8a.4,c,e,8e,8e,8f,8d,8c,8e,4d.,g4,8g,8a,8e,d,4e,g4,g,8g,8g,8a,8e,d,c,8e,c,4d,c,d,8e,f,8e,e,d,8e.,8a4,e,4d,32e,32d.,8c,c,e,8e,c,4d,e,8e,8c,d,c.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (85, 1, N'-Rock-', N'Dire Straits', N'Money For Nothing', 1200, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Money:d=32,o=6,b=45:p,16d#.,16d#.,d#.,c#.,d#.,f#.,16f#.,d#.,c#.,c#.,16b.5,g#.5,16g#.5,16g#.5,g#.5,8b5,16b.5,16c#.,16c#.,16b.5,16d#.,16d#.,d#.,c#.,d#.,d#.,d#.,g#.,c#.,d#.,c#.,b.5,g#.5,g#.5,16g#.5,8g#5,b.5,16g#.5,16f#.5,16g#.5,8g#.5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (86, 1, N'-Movie-Disney-', N'Disney', N'Bare Necessities', 2962, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Bare:d=8,o=4,b=200:32p,g5,p,a5,p,c6,4p,p,2e6,d6,p,e6,p,d6,4c6,p,c6,p,d6,4c6,p,d6,p,c6,p,d6,p,c6,4a5,p,4g5,4c6,p,c6,c6,p,e6,p,a6,4g6,p,4f6,4e6,4d6,4p,2e6,d6,p,g6,p,a6,p,g6,4p,p,4a6,4p,g6,p,a6,p,g6,4e6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (87, 1, N'-Disney-', N'Disney', N'It''s A Small World', 35623, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'SmallWorld:d=4,o=4,b=125:32p,g5,8p,8g5,b5,g5,a5,8p,8a5,2a5,a5,8p,8a5,c6,a5,b5,8p,8b5,2b5,b5,8p,8b5,d6,b5,c6,8p,8c6,c6,8b5,8a5,2d5,2f#5,1g5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (88, 1, N'-Oldies-', N'Doors', N'Light My Fire', 1200, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'LightMyFire:d=4,o=5,b=100:32p,8b,16g,16a,8b,8d6,8c6,8b,8a,8g,8a,16f,16a,8c6,8f6,16d6,16c6,16a#,16g,8g#,8g,8g#,16g,16a,8b,8c#6,16b,16a,16g,16f,8e,8f,1a,a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (89, 1, N'-Techno-', N'Eiffel 65', N'Blue', 4243, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Blue:d=2,o=5,b=500:32p,b,c6,e,g,c6,d6,g,b,1c6,e,g,e6,1f6,e6,d6,c6,e,g,c6,d6,g,b,1c6,e,g,e6,1f6,e6,d6,c6,e,g,c6,d6,g,b,1c6,e,g,e6,1f6,e6,d6,c6,e,g,c6,b,e,g,4a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (90, 1, N'-Rock-', N'Elton John', N'Candle In The World', 800, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Candle:d=32,o=5,b=40:a#.,b.,8c#6,c#.6,8c#6,a#.,c#.6,16c#.6,8c#6,a#.,b.,16c#.6,c#.6,16c#.6,d#.6,4f#,a#.,b,8c#.6,c#.6,c#.6,d#.6,8c#6,16b.,16a#.,16b.,16a#.,g#.,4g#,c#.6,16c#.6,d#.6,16d#.6,16d#.6,d#.6,16f.6,16f#.6,16f.6,d#.6,d#.6,d#.6,4d#6,a#.,a#.,a#.,8b,16c#.6,16a#.,g#.,8g#.,c#.,16d#.,16f#.,f#.,8g#,4f#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (91, 1, N'-Oldies-', N'Elvis Presley', N'In The Ghetto', 880, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'InTheGhetto:d=16,o=5,b=80:32p,g,g,8b,d6,8d6,p,d6,d6,8e6,d6,4d6,d6,c6,c6,c6,8c6,b,b,8b,8a,8b,a,g,8g,2b,4p,g,g,8g,2b,4p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (92, 1, N'-Rap-', N'Eminem', N'My Name Is', 1521, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'MyName:d=4,o=6,b=56:32f#.5,f#,32g#.5,g#,32b.5,b,16a.5,16g.,32f#.,8e,32f#.5,f#,32g#.5,g#,32b.5,b,16a.5,16g.,32f#.,32e.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (93, 1, N'-Rap-', N'Eminem', N'Stan', 2802, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'ThankYou:d=16,o=5,b=80:32p,e,8e,8e,e,8f,8d,8c,2d,b4,8c,8e,8b4,8e,8a.4,c,e,8e,8e,8f,8d,8c,8e,4d.,g4,8g,8a,8e,d,4e,g4,g,8g,8g,8a,8e,d,c,8e,c,4d,c,d,8e,f,8e,e,d,8e.,8a4,e,4d,32e,32d.,8c,c,e,8e,c,4d,e,8e,8c,d,c.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (94, 1, N'-Rap-', N'Eminem', N'The Real Slim Shady', 2161, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'SlimShady:d=16,o=5,b=100:32p,d,p,f,p,a,p,a#,p,d6,4p,a#,p,a,4p,32p,a#,p,32a,32a#,32a,8g,a,p,c#,p,d,p,f,p,a,p,a#,p,d6,4p,a#,p,a,4p,32p,a#,p,32a,32a#,32a,8g,a,p,c#,p,d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (95, 1, N'-Rap-', N'Eminem', N'The Way I Am', 2321, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'WayIAm:d=16,o=5,b=80:32p,a,c6,8e6,a,c6,8e6,a,c6,8f6,b,d6,8f6,g#,b,8d6,g#,b,8d6,g#,b,8e6,a,c6,8e6,e,a,8c6,e,a,8c6,e,a,8d6,g#,b,8d6,e,g#,8b,e,g#,8b,e,g#,8a,e,g#,8a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (96, 1, N'-Latin-', N'Enrique Iglesias', N'Bailamis', 1761, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Bailamos:d=16,o=5,b=100:32p,8d,8f,2a,4p,8p,a,a#,c6,8c6,8c6,8c6,8c6,p,8a#,8a,8g,2a,4p,8p,a,a#,a,g,4p,g,a,g,f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (97, 1, N'-Latin-', N'Enrique Iglesias', N'Rhythm Divine', 1041, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Rhythm:d=16,o=6,b=112:32p,8e5,8f5,8g5,p,2c,8p,p,c,c,c,8a#5,a5,4a#5,2p,8a#5,p,8a5,p,8g5,8a5,p,8g5,p,8f5,8f5,p,8e5,p,8d5,8c5,p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (98, 1, N'-Rock-Oldies-', N'Eric Clapton', N'Cocaine', 1601, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Cocaine:d=4,o=5,b=40:32a.,32a.,32g.,16a.,32e.,32a.,g.,16p,32a.,32a.,32g.,16a.,32e.,32a.,g.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (99, 1, N'-Rock-Oldies-', N'Eric Clapton', N'I Shot The Sheriff', 1760, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'ShotSheriff:d=16,o=5,b=45:8d#6,c#6,32b,c#6,4d#.6,g#,g#,b,b,c#6,b,d#6,g#,4g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (100, 1, N'-Pop-', N'Eric Clapton', N'Tears In Heaven', 1763, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Tears:d=8,o=5,b=112:32p,b,g,4d6,d6,2b,4p,c6,c6,b,a,g,b,2a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (101, 1, N'-Rock-', N'Everclear', N'I Will Buy You A New Life', 1280, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'NewLife:d=4,o=5,b=125:8c.6,8a#,16g#.,16g#.,8g#,16g#.,16f.,8a#.,2f,16g#.,8g#,16g#.,16f.,8g#.,16f.,2g#.,16g#.,8g#,16g#.,8f,f.,16g#.,g#,16f.,f,16d#.,8f,2d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (102, 1, N'-Rock-', N'Everlast', N'What It''s Like', 960, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'WhatItsLike:d=4,o=6,b=225:d#,d#,2c#,2a5,a5,a5,g#5,2f#5,2g#5,g#5,g#5,g#5,2a5,g#5,1f#.5,p,g#5,g#5,g#5,2g#5,2f#5,f#5,f#5,2f#5,2g#5,2g#5,g#5,g#5,g#5,1a#.5,p,2d#,c#,2a5,a5,2g#5,g#5,f#5,2g#5,2g#5,g#5,g#5,f#5,g#5,1a#.5,p,a5,2a5,2g#5,2f#5,f#5,2f#5,2g#5,2g#5,2g#5,d#5,2d#5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (103, 1, N'-Oldies-', N'Everly Brothers', N'Be Bop A Lula', 563, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Be-Bop-A-Lula:d=4,o=5,b=180:32p,2a,a,8a,8e,g,a,a,a,g,a,8p,8a,8a,8e,g,8a,8a,a,a,g,a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (104, 1, N'-Latin-', N'Evita', N'Don''t Cry For Me Argentina', 881, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Evita:d=4,o=5,b=70:8e.4,8e4,8e4,8e.4,8f4,8g4,8a4,g4,8p,8g4,8a4,8a4,8g4,c,g4,8f4,e.4,8p,8e4,8f4,8g4,8d4,d4,8d4,8e4,8f4,c4,16p,8c4,8d4,8c4,8e4,g4,16p,8g4,8g4,8a4,c,16p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (105, 1, N'-Country-', N'Faith Hill', N'Breathe', 1282, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Breathe:d=4,o=5,b=80:16b,16a,16a,16g,8g,16p,16d,16b,16a,16a,16g,8g,8p,16b,16a,16a,16g,8g,16e,8g,16p,16g,8e,16p,8d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (106, 1, N'-80s-', N'Falco', N'Rock Me Amadeus', 1603, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Amadeus:d=4,o=5,b=355:a#,a#,a#,2f6,a#,a#,2d#6,a#,a#,2c#6,a#,2c6,a#,a#,a#,2f6,a#,a#,2d#6,a#,a#,2c#6,a#,2c6,a#,a#,a#,2f6,a#,a#,2d#6,a#,a#,2c#6,a#,2c6,1a#,p,p,a#,a#,a#,a#,a#,a#,f6,1f6,2a#,a#,f6,f6,a#,a#,a#,a#,a#,a#,f6,1f6,2a#,a#,f6,f6,a#,a#,a#,a#,a#,a#,f6,1f6,2g#,2g#,g#,g#,g#,g#,8a#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (107, 1, N'-Rock-', N'Fastball', N'Out Of My Head', 640, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'MyHead:d=4,o=5,b=40:32f,32g,32a,8c.6,32a,32g,32f,32e,16e,32e,16e,32c6,c6,16c6,16a#,16a,16f,32c,16f,8f,32c,32d,16f,32f,16f,32a,g,32f,32g,32a,8c.6,32a,32g,32f,32e,16e,32e,16e,32c6,c6,16d6,16e6,16f6,16d6,32c6,16d6,16a,32g,16f,32f,16d,16f,16d.,16f,16a,16g,32f,f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (108, 1, N'-Rock-', N'Fastball', N'The Way', 1120, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'TheWay:d=4,o=6,b=160:8d.5,d,d,8d.,1d,8d.,d,8c.,8a#.5,a5,1g5,8d.5,d.,8d.,2d,8d#.,d.,a.5,a#.5,c.,1d,8g.5,g,g,g.,g#,g.,f.,d#.,d.,d.,1c,8c.,d,d,8d.,d,8c.,8a#.5,a5,a5,8a#.5,c,a#5,8a.5,1g5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (109, 1, N'-Rock-', N'Foo Fighters', N'Big Me', 960, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'BigMe:d=4,o=5,b=45:32c#.6,16d#.6,32f.6,16d#.6,16c#.6,8d#6,32f.6,16d#.6,8d#.6,32c#.6,16f6,16d#.6,16c#.6,32c#.6,32d#.6,c#6,16c.6,8c6,32c.6,32c#.6,16d#.6,8c#6,32c#.6,32f.6,16d#.6,8c#6,16c#.6,f6,16c.6,8c6,32c.6,16c#6,16d#.6,8c#.6,32c#.6,32c#.6,16d#.6,8c#6,32a#.,16a#.,g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (110, 1, N'-Rock-', N'Foo Fighters', N'Learn To Fly', 1120, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'LearnToFly:d=4,o=5,b=125:8d6,8d6,8d6,8d6,c6,8b,a,2g,p,8d6,8d6,8d6,8d6,c6,8b,a,2g,p,8p,8a#,16a,8p,16p,a,8p,8g,a#,8p,8a,8g,8g,8a,1g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (111, 1, N'-Rock-', N'Foo Fighters', N'Monkey Wrench', 1840, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Monkey:d=4,o=6,b=45:32g,32g,32f,32f,32e,32e,32d,32d,32f,32f,32e,32e,32d,32d,32c,32c,32d,32d,32c,32c,32a5,32a5,32c,32c,32d,32d,32c,32c,32d,32d,32e,32d,32g,32g,32f,32f,32e,32e,32d,32d,32f,32f,32e,32e,32d,32d,32c,32c,32d,32d,32c,32c,32a5,32a5,32c,32c,32d,32d,32c,32c,32d,32d,32e,32d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (112, 1, N'-80s-', N'Fugees', N'Killing Me Softly', 1440, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'KillSoft:d=4,o=5,b=70:16c6,16c6,16c6,8c6,16a,16e,8g,f,16p,16b,16b,16b,8b,16g,16d,8e,8p,16p,16e,16e,16e,8e,16a,16c6,8b,16a,8p,16d6,16d6,16d6,8c6,b,16g,8b,a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (113, 1, N'-Rock-Theme-Movie-', N'Garbage', N'The World Is Not Enough', 2321, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'NotEnough:d=4,o=6,b=225:32p,1g#,f#.,1c#.,f#.5,g#.5,a.5,a.,g#.,f#.,c#.,1a,g#.,1d,8c#.,8b.5,1c#.,1g#,f#.,1c#.,f#.,g#.,a.,a.,g#.,f#.,c#.,1a,g#.,1d,8c#.,8b.5,1c#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (114, 1, N'-Rock-', N'Garbage', N'When I Grow Up', 720, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'GrowUp:d=4,o=6,b=63:32p,8b5,16c#,8b5,8f#.5,8b5,16c#,8b5,8f#.5,16b5,8c#,8d#.,16e,8d#,16c#,b.5,8b5,e,d#,b5,8b5,8b5,8c#.,d#.,8b5,e,d#,b5,8b5,8b5,8c#.,d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (115, 1, N'-Pop-', N'Goo Goo Dolls', N'Iris', 1842, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Iris:d=4,o=6,b=56:32a#5,8a#5,32a#.,8a#,32a#.,8a#,8g#,8g,16d#.,f,8a#5,16a#.5,16a#.,16a#.,8a#,16a#.,16g#.,16g.,2d#,16a#.5,32a#.5,8a#,8a#,16a#,8a#,8g#,16g.,16a#.,8g#,16g.,d#,16d#,32f,16g.,8f,16d#,8f,8g,16d#.,d#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (116, 1, N'-Oldies-', N'Graham Nash', N'Chicago', 480, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Chicago:d=4,o=5,b=100:32p,8a,8c6,8d6,8e6,8d6,16c6,8d6,16p,8c6,8a,8c6,8d6,8e6,16d6,16c6,8a,p,8a,8e6,8d6,8d6,8d6,16e6,8d6,16p,8g,8b,8d6,8c6,8d6,16c6,8d6,8c6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (117, 1, N'-Rock-', N'Green Day', N'Basket Case', 1680, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'BasketCase:d=4,o=5,b=200:32p,g,16p,8f,8e,f,g,2p,b,c6,b,8a,g,g,2p,b,c6,b,8a,g,g,g,g,8a,8c6,b')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (118, 1, N'-Rock-', N'Green Day', N'Brain Stew', 720, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'BrainStew:d=4,o=5,b=40:16f,16d6,32a#,16c.6,16a#,16d6,16a#,a#,16a#,16d6,32f6,16g.6,16f6,32d6,32c6,16a#,a#,16f,16d6,32a#,c6,16a#,16d6,32g,a#,16a#,16d6,32f6,16g.6,16f6,32d6,32c6,16a#,a#,32a#,32c6,16a#,32a#,32c6,8a#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (119, 1, N'-Rock-', N'Green Day', N'Good Riddance', 1120, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'TimeOfLife:d=4,o=5,b=90:32p,8b,8b,16c6,8d6,8c6,8b,16b,8c6,8b,8b,16a,8b,p,8b,8b,16c6,8d6,8c6,8b,8c6,8b,8b,16a,8b,p,8g,8g,8e,8g,16a,8b,8a,8g,8e,8g,16e,8g,8b,8p,8g,8g,8e,8g,16a,a,8f#,16g,g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (120, 1, N'-Rock-', N'Green Day', N'Longview', 2480, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Longview:d=4,o=5,b=80:32p,32d#7,32d7,32c#7,32c7,32b6,32a#6,32a6,32g#6,32g6,32f#6,32f6,32a#,8d#6,8a#6,8g#6,16g6,32d#6,8c#6,8g#6,8g6,16c#6,32f6,8d#6,8a#6,8g#6,8g6,8d#7,8c#7,16c#7,32a#,8d#6,8a#6,8g#6,16g6,32d#6,8c#6,8g#6,8g6,16c#6,32f6,8d#6,8a#6,8g#6,8g6,8d#7,8c#7,8c7,8c#7')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (121, 1, N'-Rock-', N'Green Day', N'Nice Guys Finish Last', 720, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'NiceGuys:d=4,o=5,b=112:32p,8e6,8e6,16e6,8g#6,8b6,8p,8b6,8e6,8e6,16e6,8g#6,8b6,8p,8b6,8f#6,8f#6,16f#6,8g#6,8b6,8b6,8a6,8b6,e6,p,8b,8e6,8e6,16e6,8g#6,8b6,8p,8b6,8e6,8e6,16e6,8g#6,8b6,8p,8b6,8f#6,8f#6,16f#6,8g#6,8b6,8b6,8a6,8b6,e6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (122, 1, N'-Rock-', N'Green Day', N'Warning', 1520, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Warning:d=4,o=6,b=63:d,8d#.,8c,16c,8c,16c,16a#5,8a#5,8p,8a#5,d,8d#.,8c,16c,8c,16c,16a#5,16a#.5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (123, 1, N'-Rock-', N'Guess Who', N'American Woman', 641, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'AmericanWoman:d=4,o=5,b=100:32p,2e,p,16e,16f,2g,p,16g,16c,16d#,1e,16g,16a,2a#,2p,2e,p,16e,16f,2g,p,16g,16c,16d#,1e,16g,16a,2a#,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (124, 1, N'-Classical-', N'Handel', N'Messiah', 2083, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Messiah:d=4,o=6,b=100:a#,8p,8f,8g,16f,p,a#,16p,32p,8f,8g,8f,8p,16f,16f,8g,16f,8p,16p,16f,16f,8g,8f,8p,8f,8d#,8d,32c,16p,32p,8c,a#5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (125, 1, N'-Rock-', N'Harvey Danger', N'Flagpole Sitta', 720, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Flagpole:d=4,o=5,b=320:2d#,8d#.,2c,8c.,2d#,8d#.,2c,8c.,2d#,8d#.,2c,8c.,2d#,8d#.,d#.,2f.,1c#.,c#,2f,8f.,2f,8f.,f.,1f,1c#.,c#,2f,8f.,2f,8f.,2f,8d#.,2c#,1d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (126, 1, N'-Theme-TV-', N'Inner Circle', N'Bad Boys (Theme From Cops)', 2964, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'BadBoys:d=4,o=5,b=100:32p,8e,8e,8g,8e,8p,16e,16e,16e,16e,8g,8p,16g,16g,16g,16g,8g,16g,16a,16e.,32p,16e.,32p,16e.,32p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (127, 1, N'-Oldies-', N'Iron Butterfly', N'In-A-Gadda-Da-Vida', 1040, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Inagad:d=4,o=6,b=28:32p,16d#5,16d#5,32f#5,32f5,32c#5,16d#5,16a#5,16a5,16g#5,32f#5,16d#5,16d#5,32f#5,32f5,32c#5,16d#5,16a#5,16a5,16g#5,32f#5,16d#5,16d#5,32f#5,32f5,32c#5,16d#5,16a#5,16a5,16g#5,32f#5,16d#5,16d#5,32f#5,32f5,32c#5,16d#5,16a#5,16a5,16g#5,32f#5,16d#5,16d#5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (128, 1, N'-Rap-', N'Jay Z', N'Big Pimpin', 11866, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'BigPimpin:d=4,o=5,b=140:d,d,d,d,8p,8d6,8e6,8d6,16e6,32f6,8e6,32p,16d6,16c#6,8d6,c#,c#,c#,c#,8p,8b,8c#6,8d6,16e6,32f6,8e6,32p,16d6,16c#6,8d6,d,d,d,d,8p,8d6,8e6,8d6,16e6,32f6,8e6,32p,16d6,16c#6,d6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (129, 1, N'-Pop-', N'Jennifer Lopez', N'If You Had My Love', 803, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'IfYouHad:d=4,o=5,b=90:g,8a#,8g#,8g,8f,8d#,8f,g,8a#,8g#,8g,8f,8d#,8g,c,8f,2f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (130, 1, N'-Pop-', N'Jennifer Lopez', N'Waiting For Tonight', 961, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Waiting:d=4,o=5,b=125:8b4,8d,8e,8f#,2a.,8b,a,2b.,8d,8a.,8g.,8f#,8e.,8d.,8d,e.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (131, 1, N'-Rock-', N'Joan Osborne', N'What If God Was One Of Us', 1200, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'WhatIfGod:d=4,o=5,b=225:g.,a.,2a#.,2d.,d.,d#.,1f.,f.,g.,a.,2a#.,2d.,d.,d#.,1f.,g.,a.,2a#.,2d.,d.,d#.,1f.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (132, 1, N'-Oldies-', N'John Lennon', N'Give Peace A Chance', 720, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'GivePeace:d=4,o=5,b=90:32p,8e6,16p,8d6,16p,8c6,2d6,2g,p,8p,8g,8f6,16p,8e6,16p,8d6,2c6,p,8e6,16p,8d6,16p,8c6,2d6,2g,p,8p,8g,8f6,16p,8e6,16p,8d6,2c6,p,8e6,16p,8d6,16p,8c6,2d6,2g,p,8p,8g,8f6,16p,8e6,16p,8d6,2c6,p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (133, 1, N'-Country-', N'John Michael Montgomery', N'I Swear', 963, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'I swear:d=4,o=5,b=125:32p,8b,8a.,16f#,8e,p,8p,8f#,8g#,a,8a,8a,a,8c#,8d,2e,8p,8f#,8g#,2e')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (134, 1, N'-Oldies-', N'Johnny Nash', N'I Can See Clearly', 560, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Clearly:d=4,o=5,b=140:8f,8g,8a,8p,a#,8a,g,8p,8f,a,f,8c,2p,8f,8g,8a,16p,32p,a#,8p,8a#,8p,8a,8g,8p,8e,8f,8p,8g,16p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (135, 1, N'-Rock-80s-', N'Kiss', N'Rock And Roll All Night', 2240, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'RockAllNight:d=4,o=6,b=31:16f#,32e,32c#,32e,32c#,32e,16e,f#,16f#,32e,32c#,32e,32c#,32e,16e,16e,32f#,8e,16f#,16e,32c#,16f#,16e,16c#,32b5,16c#,8a.5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (136, 1, N'-Traditional-', N'Laurie London', N'He''s Got The Whole World In His Hands', 883, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'WholeWorld:d=4,o=6,b=140:8c,16c,16p,32p,8a5,c,p,8a5,32p,8f5,p,8c,32p,16d,8p,16p,8c,8p,8c,8c,32p,8a5,16c,8p,16p,16c,8p,16p,8a#5,32p,16g5,8p,16p,f5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (137, 1, N'-Oldies-', N'Led Zepplin', N'Stairway To Heaven', 1200, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Stairway:d=4,o=5,b=50:32p,16a#,16c6,8c#6,16c6,16a#,8c.6,32a#,32c6,8c#6,16d#6,16c#6,16c6,16a#,16c#6,16d#6,8f6,16d#6,16c#6,16c6,16a#,16a#,32g#,16g#,16a#,a#,16c#6,16f6,d#6,8d#6,16c#6,16c6,16c#6,16a#,16a#,16c6,16c#6,16d#6,16f6,16d#6,16d#6,16c#6,16c6,16g#,16g#,16a#,8a#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (138, 1, N'-Rock-', N'Len', N'Steal My Sunshine', 960, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'StealSun:d=4,o=5,b=50:32f,32f,16f,32f,16f,32f,8f,16c,16c,16c,16d,32c,16c,16d,c,16f,16f,16f,16f,16f,16f,16c,c.,16f,16f,32f,16f,16f,16f.,32c,8c,32c,16d,32c,16c,32d,c,16f,16f,16f,16f,16f,16f,16c,32c.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (139, 1, N'-Rock-', N'Lenny Kravitz', N'Are You Gonna Go My Way', 1600, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'GoMyWay:d=4,o=6,b=63:16a#.5,32g#5,16f5,16c5,16d#5,8f.5,32p,16a#.5,32g#5,16f5,16c5,16d#5,8f.5,16p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (140, 1, N'-Musical-', N'Les Miserables', N'Castle On A Cloud', 1203, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'CastleCloud:d=4,o=5,b=70:32p,8a,16b,16c6,8b,8a,8a,8g#,a,p,8a,16b,16c6,8b,8a,8g,8f,e,p,8d,16e,16f,8e,8a,8b,8c6,a,p,8d,16e,16f,8e,8d,8c,8b4,a.4')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (141, 1, N'-Musical-', N'Les Miserables', N'Do You Hear The People Sing', 1283, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'PeopleSing:d=4,o=5,b=140:32p,8e.6,16d6,8c.6,16d6,8e.6,16f6,g6,16e.6,16d.6,16c.6,8b.,16a,8b.,16c6,g,16a.,16g.,16f.,8e.,16g,8c.6,16e6,8d.6,16c#6,8d.6,16a,8c.6,16b,8b.,16c6,d6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (142, 1, N'-Rock-', N'Limp Bizkit - George Michael', N'Faith', 2001, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Faith:d=4,o=5,b=100:32p,16g,16g,16a,16c6,16c6,16a,8e6,2p,8e6,8d6,8c6,8d6,16e6,8d6,16c6,8c6,8p,8e6,8d6,8c6,8d6,16e6,8d6,16c6,8c6,8p,16c6,16a,16c6,16a,8c6,8c6,16a,8g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (143, 1, N'-Theme-Movie-', N'Lion King', N'Hakuna Matata', 3446, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Hakuna:d=4,o=5,b=225:8c6,8d#6,p,8d#6,8p,8d#6,8d6,8p,2c6,2p,a,8c6,8d#6,8p,8d#6,8p,d#6,1c6,p,8p,8c6,8d#6,p,8d#6,8p,8d#6,8d6,8p,1c6,8p,a,8p,c6,8p,d#6,8p,d6,8p,1d6,2p,8e6,8g6,p,8g6,p,8a6,p,2a6,2p,a6,p,g6,8p,8d#6,8p,8d6,c6,1d6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (144, 1, N'-Disney-Movie-', N'Little Mermaid', N'Under The Sea', 3520, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'UnderSea:d=4,o=4,b=200:32p,8e6,8p,8d6,8c6,8p,1a5,8p,8d6,8p,8d6,8c6,8p,1e6,8p,8e6,8p,8d6,8c6,8p,8c6,f5,8e6,8p,8d6,8c6,8p,8b5,g5,8e6,8p,8d6,8c6,8p,2e6,p,8p,8e6,8p,8d6,8c6,8p,8a5,8c6,8p,8c6,8p,8a5,2d6,8p,8d6,8p,8c6,8d6,8p,8e6,8e6,8p,8d6,8p,8d6,c6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (145, 1, N'-Musical-', N'Liza Minelli', N'Cabaret', 1123, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Cabaret:d=4,o=5,b=200:32p,d,2e,g,b,2d6,d#6,e6,d6,b,1d6,p,e6,2d6,b,2d6,2e6,1b,e6,2g6,e6,2g6,2e6,f#6,2d6,1b,p,b,2d6,b,2d6,2e,1g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (146, 1, N'-Pop-', N'Lou Bega', N'Mambo Number 5', 1360, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Mambo5:d=4,o=5,b=285:8b.,b.,8b.,b.,8b.,2c#6,2b,b.,2c#6,1b,8b.,b.,8b.,b.,8b.,2c#6,2b,b.,2c#6,1b,8b.,e.6,8e.6,d#.6,8d#.6,2c#6,2b,b.,2c#6,1b,8b.,e.6,8e.6,d#.6,8d#.6,2c#6,2b,b.,2c#6,1b')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (147, 1, N'-Oldies-', N'Lovin Spoonful', N'Summer In The City', 560, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Summer:d=4,o=6,b=250:e.,2c#.,8b.5,8c#.,8c#.,8b.5,8c#.,2g#5,8b.5,8c#.,8c#.,8b.5,c#.,8c#.,8b.5,8c#.,8c#.,e.,8c#.,2g#.5,e.,2c#.,8b.5,8c#.,8c#.,8b.5,8c#.,2g#5,8b.5,8c#.,8c#.,8b.5,c#.,8c#.,8b.5,8c#.,8c#.,e.,8c#.,2g#5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (148, 1, N'-Oldies-', N'Lynyrd Skynyrd', N'Sweet Home Alabama', 1284, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Alabama:d=4,o=6,b=100:16f,8d#.,d#,8d#,16c#,8c#.,a#.5,p,16f,8d#.,8d#,8c#,8c#,16d#,c#.,p,16f,8d#.,8d#,8c#,8c#,16a#5,8c#.,a#.5,p,16f,8d#.,8d#,8c#,8c#,16d#,8c#.,16c#,32a#.5,16c#,8c#,a#5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (149, 1, N'-Pop-', N'Macy Gray', N'I Try', 804, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'ITry:d=16,o=5,b=80:32p,g,a,c6,a,8c6,a,p,g,p,8c6,4p,g,a,c6,a,8c6,a,p,g,p,8d6,8c6,8p,g,a,c6,a,8c6,8a,p,e6,p,8c6,8p.,8g,8f6,e6,8c6,32g,32p,g,8f,8e,8c6,1p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (150, 1, N'-Pop-', N'Madonna', N'Beautiful Stranger', 1123, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Beautiful:d=4,o=6,b=45:32e.,32d.,32c.,d,32c.,32d.,16d.,32c.,32d.,32d.,32e.,16d.,a5,32e.,32d.,32c.,16d.,16a.5,a5,32e.,32d.,32c.,16d.,16e.,16e.,d,32d.,32f#.,16a.,32g.,32f#.,32g.,16f#.,d,32d.,32f#.,16a.,32g.,32f#.,32g.,16f#.,32d.,32e.,32d.,32c.,d,32e.,32e.,32e.,16e.,32d.,32c.,32d.,32d.,32e.,16d.,a5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (151, 1, N'-Latin-Pop-', N'Marc Anthony', N'You Sang To Me', 1282, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'YouSang:d=4,o=5,b=80:16g,16a,16b,8b,8b,8b,8c6,16p,16b,8b,16a,16a,16g,16a,16b,8b,2p,16g,16a,8b,8b,8b,8d6,8c6,8b,8a,8g,8a,16b,16b,2p,16e,16d6,8d6,8d6,8c6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (152, 1, N'-Rock-', N'Marcy Playground', N'Sex And Candy', 880, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'SexCandy:d=4,o=5,b=40:16c,16d#,16d#,32d#,16f,16d.,32d,16d,16d.,32e,32d,c,16c,16d#,16d#,32d#,16f,d,16c6,16a#,16g,32f,16d#.,8d#,8f,32g,16f.,32d#,f,16c6,16a#,16g,32f,16d#.,8d#,8f,32g,16f.,32d#,f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (153, 1, N'-Pop-', N'Mariah Carey', N'Hero', 1363, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Hero:d=4,o=6,b=31:16a#5,32d#,16f.,8d#.,32a#5,32d#,16f,32f,16f,16g,16f,8d#.,32a#5,32d#,16f,32f,16f,32d#,8d#.,32d,32d#,16f,16c.,8a#.5,16a#5,32d#,16f.,32f,16f,8d#.,32a#5,32d#,16f,32f,16f,32g,8g#.,32a#5,32d#,16g#,32f#,16f#,32f,8d#.,32d#,32d#,16f,f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (154, 1, N'-Rock-', N'Marilyn Manson', N'Beautiful People', 2563, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Beautiful:d=4,o=5,b=355:8d#.,a.,d#,a.,2d#.,8d#.,a.,d#,a.,2d#.,8d#.,f#.,2d#.,8d#.,a.,d#,a.,2d#.,8d#.,a.,d#,a.,2d#.,8d#.,f#.,2d#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (155, 1, N'-Disney-', N'Mary Poppins', N'Chim Chim Cheree', 1202, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'ChimCheree:d=4,o=6,b=200:8a5,8p,8e,8e,8e,8p,8e,8p,8e,8e,8e,8p,8e,8p,f,8p,8e,2d,p,d,e,d,c,d,c,b5,a#5,b5,2e,p,8a5,8p,8e,8e,8e,8p,8e,8p,8e,8e,8e,8p,8e,8p,f,8p,8e,2d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (156, 1, N'-Disney-', N'Mary Poppins', N'Spoonful of Sugar', 964, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Spoonful:d=4,o=5,b=112:32p,8a5,8a#5,4b5,8b5,16p,16a#5,16b5,8f6,16p,8e6,8d6,16e6,16e6,16e6,8p,16p,8g5,4e6,8p,8c6,16b5,16b5,16b5,8p,16p,8a#5,4b5,8p,8g5,16a5,16a5,16a5,8p,16p,8g#5,4a5,8a5,8a#5,4b5,8b5,16p,16a#5,16b5,8f6,16p,8e6,8d6,8e6,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (157, 1, N'-Rock-', N'Matchbox 20', N'If You''re Gone', 1763, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'IfGone:d=4,o=6,b=56:32p,16d,16d,2d,32p,16d,16d,16d,8f,16a#5,16a#5,8a#5,8c.,32p,16d,16d,16c,16a#5,16a#5,16g5,16c,16a#5,16a#5,32a5,32g5,8f5,16f5,8c,16a#5,16c,a#5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (158, 1, N'-Rock-', N'Matchbox 20', N'Push', 725, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Push:d=4,o=6,b=450:32p,2g5,2d,2b5,2a5,a5,g5,a5,g5,2a5,2a5,g5,1a.5,d5,d5,2a5,2e,2e,2d.,d5,2b5,2b5,2b5,2a5,a5,2b.5,g5,1g.5,d5,d5,d5,2a5,2e,2e,2d.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (159, 1, N'-80s-', N'Men At Work', N'Land Down Under', 2080, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'DownUnder:d=4,o=5,b=70:32g#.,32g#.,16g#.,32g#.,32g#.,16b.,16b.,16a.,2g#,32e.,32e.,32e.,16e.,8g#,16f#.,32f#.,16g#.,8f#,2e,32g#.,32g#.,32g#.,16g#.,16b.,b.,32b.,8a,32b.,8a,g#.,32b.,16b.,32b.,8b,16f#.,16f#.,32g#.,8f#,e.,32e.,32g#.,e,32g#.,32g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (160, 1, N'-Oldies-', N'Monkees', N'Daydream Believer', 1200, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Daydream:d=4,o=5,b=45:16a#.,8g#.,16c.6,32g#.,a#,32g#.,32a#.,16c.6,16d#.6,16c.6,16g#.,c#,32d#.6,16d#.6,32d#.6,8d#6,16f.6,8g#.,32a#.,16c.6,8a#.,32c.6,16d.6,d#6,8g#.,16d#.,32c.6,a#,32g#.,32a#.,16c.6,16d#.6,16c.6,16g#.,c#,32d#.6,16d#.6,32d#.6,16d#.6,8f6,16g#.,16g#.,16g.,16a#.,g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (161, 1, N'-Oldies-', N'Monkees', N'I''m A Believer', 1280, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Believer:d=4,o=6,b=40:32g#5,32g#5,32g#5,16c,d#,32d#,16f,32d#,32f,16f,d#,32g#5,32g#5,16c,d#,32d#,16f,32d#,16f,d#,32g#5,16c.,16d#,8d#.,16c#.,16f.,16f,32f,16d#.,16d#,32d#,16d#,16c#.,16c#,16a#5,8a#5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (162, 1, N'-Oldies-Theme-TV-Movie-', N'Monkees', N'Theme Song', 2722, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Monkees:d=4,o=5,b=45:32f.6,16f6,32d#6,32c#.6,16f6,8f.6,32g#,32c#.6,32c#6,32c#.6,32c#6,32d#.6,32c#6,32d#.6,f6,32g#,16c#6,16c#6,32d#.6,16c#6,16f6,8c#.6,32g#,16c#6,32c#.6,32c#6,32d#.6,16d#6,a#,32g6,32g.6,16g6,32f6,32d#.6,16g6,8g.6,32d#.6,32d#6,32d#.6,32d#6,32f.6,32d#6,32f.6,g6,16d#6,32d#.6,16f6,32d#6,32f.6,16g6,8d#.6,32a#,16d#6,16d#6,32f.6,32d#6,32f.6,c6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (163, 1, N'-Rock-80s-', N'Musical Youth', N'Pass The Dutchie', 1760, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'PassDutchie:d=4,o=4,b=140:32p,e5,8p,8e5,8e5,8e5,8e5,8e5,8d5,8p,8d5,8p,d5,p,e5,8p,8e5,8e5,8e5,8e5,8e5,8d5,8p,8d5,8p,8d5,8d5,8c5,8d5,8a5,8a5,8a5,8a5,8a5,8a5,8g5,8e5,8g5,8p,8f5,8p,d5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (164, 1, N'-Oldies-', N'Nazareth', N'Hair Of The Dog', 720, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'DogHair:d=4,o=5,b=50:8a#,32a#.,32a#.,32c#.6,32f.6,a#6,32c#.7,32a#.6,32g#.6,32a#.6,8a#,32a#.,32a#.,32c#.6,32f.6,a#6,32c#.7,32a#.6,32g#.6,32a#.6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (165, 1, N'-80s-', N'Nena', N'99 Luft Balloons', 1200, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'99Luft:d=4,o=6,b=160:32p,d,8e,c.,e,d,8c,a5.,8p,8a5,8f,f,f,f.,8f,e,d,c.,d,8e,c,e.,d,8c,a5.,8p,8a5,f,f,f,f,8f,e,d.,8c,8d,e,c,e.,d,8c,a5.,8p,8a5,c,8a5,c,f,f,e,d.,8c,d,e,c,e.,d,8c,a5.,8p,8f,f,8f,f,f,f,e,2d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (166, 1, N'-Oldies-', N'New Christy Minstrels', N'This Land Is Your Land', 560, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'ThisLand:d=4,o=5,b=180:16c,8p,16p,8d,8p,16e,8p,16p,f,16p,32p,2f,p,8c,8p,8c,8p,16d,8p,16p,e,16p,32p,2e,p,8c,8c,16c,8p,16p,8c,8p,d,16p,32p,2d,p,8c,8c,8c,8p,16d,8p,16p,e,16p,32p,e,8p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (167, 1, N'-Holiday-NewYear-', N'New Year', N'Auld Lang Syne', 1844, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'AuldSyne:d=4,o=5,b=125:a4,d.,8d,d,f#,e.,8d,e, 8f#,8e,d.,8d,f#,a,2b.,b,a.,8f#,f#,d,e.,8d,e,8f#, 8e,d.,8b4,b4,a4,2d,16p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (168, 1, N'-Pop-', N'Nine Days', N'Absolutely - Story Of A Girl', 803, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Absolutely:d=4,o=5,b=70:16d#.6,c6,32g#.,32a#.,32c.6,32a#.,32g#.,g#,32d#.6,32d#.6,32d#.6,32d#.6,32d#.6,32d#.6,16f.6,32d#.6,16d#.6,d#.6,32a#.,32c.6,16d#.6,16d#.6,16c.6,16d#.6,16d#.6,8f6,32d#.6,8d#.6,32g#.,32a#.,32c.6,32a#.,32g#.,32a#.,c6,16c.6,8g#,g#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (169, 1, N'-Rock-', N'Nirvana', N'Come As You Are', 2240, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'ComeAs:d=4,o=6,b=40:32f.5,32f#.5,16g.5,32a#.5,32g.5,32a#.5,32g.5,32g.5,32f#.5,32f.5,32c.,32f.5,16f.5,32c.,32f.5,32f#.5,16g.5,32a#.5,32g.5,32a#.5,32g.5,32g.5,32f#.5,32f.5,32c.,32f.5,16f.5,32c.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (170, 1, N'-Rock-', N'Nirvana', N'Teen Spirit', 2960, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'TeenSpirit:d=4,o=6,b=70:32p,32c#.,16e.,16f#.,8a.5,16f#.,16e.,16c#.,32d.,16c#.,8b5,16a.5,32b.5,16c#.,32b.5,32a.5,8g#5,32a.5,8g#5,32a.5,8g#5,32a.5,16g#.5,32a.5,32g#.5,32g#.5,16f#.5,32a.5,8g#5,32a.5,8g#5,32a.5,8g#5,32a.5,32g#.5,32g#.5,16f#.5,32a.5,8g#5,32a.5,8g#5,32a.5,16g#.5,32a.5,32g#.5,32g#.5,16f#.5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (171, 1, N'-Pop-', N'No Doubt', N'Don''t Speak', 1283, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'DontSpeak:d=4,o=5,b=28:16f#,16a.,32c#,16d,32f#,16g#,32f#,16a,8g#,32c#,32f.,32g#.,32g#,32a,16g#,16a.,16c#,32f,16g#,32f,8f#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (172, 1, N'-Oldies-', N'Nylons', N'Lion Sleeps Tonight', 720, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'LionSleeps:d=4,o=6,b=63:32p,8a5,16b5,8c#,8b5,16c#,8d,16c#,8b5,8a5,16b5,8c#,8e5,8e5,16e5,e5,p,8a5,16b5,8c#,8b5,16c#,8d,16c#,8b5,8a5,16b5,8c#,8e5,8e5,16e5,e5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (173, 1, N'-Pop-', N'O Town', N'Liquid Dreams', 1443, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'LiquidD:d=4,o=6,b=40:32p,32c#.,32c#.,32c#.,16c#.,16g#.5,16b.5,32a.5,32g#.5,a5,32g#.5,32g#.5,32g#.5,16g#.5,16d#.5,16f#.5,16e.5,e5,32b.5,8c#,16e.,8c#,32c#.,32e.,32f#.,32e.,32e.,16c#.,32b.5,32c#.,32d#.,32d#.,32d#.,32c#.,16d#.,32d#.,32c#.,32e.,32d#.,16c#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (174, 1, N'-Rock-', N'Oasis', N'Wonderwall', 1920, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Wonderwall:d=4,o=5,b=45:16c#6,16c.6,32a#,32c6,32a#,32c6,32a#,16c6,32c6,32a#,32c6,32a#,32c6,32a#,16c6,32d6,a#,16c#6,16c.6,32a#,32c6,32a#,32c6,32a#,16c6,32c6,32a#,16c6,32c6,32a#,16c6,32d6,a#,32d6,32f6,32d6,16f.6,32f6,16g.6,32f6,16c6,16a#.,32a#,16c6,32c6,32c6,16d6,8a#,32g,16g,32g,16a#,8g.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (175, 1, N'-Classical-', N'Offenbach', N'Can Can', 1123, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'CanCan:d=4,o=5,b=160:2c,8d,8f,8e,8d,8g,8p,8g,8p,8g,8a,8e,8f,8d,8p,8d,16p,32p,8d,8f,8e,8d,8c,8c6,8b,8a,8g,8f,8e,8d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (176, 1, N'-Rock-', N'Offspring', N'Original Prankster', 1840, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'OriginalP:d=4,o=5,b=56:32a#.4,32a#.4,32c#.,32a#.4,32a#.,32c#.,32c#.,16d#.,16d#.,32c#.,16d#.,16c#.,16a#.4,32c#.,32a#.4,32a#.,32c#.,32f.,16d#.,16d#.,32c#.,16d#.,16c#.,16a#.4,32c#.,32a#.4,32a#.,32c#.,32f.,16d#.,16d#.,32c#.,16d#.,16c#.,16a#.4,32c#.,32a#.4,32a#.,32c#.,32f.,16d#.,16d#.,32c#.,16d#.,16c#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (177, 1, N'-Rock-', N'Offspring', N'Pretty Fly For A White Guy', 1840, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'PrettyFly:d=4,o=5,b=160:8b,8p,8p,8b,8f#,8p,8a,8p,8b,8p,8p,8b,8e6,8p,8d6,8p,8b,8p,8p,8b,8f6,8f#6,8f6,8f#6,8b,8p,8p,8b,8f6,8f#6,8f6,8f#6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (178, 1, N'-Rock-', N'Offspring', N'The Kids Aren''t Alright', 1280, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'KidsArent:d=4,o=6,b=25:8b5,16c#,16d,8g5,16c#,16d,16a5,16b5,16c#,16d,16e,16d,16c#,16d,8b5,16c#,16d,8g5,16c#,16d,16a5,16b5,16c#,16d,16e,16d,16c#,32d.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (179, 1, N'-Rock-', N'Offspring', N'Why Don''t You Get A Job', 1120, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'GetAJob:d=4,o=5,b=40:32a#,16a#,32g#,32f#,32g#,32a#,32g#,32f#,32g#,16f#,8f#,32a#,16a#,32g#,32f#,32g#,32a#,32f#,g#,32a#,16a#,32g#,32f#,32g#,32a#,32g#,32f#,32g#,16f#,16f#,32d#,16f#,8a#,16g#,32f#,f#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (180, 1, N'-Anthems-', N'Olympics', N'Olympic Fanfare (Bugler''s Dream)', 1283, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Olympics:d=4,o=5,b=225:32p,1a,2c6,p,8p,8c6,2f,2g,2a,2f,g,p,8g,p,8g,2g,a,g,f,8f,8g,a,f,1g,1a,2c6,p,8p,8c6,2f,2g,2a,f,p,g,p,8g,p,8g,g,p,a,g,8f,8p,8f,8g,8a,8p,8g,8p,2f,p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (181, 1, N'-Traditional-', N'Traditional', N'1812 Overture', 1603, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'1812:d=4,o=6,b=225:8b5,8b5,8e.,8f#.,8g#.,8f#.,8e.,8f#.,g#.,e.,2e.,8b5,16b.5,8e.,8f#.,8g#.,8f#.,8e.,8f#.,g#.,e.,2e.,8c#,8c#,8f#.,8g#.,8f#.,8c#.,8a.5,8c#.,8f#.,8c#.,8a.5,8c#.,2f#.,8b5,16b5,8e.,8f#.,8e.,8b.5,8g#.5,8b.5,8e.,8c#.,8g#.5,8c#.,1e,8c#,8c#,8c#,2e,2c#.,8b5,16b.5,8b5,d#.,2b.5,16b.5,16b.5,8b5,32d,c#.,2e,2d#,2f#,e.,b,a#,a,g#,8g.,8f#.,8f.,8e.,d#,8d.,8c#.,32c,2b.5,1c,2c#.,2d#.,2e.,f#.,d#.,2e.,f#.,d#.,e.,d#.,e.,d#.,e.,d#.,e.,d#.,1e')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (182, 1, N'-Traditional-', N'Traditional', N'Alouette', 723, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Alouette:d=4,o=5,b=70:8g,16p,16a,8b,8b,16a,16g,16a,16b,8g,8d,8g,16p,16a,8b,8b,16a,16g,16a,16b,8g,8p,16g,16a,16b,16c6,16d6,16d6,8d6,16d6,16e6,16d6,16c6,16b,16a,8g,16d6,16d6,8d6,16d,16d,16d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (183, 1, N'-Traditional-', N'Traditional', N'Ba Ba Black Sheep', 1123, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Ba Ba:d=4,o=5,b=100:32p,c,c,g,g,8a,8b,8c6,8a,2g,8p,f,f,e,e,d,d,2c')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (184, 1, N'-Anthems-', N'Traditional', N'Battle Hymn Of The Republic', 1203, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Battle:d=4,o=5,b=140:f,8p,16p,8d#,8d,32p,8f,8a#,32p,8c6,2d6,2a#,g,8p,16p,8a,8a#,32p,8a,8a#,32p,8g,2f,2d,f,8p,16p,8d#,8d,32p,8f,8a#,32p,8c6,2d6,a#,a#,c6,c6,a#,a,2a#,p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (185, 1, N'-Traditional-', N'Traditional', N'Black Bear', 643, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'BlackBear:d=4,o=5,b=180:32p,d#,d#,8g.,16d#,8a#.,16g,d#,d#,8g.,16d#,8a#.,16g,f,8c.,16b4,c,8f.,16d#,8d.,16d#,8c.,16d,8a#.4,16c,8d.,16a#4,d#,d#,8g.,16d#,8a#.,16g,d#,d#,8g.,16d#,8a#.,16g,f,f,f,8g.,16f,d#,g,2d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (186, 1, N'-Traditional-', N'Traditional', N'Dixie', 2083, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Dixie:d=4,o=5,b=225:8g#,8f,c#,c#,8c#,8d#,8f,8f#,g#,g#,g#,f,a#,a#,a#.,8g#,a#.,8g#,8a#,8c6,8c#6,8d#6,2f.6,8c#6,8g#,2c#.6,8g#,8f,2g#.,8d#,8f,2c#.,g#,c#6,f6,d#6,c#6,a#,2c#6,a#,2d#.6,a#,2d#.6,g#,c#6,f6,d#.6,8c#6,a#,c6,c#.6,8a#,g#,f,c#.6,8f,f,2d#,f,2c#.,f,2d#.,f#,f,g#,c#.6,8f,f,2d#,f,2c#.,f,2d#.,f#,f,g#,1f6,8c#6,d#6,2c#6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (187, 1, N'-Traditional-', N'Traditional', N'Dualing Banjos', 1203, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'DualingBanjos:d=4,o=5,b=200:32p,8c#,8d,e,c#,d,b4,c#,a4,b4,p,16c#6,16p,16d6,16p,8e6,8p,8c#6,8p,8d6,8p,8b,8p,8c#6,8p,8a,8p,b,p,a4,a4,b4,c#,a4,c#,b4,p,8a,8p,8a,8p,8b,8p,8c#6,8p,8a,8p,8c#6,8p,8b')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (188, 1, N'-Traditional-', N'Traditional', N'Home On The Range', 723, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'HomeOnTheRange:d=4,o=5,b=80:32p,8d,8d,8g,8a,b,16g,16f#,8e,8c6,8c6,c6,8c6,8b,16p,16a,8g,8g,8f#,8g,2a,8p,8d,8d,8g,8a,b,16g,16f#,8e,8c6,8c6,c6,8c6,8b,16p,16a,8g,8f#,8e,8f#,2g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (189, 1, N'-Traditional-', N'Traditional', N'Swing Low Sweet Chariot', 1763, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'SwingLow:d=4,o=5,b=80:8c.6,2g#,8c.6,g#,16g#,16f.,d#,16g#.,16g#,16g#.,16g#,16c.6,16c6,8d#.6,2d#6,8d#.6,c.6,8d#.6,g#,16g#,16f.,d#,16g#.,16g#,16g#.,16g#,16c.6,16c6,8a#.,2g#,8c.6,16d#.6,8d#.6,16c6,16d#.6,8d#.6,16c6,8g#,16g#,8f,g#.,8g#,16g#,16g#.,16g#,16c.6,16c6,8d#.6,2d#6,8d#.6,f6,16d#6,16c.6,g#,16g#.,32g#.,8g#,32g#.,16f.,d#,16g#.,16g#,16g#.,16g#,16c.6,16g#,8a#.,2g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (190, 1, N'-Traditional-', N'Traditional', N'Twinkle Twinkle Little Star', 1043, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Twinkle:d=4,o=5,b=80:32p,8c,8c,8g,8g,8a,8a,g,8f,8f,8e,8e,8d,8d,c,8g,8g,8f,8f,8e,8e,d,8g,8g,8f,8f,8e,8e,d,8c,8c,8g,8g,8a,8a,g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (191, 1, N'-Traditional-', N'Traditional', N'When Johnny Comes Marching Home', 803, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'WhenJohnny:d=4,o=5,b=320:g#,d#,g#,g#,2g#,a#,2b,a#,2b,g#,1f#.,d#,1f#.,g#,d#,g#,g#,2g#,a#,2b,a#,2b,c#6,1d#.6,b,1d#.6,b,8c#6,2d#6,d#6,d#6,c#6,b,2c#6,c#6,2c#6,a#,2b,b,b,a#,g#,2a#,a#,a#,b,c#6,2d#.6,2c#.6,2b.,2a#.,d#,g#,g#,2g#,g,1g#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (192, 1, N'-Traditional-', N'Traditional', N'Where Oh Where Has My Little Dog Gone', 643, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'LittleDog:d=4,o=5,b=125:32p,d6,8b,8g,8f#,8g,8a,8a,8f#,d,8d6,e6,8d6,8c6,8b,8a,2d6,8b,8c6,d6,8b,8g,8f#,8g,8a,8a,8f#,d,8d6,e6,8d6,8c6,8b,8a,2g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (193, 1, N'-Rock-', N'Ozzy Osbourne', N'Crazy Train', 1680, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'CrazyTrain:d=4,o=5,b=355:g.,g.,d.6,g.,d#.6,g.,d.6,g.,c.6,a#.,a.,a#.,c.6,a#.,a.,f.,g.,g.,d.6,g.,d#.6,g.,d.6,g.,c.6,a#.,a.,a#.,c.6,a#.,a.,f.,g.,g.,d.6,g.,d#.6,g.,d.6,g.,c.6,a#.,a.,a#.,c.6,a#.,a.,f.,g.,g.,d.6,g.,d#.6,g.,d.6,g.,1d#.6,1f.6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (194, 1, N'-Rock-', N'Ozzy Osbourne', N'I Just Want You', 560, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'WantYou:d=4,o=5,b=70:32d#.,32d#.,16d#.,16d#.,32d#.,32d.,32d.,2d,32f.,32f.,16f.,16f.,32f.,32d#.,32d#.,2d#,32d#.,32d#.,16d#.,16d#.,32d#.,32d.,32d.,8d,32d.,32c.,32d.,32c.,32c.,8c.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (195, 1, N'-Rock-', N'Ozzy Osbourne', N'Perry Mason', 560, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'PerryMason:d=4,o=5,b=35:32f#,32c#,32e,32f#,32c#,32e,32f#,32c#6,32c6,32b,32a,32g#,32f#,32c#,32e,32f#,32c#,32e,32f#,32c#6,32c6,32b,32a,32g#,32f#,32c#,32e,32f#,32c#,32e,32f#,32c#6,32c6,32b,32a,32g#,32f#,32c#,32e,32f#,32c#,32e,32f#,32c#6,32c6,32b,32a,32g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (196, 1, N'-Rock-', N'Papa Roach', N'Last Resort - Bass Line', 1923, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'LastResort:d=4,o=5,b=45:32f,32g#,32g,32g#,32c6,32g#,32g,32g#,32d#,32g#,32g,32g#,32c6,32g#,32g,32g#,32c#,32g#,32g,32g#,32c6,32g#,32g,32g#,32c,32g#,32g,32g#,32c6,32g#,32g,32g#,32f,32g#,32g,32g#,32c6,32g#,32g,32g#,32d#,32g#,32g,32g#,32c6,32g#,32g,32g#,32c#,32g#,32g,32g#,32c6,32g#,32g,32g#,32c,32g#,32g,32g#,32c6,32g#,32g,32g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (197, 1, N'-Rock-', N'Papa Roach', N'Last Resort', 2962, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'LastResort:d=4,o=5,b=90:8e,8e,8e,8g,8g,8e,8d,8p,8e,8e,8e,8g,8a,d,8p,16e,16e,8e,8e,8p,8g,8e,8d,8e,16e,16e,8e,16e,16e,16g,16g,8a,8e,8d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (198, 1, N'-Rock-', N'Pearl Jam', N'Last Kiss', 1760, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'LastKiss:d=4,o=5,b=40:32p,32f#.,32f#.,16a#.,16c#.6,16d#.6,32f#.,16f#.,16a#.,32c#.6,8d#.6,32f#.,16f#.,32f#.,16d#.,32f#.,16g#.,32a#.,g#,32f#.,32a#.,32c#.6,32d#.6,32d#.6,32f#.,32f#.,32a#.,32a#.,32c#.6,8d#.6,32a#.,32g#.,32f#.,32f#.,32f#.,32f#.,32f#.,32f#.,32f#.,g#,16f#.,f#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (199, 1, N'-Oldies-', N'Peter Paul And Mary', N'Leaving On A Jet Plane', 1040, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'JetPlane:d=4,o=6,b=125:2c,a5,p,8d,16p,32p,8c,8a#5,16p,32p,c,p,8p,8c,8p,8a5,8p,8c,8p,8a#5,8p,8c,8a#5,8p,8a5,f5,p,8c,8p,8a#5,8p,8a5,8p,8g5,8p,8f5,2c5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (200, 1, N'-Oldies-', N'Peter Paul And Mary', N'Puff The Magic Dragon', 560, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Puff:d=4,o=5,b=70:8b.,16b,8b,8b,a#,f#,g#,8b,8b,f#.,8f#,16e,8e,8f#.,8e,16d#,8f#,8b.,16b,16b,8b,8g#,16a#,8b,c#.6,16b,8b.,8b,8b,8a#,f#.,8g#,8g#,8b,8b,f#.,8f#,8e,8e,8f#,8e,16d#,8f#,b,16b,16g#,8b.,8a#,8c#6,b')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (201, 1, N'-Oldies-', N'Peter Schilling', N'Major Tom', 560, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'MajorTom:d=4,o=6,b=35:32p,16d.,32d.,32d.,16d.,16d.,16b.5,16d.,32d.,32c,32b5,8a5,16c.,16e.,16e.,8d,16b.5,16d.,16d,32c,32b5,8a5,8c,8e,8e,8f#,8g.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (202, 1, N'-RB-', N'Pink', N'There You Go', 1043, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'ThereYouGo:d=4,o=5,b=320:2b,2b,b,b,2b,b,b,2b,2f#,b,2c#6,2c#6,2f#,2f#,2f#,2f#,2f#,f#,2d6,2c#6,c#6,c#6,c#6,c#6,2c#6,2c#6,2c#6,c#6,2c#6,2b.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (203, 1, N'-Oldies-', N'Poison', N'Every Rose Has Its Thorn', 640, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'EveryRose:d=4,o=5,b=50:g,16g.,8d.6,32d.6,8e6,g.,16g.,16g.,g,16g.,8b.,32a.,8b,16g.,d.,16g.,16g.,g,16g,8a,8a.,32a.,16a,8g.,32e.,16d.,g.,g,8a.,a,32a.,16b.,g.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (204, 1, N'-80s-', N'Police', N'Don''t Stand So Close To Me', 1200, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'DontStand:d=4,o=5,b=35:16b,16a#,8f#,16b,16a#,8f#,16b,16a#,16f#,16d#,32g#,8g#.,16b,16a#,8f#,16b,16a#,8f#,16b,16a#,16f#,16d#,32g#,8g#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (205, 1, N'-80s-', N'Police', N'Every Breath You Take', 2000, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'EveryBreath:d=4,o=6,b=225:a5,e,b,e,c#7,b,e,b,a5,e,b,e,c#7,b,e,b,f#5,c#,g#,c#,a,g#,c#,g#,f#5,c#,g#,c#,a,g#,c#,g#,d,a,e7,d,d7,a,d,a,e,b,f#7,f#7,e7,b,e,32b.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (206, 1, N'-80s-', N'Police', N'King Of Pain', 960, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'KingOfPain:d=4,o=6,b=160:8a#.5,8c.,8d.,8d#.,8d.,d#.,8a#.5,8c.,8d.,d#.,d.,c.,8a#.5,8c.,8d.,8d#.,8d.,d#.,8a#.5,8c.,8d.,d#.,d.,1c,8a#.5,8c.,8d.,8d#.,f.,8f.,8a#.5,8c.,2d#,8g.,2f.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (207, 1, N'-Rock-', N'Presidents Of The USA', N'Lump', 720, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Lump:d=4,o=5,b=35:16f#,16f#,32f#,16f#.,32f#,32f#,32f#,16f#.,8g,32g,32g,32g,32g,32g,32g,32g,32g,32a,32g,32e,32g,16f#.,32e,16f#,32f#,16f#.,32f#,32e,16f#,16f#,32a,16g,32g,32g,32g,32g,32g,32g,32g,32g,32g,32a,32g,32e,32g,32f#,32d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (208, 1, N'-Rock-', N'Presidents Of The USA', N'Peaches', 1122, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Peaches:d=4,o=5,b=31:8g,16g,32g,16g,8f#,16e,16e,16e,32f#,16e,8d,8g,8b,16b,8a,16e,16e,16e,32f#,16e,8d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (209, 1, N'-80s-', N'Prince', N'1999', 1120, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'1999:d=4,o=6,b=80:16c#.,16c#.,16a#.,16a#.,16a#.,16a#.,16b.,8b.,16b.,16g#.,16g#.,16g#.,16g#.,16g#.,16f#.,2a#,16c#.5,16c#.5,16c#.5,16f#.5,16f#.5,8f#.5,16g#.5,16g#.5,16g#.5,16g#.5,16d#.5,16d#.5,8d#.5,16d#.5,16c#.5,2f#5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (210, 1, N'-80s-', N'Prince', N'When Doves Cry', 1360, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'DovesCry:d=4,o=5,b=31:32a#,32a#,32a#,16a#,32a#,32a#,16a#,8g#.,32g#,32g#,32g#,16g#,16a#,16a#,8f.,32a#,32a#,32a#,16a#,32a#,32b6,32a#,8g#.,32g#,32g#,32g#,32g#,16g#,16g#.,16f,16g#.,16a#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (211, 1, N'-80s-', N'Proclaimers', N'500 Miles', 1840, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'500Miles:d=4,o=5,b=45:32a,16a#,32c.6,8d.6,32a,16a#,32c.6,32c.6,32c6,32d6,16c.6,32a.,32a,32a#,16c.6,32c6,16c6,32d.6,32c.6,32g,16g,32f.,a,32a,16a#,32c.6,8d.6,32a,16a#,32c.6,32c.6,32c6,32d6,16c.6,32a.,32a,32a#,16c.6,32c6,16c6,32d.6,32c.6,32g,16g,32f.,8f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (212, 1, N'-Techno-', N'Prodigy', N'Breathe', 4883, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Breathe:d=4,o=5,b=500:2e,2e,2e,2e,2g,2e,2g,2f#,2e,2f#,2d#,2d#,2d#,2d#,2d#,d#,d#,2e,2e,2e,2e,2g,2e,2g,2f#,2e,2f#,2d#,2d#,2d#,2d#,2d#,d#,d#,2e,2e,2e,2e,2g,2e,2g,2f#,2e,2f#,2d#,2d#,2d#,2d#,2d#,d#,d#,2e,2e,2e,2e,2g,2e,2g,2f#,2e,2f#,2d#,2d#,2d#,2d#,2d#,d#,d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (213, 1, N'-Classical-', N'Prokofiev', N'Peter And The Wolf', 1362, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'PeterWolf:d=4,o=6,b=100:e5,8a5,16p,16c#,8e,32f#,16p,32p,8e,16p,16c#,8e,32f#,16p,32p,8g#,32a,16p,32p,8e,32c#,16p,32p,8a5,32b5,16p,32p,c,8c,32g#,16p,32p,8c,16p,32p,8c,32g#,16p,32p,c,g5,g5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (214, 1, N'-Rap-', N'Puff Daddy', N'I''ll Be Missing You', 2161, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'MissingYou:d=8,o=6,b=180:32p,g5,d,a,d,h,a,d,a,h5,d,a,d,h,a,d,a,e5,h5,f#,h5,g,f#,h5,f#,e5,h5,f#,h5,g,f#,h5,f#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (215, 1, N'-Pop-', N'Quad City DJ''s', N'Come On Ride The Train', 804, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'CMonRide:d=4,o=5,b=63:16d#,16f#,16c#,c#,8c#,16c#,16d#,32d#.,p,16d#,16f#,16c#,c#,8c#,16c#,16d#,32d#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (216, 1, N'-Rock-', N'REM', N'Man On The Moon', 960, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'MoonMan:d=4,o=5,b=40:16g#.,32g#.,16g#.,32g#.,32g#.,32g#.,32g.,16f.,d#,32c#.,16c#.,16d#.,c#,16g#.,32g#.,16g#.,32g#.,32g#.,32g#.,32g.,32g.,32f.,d#,32c#.,16c#.,16d#.,c#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (217, 1, N'-Rock-Rap-', N'Rage Against The Machine', N'Bulls On Parade', 2801, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'BullParade:d=4,o=4,b=80:32p,16d#5,16d5,16d5,8p,8d5,16p,16c5,16d5,16d5,8p,8d5,16p,16d#5,16d5,16d5,8p,8d5,16p,16d5,16d5,16d5,16d5,16c5,8d5,16p,16d#5,16d5,16d5,8p,8d5,16p,16c5,16d5,16d5,8p,8d5,16p,16d#5,16d5,16d5,8p,8d5,16p,16d5,16d5,16d5,16d5,16c5,8d5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (218, 1, N'-80s-', N'Ramones', N'I Wanna Be Sedated', 1760, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Sedated:d=4,o=6,b=125:8c.,16c.,16c.,16c.,16c.,16c.,16c.,16c.,16c.,16c.,16d.,8c.,16a#.5,a5,16a#.5,8a.5,8g.5,16f.5,8g.5,2a.5,16a.5,16a.5,16a.5,8a.5,8a.5,8a.5,16g.5,16a.5,16a#.5,16a.5,g.5,16a#.5,8a.5,8g.5,16f.5,8g.5,a.5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (219, 1, N'-Oldies-Traditional-', N'Various', N'You Are My Sunshine', 2244, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Sunshine:d=4,o=5,b=35:16g#4,16c#,16d#,8f,8f.,16f,16e,16f,8c#,8c#.,16c#,16d#,16f,8f#,8a#.,16a#,16g#,16f#,f,16c#,16d#,16f,8f#,8a#.,16a#,16g#,16f#,8f,c#,16c#,16d#,8f.,16f#,8d#,16d#,16f,8c#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (220, 1, N'-80s-Theme-Movie-', N'Ray Parker Jr', N'Ghostbusters', 3363, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Ghostbusters:d=4,o=5,b=90:16g#.,16g#.,32b.,32c.6,16d#.6,16f#.6,16f#.6,16c#.6,16c#.6,16g#.,16g#.,32b.,32c.6,16d#.6,16f#.6,16f#.6,16c#.6,16c#.6,16g#.,16g#.,32b.,32c.6,16d#.6,16f#.6,16f#.6,16c#.6,16c#.6,16g#.,16g#.,32b.,32c.6,16d#.6,16f#.6,16f#.6,16c#.6,16c#.6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (221, 1, N'-Pop-Theme-TV-', N'Rembrandts', N'I''ll Be There For You', 2645, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Friends:d=4,o=6,b=80:8f5,16a#5,8c,8d#.,8d,16c,8a#5,8a#.5,8f5,16a#5,8c,2c,16p,8f5,16a#5,8c,8d#.,8d,16c,8a#5,8d#.,8d,16c,8a#5,2f,16p,16d#,8d#,8d#,8d#,8d#,8d#,8d#,16d#,8d,2d,8p,16a#5,16c,16d#,8d#,8d#,8d#,8d#.,16d,8c,8a#5,8a#.5,16f5,16a#5,16c,8d,c.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (222, 1, N'-Latin-', N'Ricky Martin', N'Livin La Vida Loca', 1842, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'VidaLoca:d=4,o=5,b=160:16a,8p,a,8p,8f,8g,16a#,8p,16p,16a#,8p,16p,a,p,8p,16a,8p,16p,a,8p,8f,8e,16g,8p,16p,8g,8p,f,2p,16a,8p,a,8p,8f,8g,16a#,8p,16p,16a#,8p,16p,a,p,8p,16a,8p,16p,a,8p,8f,8e,16g,8p,16p,8g,8p,f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (223, 1, N'-Latin-', N'Ricky Martin', N'Nobody Wants To Be Lonely', 1281, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Lonely:d=4,o=6,b=25:32p,16d,16d,32d,16c#,32d,32c#,16b5,8a.5,16d,16d,32d,16e,16f#,16f#.,32e,16d.,32a,32a,32a,32a,32a,32a,32a,32g,32f#,16e,32e,32e,32f#,32g,32g,32g,32g,32g.,32f#.,32e,16d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (224, 1, N'-Latin-', N'Ricky Martin', N'Private Emotion', 801, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Emotion:d=4,o=6,b=80:8c#,8d#,f,8d#,16c#,8d#,8f,8p,8c#,d#,8d#,16f,d#,8p,16a#5,16c,16c#,8c#,8d#,16c#,8c#,g#5,16a#5,16c,16c#,8c#,f,16d#,d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (225, 1, N'-80s-', N'Right Said Fred', N'I''m Too Sexy', 1840, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'TooSexy:d=4,o=5,b=40:16f,16g,16f,16g,16f.,16f,16g,16f,16g,16g#.,16g#,16g,16g#,16g,16f.,16f,16g,16f,16g,16f.,16f,16g,16f,16g,16f.,16f,16g,16f,16g,16g#.,16g#,16g,16g#,16g,16f.,16f,16g,16f,16g,32f.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (226, 1, N'-Oldies-', N'Righteous Brothers', N'Unchained Melody', 1203, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Unchained:d=4,o=5,b=100:2f,g,f,p,g,8a,32p,f,8f,16p,32p,8c,32p,8e,16p,8g,32p,8a,32p,f,p,g,f,p,f,2c6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (227, 1, N'-Classical-', N'Rimsky-Korsakov', N'Flight Of The Bumblebee', 1684, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Flight:d=4,o=5,b=160:16e,16d#,16d,16c#,16c,16f,16e,16d#,16e,16d#,16d,16c#,16c,16c#,16d,16d#,16e,16d#,16d,16c#,16c,16f,16e,16d#,16e,16d#,16d,16c#,16c,16c#,16d,16d#,16e,16d#,16d,16c#,16c')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (228, 1, N'-Rock-', N'Rob Zombie', N'Dragula', 1600, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Dragula:d=4,o=5,b=125:e,8e,e,8e,8g,8g,8e,e,e,8c#,c#,8e,e,e,8e,g,8e,e,e,8c#,c#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (229, 1, N'-Pop-', N'Robbie Williams', N'Millenium', 722, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Millenium:d=16,o=5,b=90:32p,8a#,a,a#,8a,g,a,4g,4f,8g#,g,g#,8g,f,g,4f,4d#,8a#,a,a#,8a,g,a,4g,4f,8g#,g,g#,8g,f,g,4f,4d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (230, 1, N'-Oldies-', N'Rolling Stones', N'Paint It Black', 1441, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'PaintIt:d=4,o=5,b=31:32f#.,32g#.,32a.,32b.,32a.,32g#.,32f#.,32f#.,32f.,32f#,32g#.,32f#.,8f.,32f#.,32g#.,32a.,32b.,32a.,32g#.,32f#.,32f#.,32f.,32f#,32g#.,32f#.,8f.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (231, 1, N'-Oldies-', N'Roy Orbison', N'Pretty Woman', 800, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'PrettyWoman:d=16,o=5,b=125:32p,c,p,c,p,e.,32p,g,p,a#,p,d.6,32p,c.6,32p,a#,p,c,p,c.,32p,e,p,g,p,a#,4p,a,p,a,p,g.,32p,4f.,4p,8a,8a,8g,8f.,p,4a,p,g,p,a,p,g.,32p,4f,4p,8a,8a,8g,f.,8p,4a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (232, 1, N'-Pop-', N'S Club 7', N'Bring It All Back', 723, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'BringItAll:d=4,o=6,b=40:16b5,32b5,16c#,16e,32p,16e,32e,16f#,16g#,32p,16g#,32g#,16f#,16e,16c#,16e,16f#,16e,32p,16g#,32g#,32b5,32b5,32e,32e,16g#,16f#,16e,16c#.,16g#,32g#,16f#,16e,16c#,8e')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (233, 1, N'-Pop-', N'S Club 7', N'Natural', 723, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Natural:d=4,o=6,b=100:8d#,8d#,8d#,8d#,8d#,8d#,8c#,8a#5,c#,2d#,8c#,8c#,8c#,8c#,8a#5,8c#,8a#5,8c#.,8c#.,32a#.5,16g#5,2f#.5,8d#,8d#,8d#,8d#,8d#,8d#,8c#,8a#5,c#,2d#,8d#,8d#,8d#,8d#,d#,8a#5,8f,8f,8f,8a#5,8a#,8g#,8f#,a#,8g#,f#,8d#,8f#,8g#,8a#,8a#,g#,8d#,8d#,8f#,8g#,8d#,2f#,32d#.,d#,16f#.,8g#,8f#,a#,g#,g#,8g#.,16f#,32g#.,16f#.,d#.,8d#,8f#,8g#,8a#,8a#,g#,8d#,8d#,8f#,g#,a#.,8d#,8d#,8f#,8g#,8f#,a#,g#,8g#.,16f#,8d#.,16c#,d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (234, 1, N'-RB-', N'Salt N Pepa', N'Let''s Talk About Sex', 1841, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'TalkAboutSex:d=16,o=5,b=112:32p,32g,p.,32g,32p,32g,32p,32g,p.,32g,8p.,e,8p,8a.,p,32g,p.,32g,32p,32g,32p,32g,p.,32g,8p.,e,8p,8a.,p,32g,p.,32g,32p,32g,32p,32g,p.,8h,c6,h,p,c6,8p,8h,c6,h,p,g,8p,g,8p,e,8p,8a.,1p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (235, 1, N'-Pop-', N'Sarah McLaughlin', N'Adia', 803, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Adia:d=4,o=4,b=90:32p,8b5,c6,2b5,8p,8d6,c6,2b5,p,8p,8b5,16b5,8a5,16g5,2a5,8p,8b5,a5,b5,8p,8b5,c6,1b5,8e6,f6,8e6,8p,8d6,c6,8b5,2a5,p,8d6,8c6,16b5,2a5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (236, 1, N'-Pop-', N'Sarah McLaughlin', N'Angel', 1120, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Angel:d=4,o=4,b=125:32p,g,a,2b,p,2b,8p,8a,16b,16a,2g,p,8p,b,d5,1e5,32p,8d5,2e.5,8p,g,g,2e5,p,2f5,e5,16d5,16e5,16d5,2c5,p,d5,c5,1b,c5,b,1a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (237, 1, N'-Pop-', N'Sarah McLaughlin', N'I Will Remember You', 881, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'RememberYou:d=4,o=4,b=90:32p,8a,c5,8c5,d5,8a,1c5,8p,8a,c5,8c5,d5,8a,1g,8f,8a,c5,2f5,8p,8c5,8a#,8a,g,f,8p,a,8a,8a#,8a,g,8f,e,8p,2f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (238, 1, N'-Pop-', N'Savage Garden', N'I Knew I Loved You', 2563, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'IKnew:d=8,o=6,b=85:32p,c#,d,16e,16p,e,p,e,d,p,c#,16p,h5,16p,c#,4p,c#,d,16e,16p,e,p,4a,4h,a,g#,2e')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (239, 1, N'-Pop-', N'Savage Garden', N'Truly Madly Deeply', 1763, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Truly:d=4,o=6,b=285:c#.,c#.,c#.,2c#,2c#,2c#,2c#,2c#,c#.,2c#,a#.5,2c#,a#.5,1d#,2c#,2c#,c#.,2c#,c#.,c#.,c#.,2c#,c#.,c#.,a#.5,c#.,2c#,2d#,2d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (240, 1, N'-Dance-', N'Scatman John', N'Scatman', 1363, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Scatman:d=4,o=5,b=200:32p,8b,16b,32p,8b,16b,32p,8b,2d6,16p,16c#.6,16p.,8d6,16p,16c#6,8b,16p,8f#,2p.,16c#6,8p,16d.6,16p.,16c#6,16b,8p,8f#,2p,32p,2d6,16p,16c#6,8p,16d.6,16p.,16c#6,16a.,16p.,8e,2p.,16c#6,8p,16d.6,16p.,16c#6,16b,8p,8b,16b,32p,8b,16b,32p,8b,2d6,16p,16c#.6,16p.,8d6,16p,16c#6,8b,16p,8f#,2p.,16c#6,8p,16d.6,16p.,16c#6,16b,8p,8f#,2p,32p,2d6,16p,16c#6,8p,16d.6,16p.,16c#6,16a.,16p.,8e,2p.,16c#6,8p,16d.6,16p.,16c#6,16a,8p,8e,2p,32p,16f#.6,16p.,16b.,16p.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (241, 1, N'-Pop-', N'Seal', N'Kiss From A Rose', 882, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Kiss:d=4,o=5,b=140:32p,8d,8e,f.,8g,f,e,d,c,2d,8d,8c,2d,8d,8e,f.,8g,f,e,c,e,2d.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (242, 1, N'-Rock-', N'Semisonic', N'Closing Time', 960, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Closing:d=4,o=5,b=40:16d#6,8c6,8a#.,16c6,16a#,16a#,32g#,16g#,16f,16f,16g#,16c6,16c#6,16c6,8a#,16c6,16a#,g#.,16d#6,8c6,8a#.,16c6,16a#,16a#,32g#,16g#,16f,16f,16g#,8c.6,8a#.,8g#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (243, 1, N'-Latin-Theme-Movie-', N'Shaft', N'Mambo Italiano', 2882, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'MamboItaliano:d=4,o=5,b=140:32p,8e6,8p,8b,8p,b,p,8a,8p,8a,8a,8a,8b,8c6,8a,8e6,8p,8b,8p,b,8p,8b,8a,8p,8a,8a,8a,8b,8c6,8a,8e,8e,8e,8e,8e,8e,8e,8e,8e,8e,8e,8e,8g,8e,8e,16e')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (244, 1, N'-Pop-', N'Shaggy', N'Angel', 2083, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Angel:d=4,o=5,b=28:32p,32g,32g,16g,8e,32f#,32g,16g,16f#,16f#.,16e.,8f#,32b,32b,32b.,32b.,32b.,32g,16a,32b.,32b.,8a,8g,16a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (245, 1, N'-Pop-', N'Shaggy', N'It Wasn''t Me', 1763, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'WasntMe:d=4,o=5,b=90:16e6,16e6,16e6,16d6,16d6,16d6,8d6,8g6,8e6,8d6,16d6,16d6,16d6,16c6,8d6,8c6,8g,2p,16e6,16e6,8e6,16d6,16d6,8d6,8g6,8e6,8d6,16d6,16d6,16d6,16c6,8d6,8c6,8g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (246, 1, N'-Pop-', N'Shanks And Bigfoot', N'Sweet Like Chocolate', 723, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'SweetChocolate:d=8,o=6,b=120:32p,4g#,4f#,4e,e,f#,4e,e,f#,2f#,4h,4g#,4e,e,f#,4e,e,f#,2e,4g#,4f#,4e,e,f#,4e,e,f#,2f#,4h,4g#,4e,e,f#,4e,e,f#,e,2c#,e,4e,4f#,g#,4e,e,2c#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (247, 1, N'-Rock-', N'Silverchair', N'Pure Massacre', 1040, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Massacre:d=4,o=5,b=31:32g#,32g#,16a#,16a#,16a#,16a,32a.,32a,32a,16a#,16a#,16a#,16c#6,32c#.6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (248, 1, N'-Oldies-', N'Simon And Garfunkel', N'Sound Of Silence', 880, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Silence:d=4,o=6,b=40:32d#.5,32d#.5,32f#.5,32f#.5,32a#.5,32a#.5,g#5,32c#.5,32c#.5,32c#.5,32f.5,32f.5,32g#.5,32g#.5,f#5,32f#.5,32f#.5,32f#.5,32a#.5,32a#.5,32c#.,32c#.,8d#.,c#,32f#.5,32f#.5,32a#.5,32a#.5,32c#.,32c#.,8d#.,c#,16f#.5,16f#.5,32d#.,d#,32d#.,32f.,32f#.,8f#,32f.,8d#,c#,32d#.,32c#.,a#5,16f#.5,16f#.5,16f#.5,c#,32f.5,32f#.5,d#.5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (249, 1, N'-Theme-TV-', N'Simpsons', N'Itchy And Scratchy', 3282, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Itchy:d=4,o=5,b=125:32p,8c6,8a,p,8c6,8a6,p,8c6,8a,8c6,8a,8c6,8a6,p,8p,8c6,8d6,8e6,8p,8e6,8f6,8g6,p,8d6,8c6,d6,8f6,a#6,a6,2c7')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (250, 1, N'-Rap-', N'Sisqo', N'Thong Song', 2801, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Thong:d=4,o=6,b=40:16g.5,a#5,16d.,32g.,32f.,32e.,32d.,16e.,32d.,a5,p,16g.5,a#5,16d.,32g.,32f.,32e.,32d.,16e.,32d.,a5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (251, 1, N'-Pop-', N'Sixpence None The Richer', N'Kiss Me', 1683, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'KissMe:d=4,o=5,b=80:16a.,16g#.,2f#,16f#.,16f#.,32e.,8f#.,16g#.,16f#.,8e.,16a.,16g#.,2f#,16g#.,16g#.,16f#,8g#.,8b.,32g#,32f#,32e.,8f#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (252, 1, N'-Pop-', N'Sixpence None The Richer', N'There She Goes', 1123, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'ThereSheGoes:d=4,o=6,b=50:32p,8a#.5,8d,d#.,16g.5,32a#.5,16f.,16d.,d#,16g.5,32a#.5,8f,16d.,8d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (253, 1, N'-Pop-', N'Smashmouth - War', N'Why Can''t We Be Friends', 963, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'BeFriends:d=4,o=5,b=35:32c#.6,32e.6,16f#.6,32e.6,8e6,32c#.6,32c#.6,16b.,32a.,8c#6,32c#.6,32c#.6,16b.,32c#.6,8a,32f#.,32a.,16b.,32c#.6,8d6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (254, 1, N'-Pop-', N'Smashmouth', N'All Star', 883, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'AllStar:d=4,o=5,b=40:16g.,32d.6,32b.,16b.,32a.,32g.,32g.,16c.6,32b.,32b.,32a.,32a.,16g.,32g.,32d.6,32b.,32b.,32a.,32a.,32g.,32g.,16e.,d,32g.,32g.,32d.6,32b.,32b.,32a.,32a.,32g.,32g.,16c.6,32b.,32b.,32a.,32a.,32g.,32g.,16d.6,32b.,32b.,16a.,32g.,32g.,16a.,8e')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (255, 1, N'-Pop-', N'Smashmouth', N'Can''t Get Enough Of You Baby', 1122, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'GetEnough:d=4,o=5,b=63:16g,8g,16d6,16a#,16c6,16a#,16c6,8a#,g.,16g,8g,16d6,16a#,16c6,16a#,16c6,8a#,8g.,16g,8g,16e,d.,16g,16g,16e,16g,8g,8a#,g.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (256, 1, N'-Pop-', N'Smashmouth', N'Walking On The Sun', 643, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'OnTheSun:d=4,o=6,b=31:32a5,32c,32e,32d,32c,32d,16e,32g,32a,32g,32f#,32e,32d,16e,32a5,32c,32e,32d,32c,32d,16e,32g,32a,32g,32f#,32e,32d,16e,32a5,32c,32e,32d,32c,32d,16e,32g,32a,32g,32f#,32e,32d,16e,32a5,32c,32e,32d,16c,16d#,32e,32d#,32e,32d,32c,32a5,32g5,16a5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (257, 1, N'-Rock-', N'Soundgarden', N'Black Hole Sun', 1200, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'BlackHole:d=4,o=5,b=70:16e,8f#,8g,8p,16p,8a,16g,f#,8e,8d,8b,16a,8a,16g,c6,8p,16e,8f#,g,8a,16g,f#,8g,16c#,2e')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (258, 1, N'-Rock-', N'Soundgarden', N'Spoonman', 960, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Spoonman:d=4,o=6,b=45:32c#,32d#,32d#,32d#,16d#,32d#,16c#,32d#,16a#.5,16g#5,32a#5,16f#5,32d#5,32d#5,32f#5,32g#5,32g#5,32g#5,32d#5,32d#5,16d#5,p,32c#,32d#,32d#,32d#,16d#,32d#,16c#,32d#,16a#.5,16g#5,32a#5,16f#5,32d#5,32d#5,32f#5,32g#5,32g#5,32g#5,32d#5,32d#5,16d#5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (259, 1, N'-Theme-TV-', N'South Park', N'Uncle Fucka', 3280, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'UncleFucka:d=16,o=5,b=160:32p,e6,p,e6,p,e6,p,e6,p,4e6,d6,p,c6,p,a,p,2c6,8p,c6,p,d6,p,e6,p,e6,p,e6,p,e6,p,e6,p,e6,p,d6,p,c6,p,a,p,2c6,8p,c6,p,c6,p,d6,p,d6,p,d6,p,a,p,c6,p,d6,p,8e6,p,e6,f6,f6,e6,p,d6,p,c6,p,a,p,c6,p,8d6,8p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (260, 1, N'-Pop-', N'Spice Girls', N'If You Wanna Be My Lover', 1202, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'SpiceGirls:d=4,o=5,b=125:32p,16g#,16g#,16g#,16g#,8g#,8a#,8g#,f,16c#,16d#,16c#,8d#,8d#,8c#,2f,8g#,8g#,8g#,8a#,8g#,f,c#6,8c#6,8c6,8g#,8a#,16c6,16a#,g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (261, 1, N'-Swing-', N'Squirrel Nut Zippers', N'Hell', 723, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Hell:d=4,o=5,b=112:8d#.6,32c#6,32b.,a#,8a#,8a,2a#,8a#,8a,2a#,8g#,16g,2f#,8g#,16g,2f#,8g#,16g.,d.6,16b.,16b.,16b.,8b,16b.,8a#,8b,a#.,8d#.6,32c#6,32b,a#,8a#,8a,a#.,8a#,16a,a#.,8g#,16g,f#.,8g#,8g,f#.,g#,16g.,d.6,16b.,16b.,16b.,16b.,8b,8a#,8b,8a#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (262, 1, N'-Oldies-', N'Starship', N'We Built This City', 880, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'BuiltThis:d=4,o=5,b=285:a#,2a#,2g#,f#,1f#.,g#,2g#,2f#,f#,f#,2f#,2a#.,2g#.,f#,2a#.,2g#,f#,1f#.,g#,2g#,2f#,f#,f#,2f#,2f.,2f#.,1d#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (263, 1, N'-Pop-', N'Sting', N'Desert Rose', 1443, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'DesertRose:d=4,o=6,b=225:32p,g#5,e,d#,2e.,d#,2e,d#,1e.,g#5,e,d#,2e.,d#,2f#,e,2d#,2c#,2b5,g#5,e,d#,2e.,d#,2e,d#,1e.,g#5,e,d#,2e.,d#,2f#,e,2d#,2e,2e.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (264, 1, N'-80s-', N'Styx', N'Come Sail Away', 801, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'ComeSail:d=4,o=6,b=160:1c#,g#.,2f.,8d#.,1c#,16c#.,16d#.,8f.,8f#.,2f.,8d#.,8c#.,2d#,8g#.5,1g#.5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (265, 1, N'-Rock-', N'Sugar Ray', N'Every Morning', 1040, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'EveryMorning:d=4,o=5,b=56:16e,16e,16f#,16e,16f#,8e,16d,16e,16d,16e,8d,16c#,16d,8c#.,16e,16e,16e,8e.,8f#.,32e,32d,c#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (266, 1, N'-Rock-', N'Sugar Ray', N'Fly', 720, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Fly:d=4,o=6,b=25:32c#,32c#,32c#,32c#,16d,32c#,32d,32e,32d,32c#,16d.,32a5,16c#.,32c#,16c#.,32c#,32b5,16a.5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (267, 1, N'-Rock-', N'Sugar Ray', N'Someday', 1120, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Someday:d=4,o=5,b=225:a,1a.,a#,a#,2a#,2c6,a#,2a,1a.,d,a#,a#,2a#,2c6,a#,2a,2c.6,c6,c6,g,2g,2a#.,a#,a#,1a.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (268, 1, N'-Oldies-', N'Surfaris', N'Wipeout', 480, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Wipeout:d=4,o=6,b=160:8g5,8a#5,8b5,8c,8c,8c,8a#5,8g5,8g5,8a#5,8b5,8c,8c,8c,8a#5,8g5,8g5,8d#,8e,8f,8f,8f,8d#,8c,8c,8d#,8e,8f,8f,8f,8d#,8c,8c')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (269, 1, N'-RB-', N'TLC', N'No Scrubs', 1281, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'NoScrubs:d=4,o=6,b=50:32p,32g5,32d,32f,8a#,32f5,32d,32f,8a,32a5,32c#,32e,8g,32f5,32d,32f,8a,32g5,32d,32f,8a#,32d,32d,32f,8a,32a5,32c#,32e,16g,16c7,32a#,32a,32g,8a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (270, 1, N'-RB-', N'TLC', N'Waterfalls', 1521, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Waterfalls:d=4,o=6,b=225:2e.,2e.,2e.,e.,d#.,c#.,1b5,b.5,b.5,c#.,c#.,d.,d.,d.,d.,d.,d.,d.,c#.,b.5,1a5,c#.,c#.,d#.,d#.,e.,e.,e.,e.,e.,e.,e.,d#.,c#.,b.5,2b.5,b.5,b.5,c#.,c#.,g.5,f#.5,e.5,2e5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (271, 1, N'-Classical-', N'Tchaikovski', N'Dance Of The Sugar Plum Fairies', 2083, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Sugarplum:d=4,o=5,b=100:32f6,16p,32p,32d6,16p,32p,16f6,8p,16p,16e6,8p,16p,16c#6,8p,16p,16d6,8p,16p,32c6,16p,32p,32c6,16p,32p,16c6,8p,16p,32b,16p,32p,32b,16p,32p,16b,8p,16p,32a#,16p,32p,32a#,16p,32p,32a#,p,32a,16p,32p,32d6,16p,32p,32a#,16p,32p,32d6,16p,16p,8a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (272, 1, N'-Anthems-', N'Texas A and M', N'Aggie War Hymn', 9288, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Aggie:d=4,o=5,b=45:16b,8b,16a#,16b,16a#,16b,16c.6,32p,8c#6,16b,g#,16a#,8a#,16a#,16a#,16f#,16g#,16a#,8b,8g#,8f#.,16p,16b,8b,16a#,16b,16a#,16b,16c.6,32p,8c#6,16b,g#,16c#6,8c#6,16c#6,16c#6,16g#,16a#,16b,8c#6,8a#,8g#,8f#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (273, 1, N'-Oldies-', N'The Commodores', N'Brick House', 1200, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'BrickHouse:d=4,o=6,b=400:32p,1d#4,2f#4,2g#4,2c#.4,2d.4,1d#4,2d#4,2f#4,2g#4,2a#.4,2g#.4,2f#4,1d#4,2f#4,2g#4,2c#.4,2d.4,1d#4,2d#4,2f#4,2g#4,2a#.4,2g#.4,2f#4,1d#4,2f#4,2g#4,2c#.4,2d.4,1d#4,2d#4,2f#4,2g#4,2a#.4,2g#.4,2f#4')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (274, 1, N'-Pop-', N'Corrs', N'Breathless', 2243, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Breathless:d=4,o=5,b=355:32p,f.,c.6,1f,f.,c.6,f.,1d.,f.,1f,f.,2e.,e.,2f.,1g,f.,f.,c.6,1f,f.,c.6,f.,1d.,1f,1e,e.,1f,1g,a#.,a.,2g,2f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (275, 1, N'-Oldies-', N'The Knack', N'My Sharona', 720, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Sharona:d=4,o=5,b=140:8c,8c,8c6,8c6,16c,8p,16p,8c6,8c6,16c,8p,16p,8c6,8c6,8c,8c,16c6,8p,16p,8c,8c,8c6,8c6,8c,8c,16d#,8p,16p,f,8p,8d#,8f,d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (276, 1, N'-Oldies-', N'The Winans', N'Let My People Go', 480, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'LetGo:d=4,o=5,b=125:e,8c6,8p,8c6,8p,8b,8p,8b,8p,8c6,8p,8c6,8p,a,p,8e,8p,8e,8p,8g#,g#,8p,2a,p,e,8c6,8p,8c6,8p,8b,8p,8b,8p,8c6,8p,8c6,8p,a,p,8e,8p,8e,8p,8g#,g#,8p,2a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (277, 1, N'-Theme-TV-', N'Theme', N'A-Team', 2244, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'A-Team:d=8,o=5,b=125:4d#6,a#,2d#6,16p,g#,4a#,4d#.,p,16g,16a#,d#6,a#,f6,2d#6,16p,c#.6,16c6,16a#,g#.,2a#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (278, 1, N'-Theme-TV-', N'Theme', N'Addams Family', 1686, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Addams:d=4,o=6,b=50:32p,32c#,16f#,32a#,16f#,32c#,16c,8g#,32f#,16f,32g#,16f,32c#,16a#5,8f#,32c#,16f#,32a#,16f#,32c#,16c,8g#,32f#,16f,32c#,16d#,32f,f#,32c#,32d#,32f,f#,32c#,32d#,32g,g#,32d#,32f,32g,16g#.,32d#,32f,32g,16g#.,32c#,32d#,32f,32f#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (279, 1, N'-Theme-', N'Theme', N'Anamaniacs', 642, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Anamaniacs:d=4,o=5,b=225:e.6,d#.6,e.6,2f#6,8e.6,2d#6,8e.6,1c#6,8d#.6,8e.6,2f#6,8e.6,2d#6,8e.6,1b,8c#.6,8b.,a.,16a,8c#.6,8e.6,2a6,8a.6,8b.6,8a.6,8g#.6,8a.6,2f#6,8f#.6,2e.6,2b6,8a.6,a6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (280, 1, N'-Theme-TV-', N'Theme', N'Babylon 5', 802, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'B5MainTheme:d=4,o=5,b=180:32p,2b4,1e,1g,1f#,1a,1b,2g,g,8g,8a,1b,1f#,1b4,1d,1c#,1e,1f#,2d,d,8d,8e,1f#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (281, 1, N'-Theme-TV-', N'Theme', N'Beverly Hills 90210', 1762, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'90210:d=4,o=6,b=35:32p,32f#6,32b6,32c#7,16d#.7,8d#.7,32f#6,32b6,32c#7,32d#7,32e7,16f#7,16f#.7,8b.6,32f#6,32b6,32c#7,32d#7,32e7,32f#7,32g#7,16f#7,32e7,16e7,16d#7,8c#.7,32b6,16a#6,16b.6,16g#7,32f#7,32e7,32d#7,32e7,32d#7,32b6,16f#6,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (282, 1, N'-Theme-Movie-', N'Theme', N'Beverly Hills Cop', 1922, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'AxelF:d=4,o=5,b=125:32p,8g,8p,16a#.,8p,16g,16p,16g,8c6,8g,8f,8g,8p,16d.6,8p,16g,16p,16g,8d#6,8d6,8a#,8g,8d6,8g6,16g,16f,16p,16f,8d,8a#,2g,p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (283, 1, N'-Theme-TV-', N'Theme', N'Buffy The Vampire Slayer', 10966, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Buffy:d=4,o=5,b=200:32p,1e,f#,g,1d,p,8d,1d,e,f#,1d,p,1e,f#,e,1d,p,8d,1d,e,f#,1d,p,1a,b,a,1g,p,g,1f#,p,1e,f#,g,1d,8p,e,f#,1d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (284, 1, N'-Theme-TV-', N'Theme', N'Car 54 Where Are You', 802, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Car54:d=4,o=5,b=250:32p,d,d,g,d,g,b,2d6,b,g,a,b,a,g,2e,d,d,g,d,g,b,d6,d6,b,g,a,b,a,g,2e,d,d,g,d,g,b,2d6,c6,b,c6,b,c6,d6,1e6,2d6,d6,d6,2d6,2d6,1d6,1b')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (285, 1, N'-Theme-TV-', N'Theme', N'Cheers', 962, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Cheers:d=4,o=5,b=40:32p,32f#,32f#,32f#,16f#,32f#,32f#,16g#,32f#,16f#.,16f#,16f#,32f#,16b,32b,c#6,32f#,32f#,32f#,16f#,32f#,16g#,16a#,32g#,8f#,16f#,32f#,16b,32b,8c#.6,32c#6,32c#6,32c#6,16c.6,32c6,16c#.6,32d#6,8g#.,16d#6,16d#6,16c#6,16d#6,32e6,16f#.6,16f#6,16f#6,32f#6,16g#.6,32f#6,16e.6,16d#6,16e.6,32c#6,8b.,16f#6,32f#6,16g#.6,32f#6,16e.6,16d#6,16e.6,32c#6,8b.,32f#6,32f#6,16f#6,16f#6,32d#6,16c#6,16b,16b.,32b,32f#6,32f#6,16f#6,16f#6,32d#6,16c#6,8b.,32f#6,32f#6,16f#6,16f#6,16d#6,32c#6,32b,32b,32b,8c#6,16b,8b.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (286, 1, N'-Theme-TV-', N'Theme', N'Coca Cola', 1922, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Coca-cola:d=4,o=5,b=125:32p,8f#5,8f#5,8f#5,8f#5,g5,8f#5,e5,8e5,8a5,f#5,d5,2p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (287, 1, N'-Theme-VG-', N'Theme', N'Contra', 1843, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Contra:d=4,o=6,b=285:a#5,a#5,c#,a#5,e.,d#.,c#,a#5,a#5,c#,a#5,e.,d#.,c#,a#5,a#5,c#,a#5,e.,d#.,c#,a#5,a#5,c#,a#5,d#.,e.,f,c,c,d#,c,f#.,f.,d#,c,c,d#,c,f#.,f.,d#,c,c,d#,c,f#.,f.,d#,c,c,d#,c,f.,f#.,g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (288, 1, N'-Theme-TV-', N'Theme', N'Dallas', 643, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Dallas:d=4,o=6,b=50:32p,32b.5,8c,32g.5,8g,32c.,16e.,32d.,32e.,16c.,16g.5,16c.,16a.,16g.,32e.,32f.,g,16g.5,16c.,16a.,16g.,32e.,32f.,16g.,32d.,32e.,16c.,16g.5,16c.,32e.,32f.,8d,32g.,g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (289, 1, N'-Theme-TV-', N'Theme', N'Davy Crockett', 802, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'DavyCrockett:d=4,o=5,b=160:32p,f,8f.,16g,8a.,16g,8f.,16c,d,f,2c,f,g,a,8g.,16f,g,8g.,16a,2g,c,8c.,16c,f,8c.,16c,d,8d.,16d,2g,e,8e.,16e,e,8e.,16d,c,8d.,16e,2f,a,2c.6,d.6,8d6,8c6,a.,8c.,16c,8c.,16c,e,g,2f.,p,a,2c.6,d.6,8d6,8c6,a.,8c.,16c,8c.,16c,e,g,2f.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (290, 1, N'-Theme-TV-', N'Theme', N'Doogie Howser', 1202, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Doogie:d=4,o=5,b=125:8f6,8e6,8d6,e6,8p,8d6,8c6,d6,8a,c6,p,8p,f,8g,8a,g,8f,f,8g,8a,g,p,8p,8f6,8e6,8d6,e6,8p,8d6,8c6,8d6,8g,8a,2c6,8p,f,8g,8a,g,8d,2f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (291, 1, N'-Theme-VG-', N'Theme', N'Double Dragon', 1283, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'DDragon:d=4,o=6,b=140:8a5,8c,2d,8p,8f,8e.,16d,2e,8p,8g,8f.,16e,2f,8p,8a,8g,8f,g,8d,g.,32p,8g,8a,2a#,8p,8f,8f,8a#,2a,8p,8f,8f,8a,2g,8p,8g,8a#,2c.7')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (292, 1, N'-Theme-TV-', N'Theme', N'Eastenders', 882, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Eastenders:d=8,o=6,b=100:32p,a#5,c,d,d#,4f,4g,2d#.,16p,d#,d,c,a#5,4a#5.,f5,f5.,a#5.,f,4a#5,4c,a#5,c,d,d#,4f,4g,2d#.,d#,d,c,a#5,4a#5.,f5,d.,d#.,f,d.,4c.,4f5.,a5,2a#5,4c.,f,4a#5.,f,4f.,d#,4d#.,d,d.,d#.,f,4d,4c.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (293, 1, N'-Theme-VG-', N'Theme', N'Final Fantasy 3', 1843, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'FF3:d=4,o=5,b=40:32g#,32a#,32b,32d#6,b.,32a#,32g#,8a#,d#.,32g#,32a#,32b,32d#6,b.,32a#,32g#,8a#,d#.6,32b,32c#6,32d#6,32f#6,d#.6,32c#6,32b,8c#6,f#.,32b,32a#,g#.,32p,32b,32a#,g#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (294, 1, N'-Theme-Movie-', N'Theme', N'Halloween', 2481, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Halloween:d=4,o=5,b=180:32p,8d6,8g,8g,8d6,8g,8g,8d6,8g,8d#6,8g,8d6,8g,8g,8d6,8g,8g,8d6,8g,8d#6,8g,8c#6,8f#,8f#,8c#6,8f#,8f#,8c#6,8f#,8d6,8f#,8c#6,8f#,8f#,8c#6,8f#,8f#,8c#6,8f#,8d6,8f#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (295, 1, N'-Theme-TV-', N'Theme', N'Flinstones', 2563, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Flinstones:d=4,o=5,b=40:32p,16f6,16a#,16a#6,32g6,16f6,16a#.,16f6,32d#6,32d6,32d6,32d#6,32f6,16a#,16c6,d6,16f6,16a#.,16a#6,32g6,16f6,16a#.,32f6,32f6,32d#6,32d6,32d6,32d#6,32f6,16a#,16c6,a#,16a6,16d.6,16a#6,32a6,32a6,32g6,32f#6,32a6,8g6,16g6,16c.6,32a6,32a6,32g6,32g6,32f6,32e6,32g6,8f6,16f6,16a#.,16a#6,32g6,16f6,16a#.,16f6,32d#6,32d6,32d6,32d#6,32f6,16a#,16c.6,32d6,32d#6,32f6,16a#,16c.6,32d6,32d#6,32f6,16a#6,16c7,8a#.6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (296, 1, N'-Theme-TV-', N'Theme', N'Hawaii 5-0', 2082, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Hawii50:d=4,o=6,b=80:32p,16a5,16a5,16c,16e.,8d.,a5,16a5,16a5,16g5,16c.,a.5,16a5,16a5,16c,16e.,8d.,a,16g,16g,16e,16c.,2a,16c7,16a#,16a,16g,16f,16e,16d,16e,16c,d,16d,16c7,16a#,16g#,16g,16e,16d,16c,16d,16e.,16d,16c.,8d,a,16g,16g,16e,16c.,2d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (297, 1, N'-Theme-Movie-', N'Theme', N'Indiana Jones', 3522, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Indy:d=4,o=5,b=250:32p,e5,8p,8f5,8g5,8p,1c6,8p,d5,8p,8e5,1f5,p,g5,8p,8a5,8b5,8p,1f6,p,a5,8p,8b5,2c6,2d6,2e6,e5,8p,8f5,8g5,8p,1c6,p,d6,8p,8e6,1f7')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (298, 1, N'-Theme-Movie-', N'Theme', N'James Bond', 3122, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Bond:d=4,o=5,b=80:32p,16c#6,32d#6,32d#6,16d#6,8d#6,16c#6,16c#6,16c#6,16c#6,32e6,32e6,16e6,8e6,16d#6,16d#6,16d#6,16c#6,32d#6,32d#6,16d#6,8d#6,16c#6,16c#6,16c#6,16c#6,32e6,32e6,16e6,8e6,16d#6,16d6,16c#6,16c#7,c.7,16g#6,16f#6,g#.6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (299, 1, N'-Theme-TV-', N'Theme', N'Jeopardy', 1202, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Jeopardy:d=4,o=6,b=125:c,f,c,f5,c,f,2c,c,f,c,f,a.,8g,8f,8e,8d,8c#,c,f,c,f5,c,f,2c,f.,8d,c,a#5,a5,g5,f5,p,d#,g#,d#,g#5,d#,g#,2d#,d#,g#,d#,g#,c.7,8a#,8g#,8g,8f,8e,d#,g#,d#,g#5,d#,g#,2d#,g#.,8f,d#,c#,c,p,a#5,p,g#.5,d#,g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (300, 1, N'-Theme-TV-', N'Theme', N'Knight Rider', 2722, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'KnightRider:d=4,o=5,b=63:32p,16e,32f,32e,8b,16e6,32f6,32e6,8b,16e,32f,32e,16b,16e6,d6,8p,p,16e,32f,32e,8b,16e6,32f6,32e6,8b,16e,32f,32e,16b,16e6,f6,p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (301, 1, N'-Theme-VG-', N'Theme', N'Legend of Zelda', 1443, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Zelda:d=4,o=5,b=125:32p,2a#,2f,p,8a#,8c6,8d6,8d#6,2f6,2p,f6,f6,8f#6,8g#6,2a#6,2p,a#6,8a#6,8p,8g#6,8f#6,g#6,8f#6,2f6,2p,2f6,d#6,8d#6,8f6,2f#6,2p,f6,d#6,c#6,8c#6,8d#6,2f6,2p,d#6,c#6,c6,8c6,8d6,2e6,2p,2g6,1f6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (302, 1, N'-Theme-TV-', N'Theme', N'Looney Toons', 2002, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Looney:d=4,o=5,b=140:32p,c6,8f6,8e6,8d6,8c6,a.,8c6,8f6,8e6,8d6,8d#6,e.6,8e6,8e6,8c6,8d6,8c6,8e6,8c6,8d6,8a,8c6,8g,8a#,8a,8f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (303, 1, N'-Theme-TV-Movie-', N'Theme', N'MASH', 1682, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'MASH:d=8,o=5,b=140:4a,4g,f#,g,p,f#,p,g,p,f#,p,2e.,p,f#,e,4f#,e,f#,p,e,p,4d.,p,f#,4e,d,e,p,d,p,e,p,d,p,2c#.,p,d,c#,4d,c#,d,p,e,p,4f#,p,a,p,4b,a,b,p,a,p,b,p,2a.,4p,a,b,a,4b,a,b,p,2a.,a,4f#,a,b,p,d6,p,4e.6,d6,b,p,a,p,2b')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (304, 1, N'-Theme-TV-', N'Theme', N'Mickey Mouse Club', 1362, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Mickey:d=4,o=6,b=140:16c,16p,32p,8c,16c,16p,32p,8c,16c,16p,32p,8c,16c,16p,32p,8c,16d,16p,32p,8c,16b5,16p,32p,8a5,g5,p,16c,16p,32p,8c,8c,8p,16c,16p,32p,8c,8c,8p,16e,16p,32p,8c,16d,16p,32p,8b5,c,8p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (305, 1, N'-Theme-Movie-', N'Theme', N'Mission Impossible', 14504, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Mission:d=4,o=6,b=100:32p,32d,32d#,32d,32d#,32d,32d#,32d,32d#,32d,32d,32d#,32e,32f,32f#,32g,16g,8p,16g,8p,16a#,16p,16c,16p,16g,8p,16g,8p,16f,16p,16f#,16p,16g,8p,16g,8p,16a#,16p,16c,16p,16g,8p,16g,8p,16f,16p,16f#,16p,16a#,16g,2d,32p,16a#,16g,2c#,32p,16a#,16g,2c,16p,16a#5,16c')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (306, 1, N'-Theme-Movie-', N'Theme', N'Monty Python', 1042, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Monty:d=4,o=5,b=200:32p,f6,8e6,d6,8c#6,c6,8b,a#,8a,8g,8a,8a#,a,8g,2c6,8p,8c6,8a,8p,8a,8a,8g#,8a,8f6,8p,8c6,8c6,8p,8a,8a#,8p,8a#,8a#,8p,8c6,2d6,8p,8a#,8g,8p,8g,8g,8f#,8g,8e6,8p,8d6,8d6,8p,8a#,8a,8p,8a,8a,8p,8a#,2c6,8p,8c6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (307, 1, N'-Theme-Movie-VG-', N'Theme', N'Mortal Kombat', 5203, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Kombat:d=4,o=6,b=35:32a#5,32a#5,32c#6,32a#5,32d#6,32a#5,32f6,32d#6,32c#6,32c#6,32f6,32c#6,32g#6,32c#6,32f6,32c#6,32g#5,32g#5,32c6,32g#5,32c#6,32g#5,32d#6,32c#6,32f#5,32f#5,32a#5,32f#5,32c#6,32f#5,32c#6,32c6,32a#5,32a#5,32c#6,32a#5,32d#6,32a#5,32f6,32d#6,32c#6,32c#6,32f6,32c#6,32g#6,32c#6,32f6,32c#6,32g#5,32g#5,32c6,32g#5,32c#6,32g#5,32d#6,32c#6,32f#5,32f#5,32a#5,32f#5,32c#6,32f#5,32c#6,32c6,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (308, 1, N'-Theme-TV-', N'Theme', N'Munsters', 882, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Munsters:d=4,o=5,b=160:32p,d,8f,8d,8g#,8a,d6,8a#,8a,2g,8f,8g,a,8a4,8d#4,8a4,8b4,c#,8d,p,c,c6,c6,2c6,8a#,8a,8a#,8g,8a,f,p,g,g,2g,8f,8e,8f,8d,8e,2c#,p,d,8f,8d,8g#,8a,d6,8a#,8a,2g,8f,8g,a,8d#4,8a4,8d#4,8b4,c#,2d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (309, 1, N'-Theme-TV-', N'Theme', N'Muppets', 1442, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Muppets:d=4,o=5,b=250:32p,c6,c6,a,h,8a,h,g,p,c6,c6,a,8h,8a,8p,g.,p,e,e,g,f,8e,f,8c6,8c,8d,e,8e,8e,8p,8e,g,2p,c6,c6,a,h,8a,h,g,p,c6,c6,a,8h,a,g.,p,e,e,g,f,8e,f,8c6,8c,8d,e,8e,d,8d,c')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (310, 1, N'-Theme-Movie-', N'Theme', N'Phantom Of The Opera', 2962, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Phantom:d=4,o=5,b=225:d#.,g#.,d#.,f#.,8e.,2e.,c#.,f#.,8c#.,1d#.,d#.,g#.,d#.,f#.,8e.,2e.,c#.,f#.,8c#.,1d#.,d#.,g#.,b.,d#.6,8c#.6,2c#.6,c#.6,f#.6,8c#.6,1d#.6,d#.6,1g#.6,8f#.6,8e.6,8d#.6,8c#.6,8b.,8a#.,8g#.,1g.,e.,e.,8d#.,1d#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (311, 1, N'-Theme-TV-', N'Theme', N'Pink Panther', 3205, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'PinkP:d=16,o=5,b=80:e,f,4p,g,g#,4p,e,f,32p,g,g#,32p,c#6,c6,32p,e,f,32p,c6,4b,4p,32a#,32g#,32f,32d#,8f.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (312, 1, N'-Theme-TV-', N'Theme', N'Police Academy', 1282, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'PoliceAcademy:d=4,o=6,b=45:32p,32c#,32f#5,32f#5,16f#5,32c#5,8f#5,32f#5,32f#5,32c#,32f#5,32f#5,16f#5,32f#,8c#,32g#5,32f#5,16g#5,16c#5,16d#5,8c#.5,16c#.,16f#5,32g#5,16f#.5,16f#.,32f,32f,32f,16d#,32d#,8c#,32c#,32c#,16d#,16c#,16c#,8c#,32g#5,32f#5,16g#5,16c#5,16d#5,8c#.5,16c#.,16f#5,32g#5,16f#.5,16f#.,32f,32f,32f,16d#,32d#,8c#,32c#,32c#,16d#,16c#,16f#,8c#,32g#5,32f#5,16g#5,16c#5,16c#,16c#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (313, 1, N'-Theme-TV-', N'Theme', N'Scooby Doo', 2082, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'ScoobyDoo:d=4,o=5,b=285:32p,f,f,d#,d#,1c#,d#,2f#,1a#4,a#4,2c,2g#4,2f,f,2d#,1c#.,f,f,d#,d#,2c#.,c#,d#,2f,2f#.,2a#4,2g#4,2g#4,2f,f,2d#,1c#,c#,d#,f,f#,f,f#,f,f#,f,f#,f,8f#,8f,2f#,f,8f#,8f#,f#.,f#.,1f.,g#.,g#.,1f.,c#,d#,f,f#,f,f#,f,f#,f,f#,f,f#,f,f#,f,f#,2g,1g#.,g#.,g#.,2g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (314, 1, N'-Theme-TV-', N'Theme', N'Simpsons', 4166, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Simpsons:d=4,o=5,b=160:32p,c.6,e6,f#6,8a6,g.6,e6,c6,8a,8f#,8f#,8f#,2g,8p,8p,8f#,8f#,8f#,8g,a#.,8c6,8c6,8c6,c6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (315, 1, N'-Theme-VG-', N'Theme', N'Spy Hunter', 964, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'SpyHunter:d=4,o=5,b=100:16f,32p,16f,32p,16g,32p,16f,32p,32g#.,16a,16f,32p,16a#,32p,16a,32p,16f,32p,16f,32p,16g,32p,16f,32p,32g#.,16a,16f,32p,16a#,32p,16a,32p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (316, 1, N'-Theme-TV-', N'Theme', N'Star Trek', 962, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'StarTrek:d=4,o=5,b=63:32p,8f.,16a#,d#.6,8d6,16a#.,16g.,16c.6,f6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (317, 1, N'-Theme-Movie-', N'Theme', N'Star Wars', 3602, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'StarWars:d=4,o=5,b=45:32p,32f#,32f#,32f#,8b.,8f#.6,32e6,32d#6,32c#6,8b.6,16f#.6,32e6,32d#6,32c#6,8b.6,16f#.6,32e6,32d#6,32e6,8c#.6,32f#,32f#,32f#,8b.,8f#.6,32e6,32d#6,32c#6,8b.6,16f#.6,32e6,32d#6,32c#6,8b.6,16f#.6,32e6,32d#6,32e6,8c#6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (318, 1, N'-Theme-VG-', N'Theme', N'Street Fighter 2', 1765, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'SF2:d=4,o=6,b=160:8g5,f#5,g5,2a5,16g5,16f#5,2e5,8p,8f#5,8g5,a5,d,2g,16f#,16e,d,8e,2f,16e,16d,a#.5,2g,16f,16e,c.,2d.,8p,8d,8e,f.,16e,16d,a#.5,g.,16f,16e,c,8e,2f#.,8p,8g,8f#,8d,8g,8f#,8d,d7')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (319, 1, N'-Theme-VG-', N'Theme', N'Super Mario Brothers', 15437, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Mario:d=4,o=5,b=100:32p,16e6,16e6,16p,16e6,16p,16c6,16e6,16p,16g6,8p,16p,16g,8p,32p,16c6,8p,16g,8p,16e,8p,16a,16p,16b,16p,16a#,16a,16p,16g,16e6,16g6,16a6,16p,16f6,16g6,16p,16e6,16p,16c6,16d6,16b,p,16g6,16f#6,16f6,16d#6,16p,16e6,16p,16g#,16a,16c6,16p,16a,16c6,16d6,8p,8d#6,16p,16d6,8p,8c6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (320, 1, N'-Theme-VG-', N'Theme', N'Super Mario World', 2646, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'MarioWorld:d=4,o=5,b=125:a,8f.,16c,16d,16f,16p,f,16d,16c,16p,16f,16p,16f,16p,8c6,8a.,g,16c,a,8f.,16c,16d,16f,16p,f,16d,16c,16p,16f,16p,16a#,16a,16g,2f,16p,8a.,8f.,8c,8a.,f,16g#,16f,16c,16p,8g#.,2g,8a.,8f.,8c,8a.,f,16g#,16f,8c,2c6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (321, 1, N'-Theme-Movie-', N'Theme', N'Superman', 3202, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'SuperMan:d=4,o=5,b=180:32p,8g,8g,8g,c6,8c6,2g6,8p,8g6,8a.6,16g6,8f6,1g6,8p,8g,8g,8g,c6,8c6,2g6,8p,8g6,8a.6,16g6,8f6,8a6,2g.6,p,8c6,8c6,8c6,2b.6,g.6,8c6,8c6,8c6,2b.6,g.6,8c6,8c6,8c6,8b6,8a6,8b6,2c7,8c6,8c6,8c6,8c6,8c6,2c.6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (322, 1, N'-Theme-VG-', N'Theme', N'Teenage Mutant Ninja Turtles', 1843, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'TMNT:d=4,o=5,b=100:8e,8f#,8e,8f#,8e,16f#,8e.,8f#,8g,8a,8g,8a,8g,16a,8g.,8a,8c6,8d6,8c6,8d6,8c6,16d6,8c.6,8d6,16a,16a,16a,16a,8g,8a,8p,16a,16a,16a,16a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (323, 1, N'-Theme-Movie-', N'Theme', N'The Good, The Bad, And The Ugly', 2482, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'GoodBad:d=4,o=5,b=56:32p,32a#,32d#6,32a#,32d#6,8a#.,16f#.,16g#.,d#,32a#,32d#6,32a#,32d#6,8a#.,16f#.,16g#.,c#6,32a#,32d#6,32a#,32d#6,8a#.,16f#.,32f.,32d#.,c#,32a#,32d#6,32a#,32d#6,8a#.,16g#.,d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (324, 1, N'-Theme-TV-', N'Theme', N'Three''s Company', 1042, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'ThreesC:d=4,o=5,b=80:16e,16g,16a,16c6,8d6,a.,8p,16e,16g,16a,16c6,8d6,a.,8p,16e,16g,16b,16c6,8d6,8e6,8d6,8e6,16d6,e6,8d6,16c6,16b,16a,2g,8p,8d,8g,8b,16d6,16c6,16b,8e6,16d6,8c6,16b,16a,16g,8d6,16c6,8b,g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (325, 1, N'-Theme-Movie-', N'Theme', N'Top Gun', 3365, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Top Gun:d=4,o=4,b=31:32p,16c#,16g#,16g#,32f#,32f,32f#,32f,16d#,16d#,32c#,32d#,16f,32d#,32f,16f#,32f,32c#,16f,d#,16c#,16g#,16g#,32f#,32f,32f#,32f,16d#,16d#,32c#,32d#,16f,32d#,32f,16f#,32f,32c#,g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (326, 1, N'-Theme-TV-', N'Theme', N'Winnie The Pooh', 2482, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Pooh:d=4,o=5,b=125:32p,8e.,16d,e,d,p,8e.,16d,e,d,p,8c.,16c,8a#.,16a#,8a.,16a,g,f,e,d,d#,8e.,16d,e,d,p,8e.,16d,e,d,p,8c.,16c,8a#.,16a#,8a.,16a,g,2f,1p.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (327, 1, N'-Theme-TV-', N'Theme', N'X-Files', 2083, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Xfiles:d=4,o=5,b=125:32p,e,b,a,b,d6,2b.,p,e,b,a,b,e6,2b.,p,g6,f#6,e6,d6,e6,2b.,p,g6,f#6,e6,d6,f#6,2b.,p,e,b,a,b,d6,2b.,p,e,b,a,b,e6,2b.,p,e6,2b.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (328, 1, N'-Oldies-', N'Three Dog Night', N'Joy To The World', 1203, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'JoyToWorld:d=4,o=5,b=100:16c.6,16a#.,16a#.,16g.,8a#.,16g.,8a#.,2g.,16c.6,16c.6,8a#.,8a#.,16a#.,2g.,16c.6,16c.6,16a#.,16g.,16g.,16d#.,16f.,16d#.,16f#.,8f.,d#,32d#.,8d#,8f#.,16f.,16d#.,16f.,16d#.,16c.,2d#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (329, 1, N'-Rock-', N'Three Doors Down', N'Kryptonite', 1920, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Kryptonite:d=4,o=5,b=50:16c,16c,16c,16d#,16c,16c,16c,16d#,16d#,16d#,16d#,16d,32d,8d.,32p,16c,16c,16c,16d#,16c,16c,16c,16d#,16d#,16d#,16d#,16d,16d,16d,8d#,32p,16c,16c,16c,16d#,16c,16c,16c,16d#,16d#,16d#,16d#,16d,32d,16d#.,8p,16d#,32c,8c.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (330, 1, N'-Anthems-', N'University of Alabama', N'Fight Song (Yea Alabama)', 2323, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'YeaBama:d=4,o=5,b=56:16d#.6,16b,32f#,32g#.,8f#.,16b.,32g#.,8b,32g#.,32a#.,32a#.,32g#.,32f#.,32a#.,32a#.,32g#.,16f#.,16f#.,32d#.,8f#.,16a.,16g#,32d#,32f#.,8g#.,16e.,32f#.,16g#.,16g#.,32c#.6,32d#.6,32f.6,32c#.6,32d#.6,32f.6,32d#.6,32c#.6,32a#.,16a#.,32g#.,16f#,32g#,32a#.,32f#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (331, 1, N'-Latin-Dance-', N'Various', N'Macarena', 1845, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Macarena:d=4,o=5,b=180:32p,f,8f,8f,f,8f,8f,8f,8f,8f,8f,8f,8a,8c,8c,f,8f,8f,f,8f,8f,8f,8f,8f,8f,8d,8c,p,f,8f,8f,f,8f,8f,8f,8f,8f,8f,8f,8a,p,2c.6,a,8c6,8a,8f,p,2p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (332, 1, N'-Dance-', N'Vengaboys', N'Boom Boom Boom', 1604, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'BoomBoomBoom:d=4,o=5,b=125:32p,16e6,16e6,8e6,8e6,8d6,8d6,8c6,32p,16g,8p,16g,16g,8g,8g,8d6,8d6,8c6,32p,16a,8p,16c6,16c6,8c6,8c6,8c6,8d6,8e6,32p,16c6,8p,8f,8f,8f,8f,8f,8e,32p,16c6,8p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (333, 1, N'-Dance-', N'Vengaboys', N'We Like to Party', 1603, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'LikeToParty:d=4,o=5,b=25:32p,16c#6,32a#,32g#,16c#6,32a#,32g#.,32c#6,32a#,32g#,32c#.6,32a#,32g#,32c.6,32d#.6,32c.6,32g#,32c.6,32c6,32d#6,32d#6,32c.6,32a#,32g#,32c#.6,32a#,32g#,32c#.6,32a#,32g#.,32c#6,32a#,32g#,32c#.6,32a#,32g#,32c.6,32d#.6,32c.6,32a#,16g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (334, 1, N'-Rock-', N'Verve', N'Bittersweet Symphony', 1682, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Verve:d=4,o=5,b=45:32p,16f,16g#,16f,16f#,16d#,8f#,16b,16f#,8b,16a#,16f#,8a#.,16f,16g#,16f,16f#,16d#,8f#,16b,16f#,8b,16a#,16f#,8a#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (335, 1, N'-Oldies-', N'Village People', N'YMCA', 880, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'YMCA:d=4,o=5,b=160:32p,8c#6,8a#,2p,8a#,8g#,8f#,8g#,8a#,c#6,8a#,c#6,8d#6,8a#,2p,8a#,8g#,8f#,8g#,8a#,c#6,8a#,c#6,8d#6,8b,2p,8b,8a#,8g#,8a#,8b,d#6,8f#6,d#6,f.6,d#.6,c#.6,b.,a#,g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (336, 1, N'-Oldies-', N'Violent Femmes', N'Blister In The Sun', 1040, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Blister:d=4,o=5,b=285:e.,8g#.,8e.,a.,8g#.,e.,g#.,8e.,a.,g#.,e.,8g#.,8e.,a.,8g#.,e.,p,p,p,p,p,e.,8g#.,8e.,a.,8g#.,e.,g#.,8e.,a.,g#.,e.,8g#.,8e.,a.,8g#.,e.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (337, 1, N'-Pop-', N'Vitamin C', N'Graduation Song', 1123, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Graduation:d=4,o=5,b=140:8e6,8g6,g6,d6,p,8c6,8e6,e6,b,p,8a,8c6,c6,g,p,8a,8c6,8c6,8b,b,8p,8e6,8g6,g6,d6,p,8c6,8e6,e6,b,p,8a,8c6,c6,g,p,8a,8c6,8c6,8b,b')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (338, 1, N'-Classical-', N'Wagner', N'Here Comes The Bride', 1203, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Bride:d=4,o=5,b=90:d,16g,8p,16g,g,p,d,8a,16p,16f#,g,p,d,8g,16p,16b,d6,8b,16p,16g,e,16a,8p,16b,g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (339, 1, N'-Classical-', N'Wagner', N'Ride Of The Valkyries', 1684, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Ride:d=4,o=5,b=160:a,32e,8a,c6,8p,a,8p,c6,32a,8c6,e6,8p,c6,8p,e6,32c6,8e6,g6,8p,g,8p,c6,32g,8c6,2e6,p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (340, 1, N'-Rock-', N'Weezer', N'Buddy Holly', 2480, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'BuddyHolly:d=4,o=6,b=225:d,d#,d,2a.,2g,d,c,a#5,1d.,d,d#,d,2a.,2g,d.,8c,1a#.5,d,d#,d,2a.,2g,d,c,a#5,1d.,d,d#,d,2a,2g,f,8d,8c,1a#.5,2a#,2g.,g,d,2f.,g,8d,8c,1a#5,2a#,2g.,g,d,2f.,g,1g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (341, 1, N'-Oldies-', N'Wham', N'Wake Me Up Before You Go-Go', 560, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'GoGo:d=4,o=6,b=40:32f.,16g#,8a#,32f,16g#,32a#.,16f,16c#,32c#,32d#.,32f,32d#.,16f#,32f,32c#.,32a#5,32c#.,16c#,16a#5,8g#5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (342, 1, N'-Rock-', N'Wheatus', N'Teenage Dirtbag', 2161, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Dirtbag:d=4,o=5,b=285:32p,e.,f.,a.,a.,2g.,2f.,2a.,2e.,2e.,2f.,f.,f.,a.,a.,2g.,2f.,2a.,2e.,2e.,1f,a.,a.,a.,2g.,2f.,2a.,2e.,2e.,f.,e.,2f.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (343, 1, N'-80s-', N'Wild Cherry', N'Play That Funky Music', 1920, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Funky:d=4,o=5,b=112:8f6,8g6,8g6,8f6,8g6,16p,8c#6,16p,8c6,8p,2a#,p,8f,8g,8g,8f,16g,8p,8c#6,16p,8c6,16p,2a#,p,8p,g6,8f6,8d6,f6,8d6,8a#,8c6,8a#,8c6,8a#,8c6,8a#,8g,8f,8g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (344, 1, N'-Oldies-Pop-', N'Will Smith - Bill Withers', N'Just The Two Of Us', 1045, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'TwoOfUs:d=4,o=5,b=100:32a,16p,32p,32f,16p,32p,8g,16f,32d,2p,32c6,16p,32p,32a,16p,32p,32c6,16p,32p,16a,32c6,16p,32p,32c6,16p,32p,8d6,8p,16p,32a,16p,32p,32f,16p,32p,8g,16f,16d,p,16g,8f,16p,d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (345, 1, N'-Oldies-', N'Yes', N'Owner Of A Lonely Heart', 1281, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Lonely:d=4,o=5,b=28:32f,32f,32f,32g,16g#,32a#,8a#,32g#,16a#,16g#,32f,32f,32f,32g,16g#,32a#,8a#,32g#,16a#,16g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (346, 1, N'-Dance-', N'ATC', N'Around The World', 5603, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'AroundW:d=4,o=5,b=285:b4,b4,f#,8f#,c#,1p,d,c#,d,e,d,c#,c,b4,b4,f#,8f#,c#,1p,d,c#,d,e,d,c#,c,f#6,b,d6,f#6,c#6,f#,a#,c#6,d6,g,b,d6,e6,a,c#6,e6,f#6,b,d6,f#6,c#6,f#,a#,c#6,d6,g,b,d6,e6,a,c#6,e6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (347, 1, N'-Latin-Theme-Movie-', N'Richie Valence', N'La Bamba', 4162, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'LaBamba:d=32,o=6,b=45:g#5,a#5,c,16c#,f,c#,16f#,a#,16g#,g#5,c,d#,f#,f#,f,d#,16c#,f,c#,16f#,a#,16g#,f#,f#,f#,16f#,f#,16f,4c#,f#,f#,f#,16f#,f#,16f,16c#,c#,c#,16c#,16d#,16c,16d#,f#,f,d#,16f,8c#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (348, 1, N'-Theme-TV-', N'Theme', N'Inspector Gadget', 2802, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Gadget:d=16,o=5,b=50:32d#,32f,32f#,32g#,a#,f#,a,f,g#,f#,32d#,32f,32f#,32g#,a#,d#6,4d6,32d#,32f,32f#,32g#,a#,f#,a,f,g#,f#,8d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (349, 1, N'-Theme-TV-', N'Theme', N'Popeye', 2162, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Popeye:d=32,o=5,b=225:8g#,p,4g#,p,8g#,p,4f#,p,4f,p,2g#,8p,4g#,p,8a#,p,4f#,p,8a#,p,4c#6,p,4a#,p,2g#,8p,4g#,p,8a#,p,4f#,p,8a#,p,4c#6,p,4a#,p,8g#,p,4g#,p,8g#,p,4f,p,4c#,p,8g#,p,4g#,p,8g#,p,4f#,p,4f,p,2c#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (350, 1, N'-Theme-TV-', N'Theme', N'Smurfs', 3362, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Smurfs:d=32,o=5,b=200:4c#6,16p,4f#6,p,16c#6,p,8d#6,p,8b,p,4g#,16p,4c#6,p,16a#,p,8f#,p,8a#,p,4g#,4p,g#,p,a#,p,b,p,c6,p,4c#6,16p,4f#6,p,16c#6,p,8d#6,p,8b,p,4g#,16p,4c#6,p,16a#,p,8b,p,8f,p,4f#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (351, 1, N'-RB-', N'Brandy', N'Boy Is Mine', 4321, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'BoyIsMine:d=4,o=5,b=90:32p,g#,8c#6,8d#6,8e6,8d#6,8c#6,8g#,1a,8b,8c#6,8d#6,8c#6,8b,8f#,1g#,g#,8c#6,8d#6,8e6,8d#6,8c#6,8g#,1a,a,8b,8c#6,8d#6,8c#6,8b,8f#,1g#,g#,8c#6,8d#6,8e6,8d#6,8c#6,8g#,1a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (352, 1, N'-80s-', N'Dexy''s Midnight Runners', N'Come On Eileen', 1520, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Eileen:d=4,o=5,b=112:32p,8c,c6,d6,c6,8p,8c,c6,d6,16c6,8a#,f.,a#,c6,a,f,2c.,8p,8c,c6,d6,c6,8p,8c,c6,d6,16c6,8a#,f.,a#,c6,a,f,1c,8g,8p,a,g,p,8g,8p,a,g,p,8g,8p,a,g,8p,16e,16f,16g,8g,8g,16e,16f,16g,8g,g.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (353, 1, N'-Rock-', N'Gin Blossoms', N'Till I Hear From You', 960, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'HearFromYou:d=4,o=5,b=125:32p,8a,8a6,8e6,8a,8g#6,8f#6,8e6,8a,8f#,8a6,8e6,8a,8g#6,8f#6,8e6,8a,8g#,8g#6,8e6,8c#6,8f#6,8e6,8c#6,8g#6,8e,8g#6,8e6,8b,8f#6,8e6,8b,8f#6,8a,8a6,8e6,8a,8g#6,8f#6,8e6,8a,8f#,8a6,8e6,8a,8g#6,8f#6,8e6,8a,8g#,8g#6,8e6,8c#6,8f#6,8e6,8c#6,8g#6,8e,8g#6,8e6,8b,8f#6,8e6,8g#6,8e6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (354, 1, N'-Pop-', N'Jessica Simpson', N'I Think I''m In Love', 803, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'ImInLove:d=4,o=5,b=100:32p,8d6,8d6,8c#6,8b,8b,2a,8c#6,8c#6,8b,8a,8f#,8a,8b.,8a.,8f#,p,8a,8b,8c#6,8c#6,8c#6,8c#6,c#6,8b,8a,8b.,8a.,8f#,p,8c#6,8e6,8c#6,8b,8b,8a,8b.,8a.,8f#,p,8a,8b,8c#6,16c#6,8c#.6,8c#6,c#6,8b,8a,8b.,8a.,8f#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (355, 1, N'-Rock-', N'Deep Blue Something', N'Breakfast At Tiffany''s', 1201, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'BreakfastTiff:d=4,o=5,b=112:32p,8f#.,8f#,16f#,8e.,8f#,16f#,16g,16f#,16d,16a4,8d.,8d,16d,8c#.,8c#,16c#,8c#,16d,16d,8f#.,8f#,16f#,8e.,8f#,16f#,16g,16f#,16d,16a4,8d.,8d,16d,8c#.,8c#,16c#,16c#,16d,16d,8f#.,8f#,16f#,8e.,8f#,16f#,16g,16f#,16d,16a4,8d.,8d,16d,8c#.,8c#,16c#,8c#,16d,16d,8f#.,8f#,16f#,8e.,8f#,16f#,16g,16f#,16d,16a4,8d.,8d,16d,8c#.,8c#,16c#,16c#,16d,16d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (356, 1, N'-Pop-', N'Lauryn Hill', N'Can''t Take My Eyes Off Of You', 2163, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'TakeEyesOff:d=4,o=5,b=125:32p,a,a,a,a.,d,8d,8e,8f,a,8a,g,8f,8e,8f,g.,c,8c,8d,8e,g,8g,f,8e,8d,8e,f.,g.,d,e.,f,d,f.,2g,p,8d#.,8d#,8d#,8f.,8d#,8c,2d#,p,8d#.,8d#,8d#,8f.,8d#,8c,2d#,p,8d#.,8d#,8d#,d#,8c#,8d#,2c#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (357, 1, N'-Oldies-', N'Louis Armstrong', N'What A Wonderful World', 1040, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'WonderfulWorld:d=4,o=5,b=90:32p,8c.,8e,f.,8a,2c.6,d6,16d6,16d6,2c.6,8a#.,8a#,16a#,8a.,8a.,8a,8g.,8g,8g,16g,f.,8f,16f,8f.,8f.,8f,2f.,8f.,16f,8e.,8f.,8g,1a,8c.,8e,f.,8a,2c.6,d6,16d6,16d6,c.6,8f,a#.,8a#,16a#,a.,8a,g.,16g,16g,f.,16f,16f,8f.,8f.,8f,2f.,16f,16f,8e,8f.,8g.,1f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (358, 1, N'-Pop-', N'Madonna', N'Music', 3043, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Music:d=4,o=5,b=125:32p,d6,8a#,8c6,8p,8c6,p,2p,8g,8g,8g,8g,d6,8a#,8c6,8p,8c6,p,2p,8g,8g,8g,8g,d6,8a#,8c6,8p,8c6,8p,c6,a#,g.,2p,d6,8c6,8a#,c6,a#,8c.6,16c6,8c6,8a#,g,8g,8a#,d6,8c6,8a#,c6,a#,2p,8p,8g,8g,8a#,d6,8a#,8c6,p,8p,8a,8c6,8d6,8c6,8a#,g,8g,8a#,d6,a#,c6,a#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (359, 1, N'-Pop-', N'Mariah Carey', N'I Still Believe', 1203, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'StillBelieve:d=4,o=5,b=63:32p,32a4,32b4,32c,32d,32e,32f#,32g,32a,b,8e,8b,a.,8a,8d,16a,8b,8a,2g,16a,8a,16g,e.,8p,16g,8f#.,16f#,16f#,16g,16f#,2f#,b,8e,16b,a.,8a,8d,16a,8b,8a,2g,16a,8a,16g,e.,8p,16g,8f#.,16f#,16f#,16g,16f#,2f#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (360, 1, N'-Pop-', N'''N Sync', N'This I Promise You', 3123, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'PromiseYou:d=4,o=5,b=125:16a.4,8a4,8c#.,8d.,8e.,d.,2b.4,8d.4,8b.4,2b4,8a4,32g#4,32a4,32g4,2e.4,16a.4,8a4,8c#.,8d.,8e.,f#.,2d.,8a.4,8c#.,8d.,8e.,2e.,8g4,8f#.4,8e.,1d,8g4,8f#.4,8f#.,1e,8d.,8e.,f#.,e.,8d.,8c#.,b4,8a4,2f#.4')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (361, 1, N'-Pop-', N'Natalie Imbruglia', N'Torn', 1122, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Torn:d=4,o=5,b=90:32p,8d,8d.,16c,a#4,8p,8a#.4,8f,8f.,16d,c,p,8c,8c,8c,8c,8d,16c,c,8a4,8c,8c,8c,8d,16c,8c,8c,8p,8d.,16c,a#4,8p,8a#.4,8f,8f.,16d,8c,a,p,8g,8f,8g,8f,g,16f,16d#,8f,p,16f,16f,8f,8g,8a,8a#,8a,a.,8p,8f,8f,16f,8g.,d#.,8p,8f,8f,16f,8g#.,16g,f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (362, 1, N'-Rap-', N'Pras', N'Ghetto Superstar', 1921, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'GhettoSuperstar:d=4,o=5,b=100:32p,8a#,8g#,8g#,8f#,f#.,8p,8a#,8g#,8g#,8f#,f#.,8p,8b,8a#,8a#,8g#,g#.,8p,8b,8a#,8a#,8g#,g#.,8p,8a#,8g#,8g#,8f#,f#.,8p,8a#,8g#,8g#,8f#,f#.,8p,8f#,8f#,8g#,a#,8g#,8f#,8g#,f#,8g#,2f#,p,8a#,8a#,8p,8g#,8f#,8f#,8f#,8f#,8p,8g#,f#,p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (363, 1, N'-Oldies-', N'Queen', N'Bohemian Rhapsody', 1123, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Bohemian:d=4,o=5,b=80:32p,2d6,8a#,8c6,16d6,2d6,8d6,8d#6,16f6,8d#6,8d6,c.6,16c6,16d6,8d#6,16f6,8d#6,16d6,2c6,8d6,d6,8p,16c6,16a#,16c6,8d.6,8p,8f6,8a.6,2g6,16f#6,16g6,8a#6,16a#6,8a#.6,16a6,8a#6,8g6,8d#6,2c6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (364, 1, N'-Oldies-', N'Queen', N'We Are The Champions', 1203, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Champions:d=4,o=5,b=100:32p,2f,8e,8f,e,c,8p,8a4,d,a.4,2p,8c,2f,8g,8a,c6,a.,8d.,8e,2c,2p,d.,c,8d,c.,a#4,8p,a#.,a,8a#,a.,g,8p,a.,f,8a#,a.,8f,8p,8a#,g#.,f.,8a#,g#.,f.,2p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (365, 1, N'-RB-', N'R Kelly', N'I Believe I Can Fly', 2241, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'ICanFly:d=4,o=5,b=63:32p,16e6,16e6,8e6,16d6,16c6,2c6,16e6,16e6,8e6,16d6,16c6,8d6,16a,2c6,16e6,16e6,16e6,16e6,8e6,16e6,8f6,f.6,16e6,16e6,16e6,16e6,8e6,8e6,8d6,d.6,16e6,16e6,8e6,16d6,16c6,c.6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (366, 1, N'-Rock-', N'Red Hot Chili Peppers', N'Other Side', 1203, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'OtherSide:d=4,o=5,b=125:32p,e.,e.,e,a.,a,8b,8a,8g,1e,d.,d.,d,e.,e.,e,a.,a,8b,8a,8g,e.,e,8e,e,d.,d.,d,e.,e.,e,a.,a,8b,8a,8g,e.,e,8e,e,d.,d.,d,e.,e.,e,a.,a.,a,e.6,e.6,e6,b,b,b,b,a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (367, 1, N'-Rock-', N'Red Hot Chili Peppers', N'Under The Bridge', 2882, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'UnderBridge:d=4,o=5,b=80:32p,8g#,8g#,8g#,f#,8e,8p,8b4,8c#,8e,8c#,8f#,8p,8e,p,8g#,8g#,8g#,8f#,8p,8e,8p,8b4,8c#,8e,8c#,8f#,p,8e,8f#,8g#,8g#,8g#,8f#,8p,8e,8p,8b4,8c#,8e,8c#,8f#,8p,8e,p,8g#,8b,8c#6,8f#,8p,8e.,8p,8b4,8c#,8e,8c#,2f#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (368, 1, N'-Latin-', N'Ricky Martin', N'Shake Your Bon Bon', 1041, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'ShakeBonBon:d=4,o=5,b=100:32p,16g4,16g4,8a#4,8a#4,16g4,16g4,8a#4,8a#4,16g4,16g4,8a#4,8a#4,16g4,16g4,8a#4,8a#4,16g4,16g4,8a#4,8a#4,16g4,16g4,8a#4,8a#4,16g4,16g4,8a#4,8a#4,16a#4,16a4,8a#4,8a#4,16g4,16g4,8a#4,8a#4,16g4,16g4,8a#4,8a#4,16g4,16g4,8a#4,8p,16d,16d,8d,16c,8b4,8b.4,p,16d,16d,8d,16c,8b4,8b.4,p,16g4,8d,8d,16d,8d,16c,16c,16c,8b4,16b4,16b4')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (369, 1, N'-Latin-', N'Ricky Martin', N'She Bangs', 962, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'SheBangs:d=4,o=5,b=140:32p,c#,8p,8c,8c#,8a4,8p,8c#,p,8p,8c#,d,c#,p,b4,8b4,8g#4,8p,8a#4,8b4,8c#,8p,8c#,d,c#,c#,8p,8c,8c#,8g#4,8p,8c#,8p,8c#,8p,8c#,d,c#,p,c#,c#,8p,8b4,8a4,8f#4,8p,8f#4,p,f#4')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (370, 1, N'-Pop-', N'S Club 7', N'Reach', 884, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Reach:d=4,o=5,b=180:32p,a,b,1b,16b,c6,b,a,b,1b,c6,b,a,b,1b,c6,b,2a,2g#,2a,2b,b,c6,1c6,d6,c6,b,c6,2c.6,8d.,16g,d6,c6,b,c6,1c6,c6,b,2b,a,p,2g,2a,p,c6,c6,8p,16g,c6,8c.6,16c6,d6,c6,p,b,b,8p,16g,b,8b.,16b,a,g,p,c6,c6,8p,16c6,8c.6,16c6,8c.6,16c6,b,c6,a,p,b,p,c6,p,d6,p,2e6,2f#6,2g6,2a6,2b6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (371, 1, N'-Theme-Movie-', N'Theme', N'Austin Powers', 2162, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'AustinPowers:d=4,o=5,b=140:32p,a#,8c#6,8a#,8d#6,8c#6,8a#,a#,8a#,8a#,8f,g#,8a#,8f,g#,8a#,8f,g#,8a#,g#,8a#,8a#,8g#,8a#,8c#6,8d#6,8c#6,f6,f6,8g#6,f6,8g#6,8a#6,8a#6,8a#6,8g#6,8f6,8d#6,8c#6,8g#,8a#,8f,8g#,8f,g#,8a,a#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (372, 1, N'-Theme-Movie-', N'Theme', N'Charlie''s Angels', 2881, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'CharliesAngels:d=4,o=5,b=125:32p,c#,8d,2c#,b4,e,d,c#,8d,2c#,8d,8b4,8c#,8d,8e,f#,8g,2f#,e,a,g,2f#,16a4,16b4,16c,16d,16e,16f#,16g,16a,b,8c6,2b,8a,8f#,g,8a,b,8c6,2b,a,d6,c6,2b')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (373, 1, N'-Pop-', N'Toni Braxton', N'He Wasn''t Man Enough', 1363, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'WasntManEnough:d=4,o=5,b=100:32p,8b4,8d,8e,8g,g.,16e,16g,8a,8b,16a,16g,8e,g.,16e,16g,8a,8b,16a,16g,8e,f#.,8e,g.,16e,16g,8a,8a,8a,8a,8b4,8d,8e,8g,g.,16e,16g,8a,8b,16a,16g,8e,g.,16e,16g,8a,8b,16a,16g,8e,f#.,8e,g.,16g,16g,8a,16a,16a,16p,16g,g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (374, 1, N'-Rock-', N'U2', N'Beautiful Day', 1360, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'BeautifulDay:d=4,o=5,b=140:32p,16a4,16p,8e,8d,8c#,e.,p,2p,16p,8a.4,16p,8g.,16p,8f#,e,8d,16f#,16p,8e.,2p,16p,8f#,e,e.,2p,16p,8a.4,16p,8g.,16p,f#.,e.,e.,8p,8a4,8f#,e,e.,p,2p,16p,8b4,16b4,16p,8g,16g,16p,8f#,16e,16p,8d,f#,e.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (375, 1, N'-Pop-', N'98 Degrees', N'Because Of You', 963, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'BecauseOfYou:d=4,o=5,b=90:32p,8c6,8d6,e6,e6,8f6,8e6,8d6,8d6,2c6,p,8c6,8d6,8e6,8e6,8e6,8e6,8f6,8e6,8d6,8d6,2c6,p,8c6,8d6,8e6,8e6,8e6,g6,c6,c6,8c6,8c6,e.6,8e6,16d6,16c6,2a,p,8c6,c6,b,c6,d6,c.6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (376, 1, N'-Pop-', N'98 Degrees', N'I Do Cherish You', 1443, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'IDoCherish:d=4,o=5,b=180:32p,c,1g.,b4,c,1g.,8e,8f,g,f,e,2d.,8e,8f,g,f,e,2d.,c,1g,b4,c,1g.,8p,8g,8g,g,f,e,2d.,8p,8e,8f,g,f,e,2e,2d.,32p,d,d,e,d,2c,8p,8c,8a.4,c,d,e,2e.,8p,8e,e,f,e,d,c,c,d,e,1d.,p,2c,1c')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (377, 1, N'-Dance-80s-', N'Ace Of Base', N'All That She Wants', 1685, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'AllSheWants:d=4,o=5,b=90:32p,16g#,16g#,8g#,16c#,16c#,8p,8g#,8g#,16c#,16c#,8p,8g#,8f#,8f#,8f#,16e,8f#,16e,8c#,8p,8c#,8f,8c#,8c#,16c#,8f,8c#,c#,8p,8d#,8d#,16d#,8c,16a#4,8g#4,8p,8c#,8g#,8g#,8g#,8g#,8g#,16g#,16g#,8p,8g#,8a#,8a#,8a#,8a#,a.,8a,8g#,8g#,16f#,8f,8g#,8g#,16f#,8f,c#.,8g#4,16b4,8c#,16e,16p,8c#.,g#,8f#,16e,16c#,8p,16e,16p,16e,16e,16e,8f#,8f#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (378, 1, N'-Oldies-', N'B-52s', N'Love Shack', 1440, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'LoveShack:d=4,o=5,b=125:32p,8g4,8a#4,8b4,c,c,8e4,f4,8g4,8p,8g4,8p,8g4,8a#4,8g4,8a#4,8b4,c,c,8e4,f4,8g4,8p,8g4,8p,8g4,8a#4,8g4,8a#4,8b4,c,c,8e4,f4,8g4,8p,8g4,8p,8g4,8a#4,8g4,8a#4,8b4,c,c,8e4,f4,8g4,8p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (379, 1, N'-80s-', N'Berlin', N'Take My Breath Away', 1600, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'MyBreath:d=4,o=5,b=100:32p,8g#,8g#,8g#,8g#,g#,8d#,g,8g,8g,8g,g,8d#,8f.,16d#,c,p,8g#,8g#,8g#,8g#,g#,8d#,g,8g,8g,8g,g,8g#,8f.,16d#,c,p,8a#,8a#,8a#,8a#,a#,8f,g#,8g#,8g#,8g#,g#,8a#,8g.,16f,d#,p,8g#,8g#,8g#,8g#,g#,8d#,g,8g,8g,8g,g,8g#,8f,16d#,c#.,p,8f,2d#,8d#,8f,8g#,8a#,2g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (380, 1, N'-Rock-', N'Blind Melon', N'No Rain', 1200, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'NoRain:d=4,o=5,b=160:32p,2e,16p,16e.,16p,e,16p,2e,f#,g#,a,8g#.,16p,8f#,16p,8e.,16p,2e.,8p,g#,a,g#,8f#,e,16p,e.,16p,c#,e,g#,16p,e.,16c#.,1b4,p,2e,16p,8e.,16p,8e,16p,2e,f#,g#,a,g#,f#,8e.,16p,2e,p,g#,8a.,g#,8f#.,8e,e,c#,e,g#,e.,16c#.,1b4')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (381, 1, N'-80s-', N'Blondie', N'Maria', 1040, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Maria:d=4,o=5,b=160:32p,8e,a,a,8a,8a,8p,8g#,2p,8a,8a,8p,8a,2p,8a,8b,8p,8a,2p,c#6,8c6,c#.6,c#6,b,g#,8g#,8b,8p,8a,8p,8f#,2p,8e,8a,8a,p,a,8a,8a,8g#,2p,8a,8p,8f#,a,a,a,a,8a,8b,8p,8a,2p,c#6,8c6,c#.6,c#6,b,g#,8g#,8b,8p,8a,8p,8f#,p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (382, 1, N'-Rock-', N'Bon Jovi', N'It''s My Life', 3360, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'ItsMyLife:d=4,o=5,b=125:32p,d#,g,2g.,8d#,d#,d,c,a#.4,p,8p,8a#4,8g,8g,8g,8g,a#,d#,d#,2g,p,8d#,8d#,8d#,8d#,d#,8d,c.,8a#4,2a.4,2p,d#,g,2g.,8c,8d#,8d#,8d#,8d#,d#,d,c,2a#4,8p,8a#4,8g,8g,8g,8g,a#,g#,g,8f,d#.,p,8d#,8d#,8d#,8d#,d#,8d,c.,8a#4,2a#.4,p,d#,p,d,p,c')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (383, 1, N'-Pop-', N'Celine Dion', N'That''s The Way It Is', 881, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'WayItIs:d=4,o=5,b=100:32p,8b,8d,8g,8c6,8d,8g,8d,8c,8b,8d,8g,f#,p,8g.6,16g6,8p,2g.6,16e6,16f#6,8g.6,8g.6,f#6,8g6,8e6,8d6,e.6,2b.6,8d.7,8g.6,f#6,8g6,2g6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (384, 1, N'-80s-', N'Depeche Mode', N'Strange Love', 1440, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'StrangeLove:d=8,o=5,b=112:32p,e,g,e,4a,g,e,p,e,g,e,a,a,g,e,p,e,g,e,4a,g,e,p,e,g,e,d6,d6,b,g,p,e,g,e,4a,g,e,p,e,g,e,a,a,g,e,p,e,g,e,4a,g,e,p,e,g,e,d6,e,e,g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (385, 1, N'-80s-', N'Duran Duran', N'Save A Prayer', 1363, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'SaveAPrayer:d=4,o=5,b=112:32p,d.6,c#6,8d6,d6,d6,8d6,d.6,p,2p,8c#6,8c#6,8c#6,8c#6,c#6,8c#6,c#6,b,d6,d.6,c#6,8d6,e6,e6,8c#6,d.6,p,2p,8c#6,8c#6,8c#6,8c#6,c#6,8c#6,d6,1d6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (386, 1, N'-Oldies-', N'Frank Sinatra', N'New York New York', 480, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'NewYork:d=4,o=5,b=125:32p,c,8b.4,8c,a4,1g4,p,c,8b.4,8c,a4,1g4,8p,b.4,c,d,e,8d#.,16e,8p,16d#,e.,8p,g.,e,16p,8e.,1d.,p,c,b4,c,a4,1g4,p,c,d,b4,a4,1g4,8p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (387, 1, N'-Latin-', N'Marc Anthony', N'I Need To Know', 801, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'NeedToKnow:d=4,o=5,b=112:32p,a#,p,c#6,p,c6,p,d#6,p,a,p,c6,p,a#,p,c#6,p,8f6,2f.6,8f6,8d#6,8p,2f.6,8f#6,8f6,8f6,2f.6,8f6,8d#6,8p,2f.6,8f#6,8f6,8p,8c#6,8c#6,16c#6,16c#6,8c#6,8c#6,8c#6,8c#6,8d#.6,16d#6,d#6,2p,8d#6,8d#6,8d#6,8d#6,8d#6,8d#6,8c#6,8f6,8f6,f6,2p,8c#6,8c#6,8c#6,8c#6,8c#6,8c#6,8c#6,8d#6,8d#6,d#6,2p,8d#6,8d#6,8d#6,8d#6,8d#6,8d#6,8c#6,8f6,8f#6,f6,8p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (388, 1, N'-Rock-', N'Matchbox 20', N'Bent', 1283, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Bent:d=4,o=5,b=100:32p,8c#,c#,8f#,8f#,16g#,f#.,2p,8g#,16g#,8g#,8f#.,8e,8b4,c#,2p,8g#,16g#,8g#,8f#.,8b4,16c#,8c#,8b.4,2p,8g#,16g#,16g#,16p,8a,8b.,16g#,a,16c#,8c#,8c#,8c#,8p,8f#,16p,8f#,16g#,16p,8g#,f#.,2p,16g#,16g#,8g#,16g#,16p,8f#.,8e,8b4,c#,2p,16a,16p,8a,8a.,8f#,8e,8a4,8c#,8a4,2p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (389, 1, N'-Rock-', N'Meredith Brooks', N'Bitch', 1360, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Bitch:d=4,o=5,b=100:32p,8c#,8e,32e,f#,8c#,8e,f#,8c#,8e,8f#,8e,8c#,16e,16e,f#,8c#,8a4,8b4,8b4,8b4,8a4,c#,8p,8a4,8c#,8e,8e,8c#,f#,8c#,8e,f#,8c#,16e,16e,f#,8p,8e,8a,8g#,8g#,8f#,8f#,8e,8f#,8g#,8a,8g#,8g#,8f#,8f#,8e,8c#,8b4,16c#,16b4,a4')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (390, 1, N'-Country-', N'Shania Twain', N'Man I Feel Like A Woman', 1363, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'ManIFeel:d=4,o=5,b=140:32p,8b.,b,16b,8b.,16f#,a,8b.,b.,8b.,16f#,a,8b.,b,16b,8b.,16f#,a,8b.,e.6,8d.6,b.,8p,b,16b,8b.,16f#,a,8p,b,16b,8b.,16f#,a,8p,b.,8b.,16f#,8p,16a,8b.,e.6,8d.6,2b')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (391, 1, N'-Pop-', N'Smashmouth', N'Then The Morning Comes', 643, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'MorningComes:d=8,o=5,b=125:32p,c,c,d#,f,p,2f#.,f.,d#,c,4a#.4,c,c,d#,f,p,2f#.,f.,d#,c,4a#.4,c,c,d#,4a#,2a.,a#,a#,4a#,a,a,4a,4g,g,g,f,g,p,c,d#,f,f#,f,d#,f,4d#,4p,a#,a#,a#,4a#,a,4a,g,g,g,g,g,f,g,4p,g,g#,4f,d#,4f,2c')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (392, 1, N'-Rock-', N'Sublime', N'Wrong Way', 1200, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'WrongWay:d=8,o=5,b=112:32p,g#,g#,g#,a,4b,b,c#6,d6,e6,d6,c#6,4b,b,c#6,d6,e6,d6,c#6,b,b,b,g#,4c#6,g#,2f#,4p,g#,g#,a,4b,b,c#6,d6,e6,d6,c#6,4b,b,c#6,d6,e6,d6,c#6,b,b,b,g#,4c#6,g#,4f#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (393, 1, N'-Theme-Movie-', N'Theme', N'Back To The Future', 1522, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'BackFuture:d=4,o=5,b=160:32p,p,8c.,16p,g,16p,16c.6,16p,a#.,16p,16a,16p,16g,16p,8a,16p,8g,16p,8f,16p,1g.,1p,g.,16p,c.,16p,2f#.,16p,32g.,32p,32a.,32p,8g,32p,8e,32p,8c,32p,f#,16p,32g.,32p,32a.,32p,8g.,32p,8d.,32p,8g.,32p,8d.6,32p,d6,16p,c#6,16p,32b.,32p,32c#.6,32p,2d6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (394, 1, N'-Theme-VG-', N'Theme', N'Commando NES', 723, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Commando:d=4,o=6,b=125:32p,8a.5,16a5,8a5,8a5,a5,8a5,8a5,8a.5,16e,8e,8e,e,p,f,e,f,e,8e,16b5,16b5,8b5,8b5,b5,p,8c.,16c,8c,8c,c,8c,8c,8c.,16g,8g,8g,g,p,g#,g,g#,g,8g,16d,16d,8d,8d,d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (395, 1, N'-Theme-VG-', N'Theme', N'Donkey Kong Country', 1203, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'DKCTitle:d=4,o=5,b=125:32p,8c,8c,a.,p,8f,8g,8f,d.,p,8d,8d,a#.,p,8g,8a,8g,e.,p,8e,8e,c.6,p,8a,8a#,8c6,d.6,p,8f,8g,a,f,8p,8e,8f,8g,d.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (396, 1, N'-Theme-VG-', N'Theme', N'Donkey Kong', 1203, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'DKong:d=4,o=5,b=140:32p,8a#,8p,8d6,16p,16f.6,16g.6,16f.6,8a#,8p,8d6,16p,16f.6,16g.6,16f.6,8a#,8p,8d6,16p,16f.6,16g.6,16f.6,8a#,8p,8d6,16p,16f.6,16g.6,16f.6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (397, 1, N'-Theme-VG-', N'Theme', N'Excite Bike', 723, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'ExciteBike:d=4,o=5,b=90:32p,16e,32p,16g,32p,16c6,32p,32e,32p,16g,32p,16c6,p,16g#,32p,16b,32p,16e6,32p,32g#,32p,16b,32p,16e6,p,32d6,32p,32c6,32p,32d6,32p,32c6,32p,32a,32p,32g,32p,32f,32p,32f,32p,32e,32p,32d#,32p,32d,16p,32c,32p,32e,32p,32f,32p,32f#,32p,32g,32p,16c6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (398, 1, N'-Theme-VG-', N'Theme', N'Mario NES Underground', 4404, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'MarioUnder:d=4,o=6,b=100:32p,32c,32p,32c7,32p,32a5,32p,32a,32p,32a#5,32p,32a#,2p,32c,32p,32c7,32p,32a5,32p,32a,32p,32a#5,32p,32a#,2p,32f5,32p,32f,32p,32d5,32p,32d,32p,32d#5,32p,32d#,2p,32f5,32p,32f,32p,32d5,32p,32d,32p,32d#5,32p,32d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (399, 1, N'-Theme-VG-', N'Theme', N'PacMan', 2483, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'PacMan:d=32,o=5,b=112:32p,b,p,b6,p,f#6,p,d#6,p,b6,f#6,16p,16d#6,16p,c6,p,c7,p,g6,p,e6,p,c7,g6,16p,16e6,16p,b,p,b6,p,f#6,p,d#6,p,b6,f#6,16p,16d#6,16p,d#6,e6,f6,p,f6,f#6,g6,p,g6,g#6,a6,p,b.6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (400, 1, N'-Theme-VG-', N'Theme', N'Rush ''N Attack', 483, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'RushNAttack:d=4,o=5,b=100:32p,c,16c,16f,8g#,16p,8c,16p,c,8p,8a#4,16p,8d#,16p,c,16c,16f,8g#,16p,8c,16p,c,8p,a#4,8p,c6,16c6,16f6,8g#6,16p,8c6,16p,c6,8p,8a#,16p,8d#6,16p,c6,16c6,16f6,8g#6,16p,8c6,16p,f6,8p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (401, 1, N'-Theme-VG-', N'Theme', N'Super Mario Brothers 2', 2485, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Mario2:d=4,o=5,b=125:32p,8g,16c,8e,8g.,16c,8e,16g,16c,16e,16g,8b,a,8p,16c,8g,16c,8e,8g.,16c,8e,16g,16c#,16e,16g,8b,a,8p,16b,8c6,16b,8c6,8a.,16c6,8b,16a,8g,16f#,8g,8e.,16c,8d,16e,8f,16e,8f,8b.4,16e,8d.,c')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (402, 1, N'-Rock-', N'311', N'Down', 4400, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'311Down:d=4,o=5,b=225:32p,a,b,b,b,2b,a,2a,g#,2g#,g#,2a,a,2b,b,2b,a,2a,g#,2g#,g#,2a,a,b,b,b,2b,a,2a,g#,2g#,g#,2a,a,2b,b,2b,a,2a,2g#,2a,g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (403, 1, N'-Rock', N'Bad Religion', N'Walk', 80, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'AWalk:d=8,o=6,b=225:32p,d#.,d#.,d#.,c#.,c#.,2c,d#.,f#.,f#.,d#.,c#.,2d#,d#.,4f#.,d#.,d#.,4d#.,d#.,2c#,d#.,c#.,2d#,d#.,f.,f.,f.,f.,2f,f.,f#.,f#.,f#.,f#.,4f#.,f#.,f#.,f#.,f.,f#.,f.,f#.,f.,f#.,4g#.,g#.,f#.,f#.,f.,f#.,f#.,f#.,1f.,f#.,f#.,f#.,d#.,d#.,c#.,1d#.,4f#.,f#.,f#.,d#.,d#.,c#.,1d#.,4f#.,f#.,f#.,f#.,f#.,f#.,f#.,1d#.,4f#.,f#.,f#.,d#.,d#.,c#.,1d#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (404, 1, N'-Rock-', N'Beastie Boys', N'Girls', 4240, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'Girls:d=16,o=6,b=63:32p,8c#,8d#,8c#,f#,f#,c#,c#,f#,32f#,c#.,d,d#,d#,a#5,a#5,d#,32d#,a#.5,d#,f#,f#,c#,c#,f#,32f#,c#.,d,d#,d#,a#5,a#5,d#,32d#,a#.5,d#,f#,f#,c#,c#,f#,32f#,c#.,d,d#,d#,a#5,a#5,d#,32d#,a#.5,d#,f#,f#,c#,c#,f#,32f#,c#.,f,8f#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (405, 1, N'-Rock-', N'Better Than Ezra', N'Good', 800, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'Good:d=32,o=6,b=40:p,f#.,e.,d#.,8c#,b.5,4d#,f#.,e.,d#.,16c#.,16b.5,16d.,c#.,d.,c#.,8b.5,f#.,e.,d#.,16c#.,16b.5,16d#.,b.5,b.5,16b.5,b.5,d#.,16b.5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (406, 1, N'-Rock-', N'Blink 182', N'Dammit', 2320, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'Dammit:d=4,o=6,b=250:32p,c#.,8c#.,d#.,8d#.,f.,g#.5,8g#.5,d#.,8d#.,f.,a#.5,8a#.5,d#.,8d#.,f.,f#.5,8f#.5,f.,8f.,d#.,c#.,8c#.,d#.,8d#.,f.,g#.5,8g#.5,d#.,8d#.,f.,a#.5,8a#.5,d#.,8d#.,f.,f#.5,8f#.5,f.,8f.,d#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (407, 1, N'-Oldies-', N'Clash', N'Should I Stay Or Should I Go', 880, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'ShouldStay:d=8,o=5,b=125:32p,g,g,g,g#,g#,g#,g#,g.,2p,32a#,4p,32a#,4p,32a#,2p,g,g,g,g#,g#,g#,g#,g.,2p,16a#.,16c#6,2p,g#,g#,g#,f#,f#,f#,f#,g#.,1p,g,g,g,g#,g#,g#,g#,g.,1p,a#,a#,a#,a#,a#,a#,a#,g#.,1p,g,g,g,g#,g#,g#,g#,g.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (408, 1, N'-Rap-', N'Cypress Hill', N'Rock Superstar', 3761, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'RockStar:d=8,o=6,b=100:32p,d,f,a,d,a#,d,a,f,d,f,a,d,a#,d,a,f,d,f,a,d,c7,d,a#,a,d,f,a,d,c7,d,a#,a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (409, 1, N'-Pop-', N'Dave Matthews Band', N'Ants Marching', 1202, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'DMBAnts:d=16,o=5,b=40:32p,a#.6,d#6,d#.6,d#.6,c6,4a#,a#6,d#6,d#.6,32c#.6,c#.6,c6,c6,c#.6,8a#.,32g.,32g.,32g#.,32g#.,32a#.,c.6,4d#,32d#.,f#.,f#.,32f#.,32f#.,f.,f#,f.,4d#,g.6,f.6,d#.6,4a#6,g.6,f.6,d#.6,c.6,a#.,f#.,f.,d#.,f,f,d#,8f.,c.6,a#.,32g.,32g.,32f.,8d#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (410, 1, N'-Pop-', N'Dave Matthews Band', N'Crash', 1523, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'DMBCrash:d=2,o=5,b=355:32p,1f6,1f6,g6,f6,a#,1a#,1a,1c6,1f6,a,a,a,a,4a,a#,1c6,d6,g,g,g,4g,a,1a,f6,f6,f6,4f6,f6,f6,e6,e6,d6,d6,c6,1c6,1a,g,g,4g,g,1g,1g,g,f,f,f,1f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (411, 1, N'-Rock-', N'Eve 6', N'Inside Out', 800, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'InsideOut:d=2,o=5,b=355:32p,4c,d#,d,4c,4c,4d,d#,d,1c.,d#,d,c,4d,d#,1c.,d#,4d,c,d.,d#,d,c,1c')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (412, 1, N'-Rock-', N'Foo Fighters', N'Everlong', 1440, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'Everlong:d=16,o=5,b=40:32p,8c6,4a#,g.,c6,32g,g,f,4g,8p,d#.,d.,4c,8p,8c6,4a#,g.,d#6,d6,32c6,a#,4g,8p,d#.,d.,4c')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (413, 1, N'-Rock-', N'Foo Fighters', N'My Hero', 1520, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'MyHero:d=16,o=6,b=40:32p,c,c,d.,c,8c.,a5,32c,4a5,c,c,d.,c,8c.,a5,32c,4a5,8e,8f,g.,32f,32d,32d,8c.,32c,32a,g,g,f,8c')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (414, 1, N'-Rock-', N'Green Day', N'Hitching A Ride', 800, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'HitchinRide:d=16,o=6,b=40:32p,d#,d,c,d#,32c.,d,8c,32c.,32c,g,32f.,d#,4c,32d#.,32c,d,c,d,32c.,d,32c,c,4c')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (415, 1, N'-Rock-', N'Green Day', N'Welcome To Paradise', 1280, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'WelcomeToP:d=16,o=5,b=45:32p,b,32b,b,d6,c#6,b,a.,b.,32a,4g#,b,32b,b,d6,c#6,b,a.,g,g,32g,a,4b')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (416, 1, N'-Rock-', N'Green Day', N'When I Come Around', 1600, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'WhenICome:d=16,o=5,b=50:32p,b,c6,b,a,32b,4g.,b,32d6,e.6,d6,32b,d6,4d.6,b,32d6,e.6,d6,b,32d6,e.6,d6,b,32d6,d.6,d6,g6,32g6,e.6,8d6,b,8b,a,b,c6,b,a,g,b,b,b,8g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (417, 1, N'-Rock-', N'Lit', N'My Own Worst Enemy', 1120, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'WorstEnemy:d=32,o=5,b=80:p,8a,8a,a#.,8c6,a#.,8a,a#.,8c6,a#.,8a,a#.,8c6,a#.,4a.,16a,8c6,a#.,8a,g.,8f,g.,4a.,8a,8a,a#.,8c6,a#.,8a,a#.,8c6,a#.,8a,a#.,8c6,a#.,4f.6,8c.6,8a.6,4f.6,8a.6,8f.6,8g.6,2f6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (418, 1, N'-Rock-', N'Marilyn Manson', N'Sweet Dreams', 2083, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'SweetDreams:d=16,o=6,b=45:32p,c#,c#,g#,c#,a,c#,g#,c#,a5,a5,e,f#,g#5,g#5,d#,e,c#,c#,g#,c#,a,c#,g#,c#,a5,a5,e,f#,g#5,g#5,d#,e')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (419, 1, N'-Rock-', N'Metallica', N'Ain''t My Bitch', 1280, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'AintBitch:d=32,o=5,b=31:32p,b4,16b4,8d,e,e,16e,16e,e,d,e,e,16g,16e,e,d,e,16e,16e,e,16e,8d,p,d,d#,e,e,16e,16e,e,d,e,e,16g,16e,e,e,e,e,16e,16e,e,16e,e,8d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (420, 1, N'-Rock-', N'Metallica', N'King Nothing', 1360, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'KingNothing:d=32,o=6,b=28:p,d,d#,e,p,e,g,e,p,e,g,e,p,a#5,a#,a5,16a,p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (421, 1, N'-Rock-', N'Monster Magnet', N'Space Lord', 960, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'SpaceLord:d=4,o=5,b=285:32p,8f.,8a#.,c.6,a#.,g#.,2c.6,2f.,f.,g#.,f.,d#.,1f,2p,8f.,8a#.,c.6,a#.,g#.,2c.6,2f.,f.,g#.,f.,8d#.,8e.,1f,32p,2f,2g#.,1a#.,1p,2a#.,2a#.,a#.,g#.,a#.,2g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (422, 1, N'-Pop-', N'MXPX', N'Chick Magnet', 1044, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'ChickMagnet:d=16,o=6,b=63:32p,f.,f.,f,f.,8c#,c#.,d#,8c#.,f,32f#,f,4c#.,32f,f,32f,f,32f,f.,f,c#.,8c#,d#,8c#.,f,f.,4c#.,32c#,c#.,8c#.,c#,a#.5,32a#5,g#.5,g#5,8a#.5,c#.,c#,a#.5,4g#.5,c#.,c#.,c#.,f,f,8c#,8c#.,c#,32c#,c#,32c#,c#.,f.,d#,c#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (423, 1, N'-Rock-Dance-', N'Nine Inch Nails', N'Perfect Drug', 2003, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'PerfectDrug:d=32,o=5,b=28:p,f#.,f#.,f#,b.,c#.6,16a#,f#,b.,c#.6,16a,f#,b.,c#.6,8a,f#.,f#.,f#,b.,c#.6,16a#,f#,b.,c#.6,16a,f#,b.,c#.6,8a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (424, 1, N'-Rock-', N'Nirvana', N'Polly', 1120, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'Polly:d=32,o=5,b=70:p,g#.,g#.,g#.,g.,16g.,2f,g#.,g#.,g#.,g.,16g.,16f.,f.,4d#.,g#.,g#.,g#.,g.,16g.,2f,g#.,g#.,g#.,g.,16g.,16f.,f.,4d#.,c#.6,c#.6,c#.6,4c6,b.,b.,b.,4a#,c#.6,c#.6,c#.6,4c6,b.,b.,b.,4a#,c#.6,c#.6,c#.6,c.6,c.6,8a#.,b.,b.,b.,4a#,c#.6,c#.6,c#.6,4c6,b.,b.,8b')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (425, 1, N'-Rock-', N'Offspring', N'Come Out And Play', 2001, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'ComeOut:d=32,o=5,b=40:p,c,c#,e,f,g,f,e,c#,c,c,c,c#,16c,16p,c,c#,e,f,g,f,e,c#,16c,16p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (426, 1, N'-Rock-', N'Offspring', N'Gone Away', 1200, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'GoneAway:d=2,o=5,b=400:32p,4e.6,e.6,c#.6,e.6,f#.6,e.6,1c#6,p.,4b.,b.,b.,c#.6,1b,1p.,4e.6,e.6,c#.6,e.6,f#.6,e.6,1c#6,p.,4e.6,e.6,e.6,4d#.6,p.,4f#.6,f#.6,f#.6,4f#.6,4f#.6,1c#7,1p.,4f#.6,4f#.6,1c#7,1p,4a.6,b.6,p.,4b.6,b.6,b.6,4a.6,4g#.6,1f#6,1p,4f#.6,4f#.6,1c#7,1p.,4f#.6,4f#.6,1c#7,1p,4a.6,b.6,4p.,4e.6,4b.6,b.6,b.6,4a.6,p.,4b.6,b.6,b.6,4a.6,4g#.6,1f#6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (427, 1, N'-Rock-', N'Orgy', N'Blue Monday', 1440, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'BlueMonday:d=16,o=5,b=70:32p,8a.,p,g#,8g#,8g#,8f#,4p,f#,8a,8a,g#,8g#,g#,8f#,4p,f#,g#,8a,8a,8g#,g#,8g#,8f#,8p.,8f#,b,8b,p,e,8e,e,8f#,4p.,f#,8c#6,8c#6,b,8b,8b,8a#,4p,f#,8c#6,8c#6,b,8b,b,8a#,4p,f#,g#,4a,g#,8g#,g#,8f#.,8p.,f#,f#,8b,8b,e,8e,e,8f#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (428, 1, N'-Rock-', N'Our Lady Peace', N'Superman''s Dead', 722, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'Superman:d=8,o=6,b=180:32p,4b5,4c#,4d,4b,4a,2f#,2e.,4p,e,d,4e,2f#,2d#,4a5,4d,4b,4a,2f#,2e.,4p,e,d,4e,2f#,2d#,4a5,4d,4b,4a,2f#,2e.,4p,e,d,4e,2f#,4d#,2b5,16a#,1b,4e.,d,e,d,e,d,d,d,e,d,d,4e,4e,4d#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (429, 1, N'-Rock-', N'Ozzy Osbourne', N'Bark At The Moon', 880, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'BarkAtMoon:d=2,o=6,b=355:32p,1a#,a#,4f,g#,a#.,1p,4g#,4g,4g#,4g,4g#,g#,g#.,4f#,d#.,p,1a#,a#,4f,g#,a#.,1p,4g#,4g,4g#,4g,4g#,g#,g#.,4f#,d#.,p,1g,4g,g.,1d#,1d#,1f,a#.,g.,1p.,1g,4g,g.,1d#,4d#,d#.,4g,f,1g.,1p,4f,4a5,4a5,a#5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (430, 1, N'-Rock-', N'Radiohead', N'Creep', 2240, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'Creep:d=8,o=5,b=80:32p,32g#.,16g#.,4c.6,2c6,32g#.,16g#.,c.6,c.6,4g,16f,2e,16c.6,32c.6,16c#.6,16c.6,32c.6,16a#.,2c6,16g#.,16a#.,16g#.,b.,1g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (431, 1, N'-Rock-', N'Rancid', N'Ruby Soho', 800, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'RubySoho:d=2,o=5,b=355:32p,c,4c,c,4c,4c,4c,4c#,4c,a#4,1c,c,4d#,d#,d#,4d#,f,d#,1d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (432, 1, N'-Rock-', N'Red Hot Chili Peppers', N'Scar Tissue', 1683, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'ScarTissue:d=2,o=5,b=355:32p,1f#,a#6,4f#,4a#6,4f#,4a#6,4f#,a#.6,f6,4f6,f#.6,f#6,4d#,4f#6,4d#,4f#6,d#,4f#6,4f6,f6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (433, 1, N'-Pop-', N'Reel Big Fish', N'She Has A Girlfriend Now', 1123, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'GotAGirl:d=32,o=5,b=50:p,g#.,g#.,g#.,16g#.,f.,d#.,4c#.,p,g#.,g#.,g#.,16g#.,f.,d#.,4c#.,p,g#.,g#.,g#.,16g#.,f.,d#.,16c#.,16c#.,16f#,16f#,16f#,16f.,16f,8c#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (434, 1, N'-Theme-TV-', N'Theme', N'Batman', 2882, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'Batman:d=2,o=5,b=635:32p,e,e,d#,d#,d,d,d#,d#,e,e,d#,d#,d,d,d#,d#,a,a,g#,g#,g,g,g#,g#,a,a,g#,g#,g,g,g#,a,e,e,d#,d#,d,d,d#,d#,e,e,d#,d#,d,d,d#,d#,b,b,a#,a#,a,a,a#,b,a,a,g#,g#,g,g,g#,a,e,e,d#,d#,d,d,1d#,e,e')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (435, 1, N'-Theme-Movie-', N'Theme', N'Beetlejuice', 962, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Beetlejuice:d=32,o=5,b=31:p,16a#.,f,8f#,16f.,f#,8e,16f.,a#4,8c#,16e.,c,16d#.,c#,4a#4')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (436, 1, N'-Theme-TV-', N'Theme', N'Days Of Our Lives', 562, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'DaysOfOurL:d=16,o=5,b=63:32p,8f.6,4c.6,g#.,a#.,4b.,d#.6,c#.6,a#.,g#.,a#.,c#.6,4c#.,8g#.,8f#.,f.,d#.,c#.,d#.,8f.,8g#.,8c.6,8a#.,2c#.6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (437, 1, N'-Theme-TV-', N'Theme', N'Pinky And The Brain', 2965, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'PinkyBrain:d=16,o=5,b=45:32p,32c,f,32e,f,32g#,8e.,32c,f,32e,f,32g#,8e.,32c,f.,f,32g#,32b,8b,32b,c6,32a#,g#.,8g.,a#.,a#,32c#6,8a.,32f,a#,32f,a#,32c#6,8a.,32c,c,c.,32c,c,32c,d,32e,f.,d#.,c#.,c.,f.,d#.,c#.,c.,4f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (438, 1, N'-Theme-Movie-', N'Theme', N'Princess Bride', 802, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'PrincessB:d=8,o=5,b=63:32p,f#,f#,e,4f#.,d,4g,g,a,16f#,16e,4d.,p,f#,f#,e,4f#.,d,e,4e,d,4d.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (439, 1, N'-Theme-TV-', N'Theme', N'Rescue Rangers', 883, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'ChipDale:d=4,o=5,b=285:32p,a#,a#,a#,a#,2a#,1g#.,2f,c#,2d#,a#,a#,a#,a#,2a#,2g#,g#,f#,2f,1c#,f#,f#,f#,f#,2f#,2g#.,2f#,e,2d#,2e.,2c#,2d#,2e,g#,2f#,2f#,2e,f#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (440, 1, N'-Theme-TV-', N'Theme', N'Seinfeld', 803, CAST(N'2001-06-18T00:00:00.000' AS DateTime), N'Seinfeld:d=16,o=5,b=56:32p,c#.,32c#,f,g#,8b,f.,f#.,8f#,e,8d#,d.,c#,32c#,c#,d#,d#,8e,f.,8f#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (441, 1, N'-Theme-TV-', N'Theme', N'Wheel Of Fortune', 642, CAST(N'2001-06-05T00:00:00.000' AS DateTime), N'WheelOfF:d=16,o=5,b=63:32p,g#.,f#.,g#.,f#.,g#,a,g#.,f#.,g#.,f#.,g#,a,g#.,f#.,g#.,a.,b,c#6,2e6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (442, 1, N'-Traditional-', N'German Traditional', N'Chicken Dance', 1123, CAST(N'2001-06-19T00:00:00.000' AS DateTime), N'ChickDance:d=32,o=5,b=50:g#,g#,a#,a#,f,f,16g#,g#,g#,a#,a#,f,f,16g#,g#,g#,a#,a#,c#6,c#6,16c6,16c6,16a#,16g#,16f#,f#,f#,g#,g#,d#,d#,16f#,f#,f#,g#,g#,d#,d#,16f#,f#,f#,g#,g#,a#,c6,16c#6,16a#,16g#,16f,16c#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (443, 1, N'-Rock-', N'4 Non Blondes', N'What''s Up', 1760, CAST(N'2001-06-19T00:00:00.000' AS DateTime), N'WhatsUp:d=32,o=5,b=45:16g#,a#,8g#,16f6,c#,8c#.,g#,16g#,f#,16f,16f6,c#6,16c#6,8f#.6,g#6,g#6,c#6,d#6,d#6,16f6,c#6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (444, 1, N'-Pop-', N'Belinda Carlisle', N'Heaven Is A Place On Earth', 1443, CAST(N'2001-06-26T00:00:00.000' AS DateTime), N'PlaceOnEarth:d=8,o=5,b=225:2d#,4d#.,d#.,d#.,d#.,4f.,4g.,2g.,2g,4g#.,g.,f.,d#.,4f.,f.,d#.,f.,2d#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (445, 1, N'-Rap-', N'Coolio', N'Gangsta''s Paradise', 5041, CAST(N'2001-06-26T00:00:00.000' AS DateTime), N'Gangstas:d=4,o=5,b=112:d#,f,8d#,d,c,c,8d#,8d#,d,8g4,g4,d,8d#,d,8c,2c,d#,f,8d#,d,c,c,8d#,8d#,d,8g4,g4,d,8d#,d,8c,2c,8b4,2g4')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (446, 1, N'-Rock-', N'Counting Crows', N'Hanging Around', 640, CAST(N'2001-06-26T00:00:00.000' AS DateTime), N'HanginAround:d=8,o=5,b=100:16g,g,16g,16a,16b,2c6,a.,g,p,g,p,a,p,16g,16p,g.,16g,16a,16b,c.6,c6,16b,c.6,4c6,c6,b,2g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (447, 1, N'-Traditional-', N'Henry Mancini', N'Baby Elephant Walk', 1440, CAST(N'2001-06-26T00:00:00.000' AS DateTime), N'BabyElephant:d=8,o=6,b=160:4f#5,16a#.5,c#.,f#.,a#.,g#.,f#.,d#.,c.,1c#,4f#5,16a#.5,c#.,f#.,a#.,g#.,f#.,d#.,1c#,d#.,1a5,d#.,32g#5,a5,1f#5,4f#5,16a#.5,c#.,f#.,a#.,g#.,f#.,d#.,c.,1c#,32g,4g#.,32g,4g#.,32e,f,2c#,32f,4f#.,4f#.,16e.,16f#.,16e.,16c#.,b.5,a.5,32b5,4c.,4c.,16b.5,16c.,16b.5,16a.5,f#.5,c#.5,e.5,16f#.5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (448, 1, N'-Rock-', N'Jars Of Clay', N'Flood', 880, CAST(N'2001-06-26T00:00:00.000' AS DateTime), N'Flood:d=32,o=5,b=40:16c#.6,c#.6,b.,b.,4b,c#6,c#.6,c#6,8b.,d#.6,c#.6,b.,4d#6,c#.6,c#.6,b.,b.,4b,c#.6,c#.6,c#.6,c#6,c#6,8b.,d#.6,c#.6,b.,16d#.6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (449, 1, N'-Pop-', N'Madonna', N'Like A Virgin', 1683, CAST(N'2001-06-26T00:00:00.000' AS DateTime), N'LikeAVirgin:d=16,o=5,b=80:c#,d#,8f#,2d#,8g#,g#,32f#.,g#,g#,8c#6,2a#,c#,d#,8a#,8g#,f#,8g#,4d#.,32f#.,g#,8f#,4d#.,c#,32a#.,f#,g#,8f#,g#,f#,f,8d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (450, 1, N'-Classical-', N'Mozart', N'Ein Klein Nachtmusic', 2167, CAST(N'2001-06-26T00:00:00.000' AS DateTime), N'EinKlein:d=32,o=5,b=63:8g#,d#.,8g#,d#.,g#.,d#.,g#.,c.6,8d#.6,8c#6,a#.,8c#6,a#.,c#.6,a#.,g.,a#.,8d#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (451, 1, N'-Rock-', N'New Radicals', N'Someday We''ll Know', 960, CAST(N'2001-06-26T00:00:00.000' AS DateTime), N'SomeDay:d=4,o=5,b=250:g,g,a,f,p,c,d,d,c,2d,c,2d,2f,p,g,g,a,f,p,2a,g,2f,d,2c,p,g,g,a,f,p,c,d,d,c,2d,2f,1g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (452, 1, N'-Pop-', N'Rick Asley', N'Together Forever', 724, CAST(N'2001-06-26T00:00:00.000' AS DateTime), N'TogetherForever:d=8,o=5,b=225:4d#,f.,c#.,c.6,4a#.,4g.,f.,d#.,c.,4a#,2g#,4d#,f.,c#.,c.6,2a#,g.,f.,1d#.,d#.,4f,c#.,c.6,2a#,4g.,4f,d#.,f.,g.,4g#.,g#.,4a#,c.6,4c#6,4c6,4a#,4g.,4g#,4a#,2g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (453, 1, N'-Pop-', N'Sting', N'Every Little Thing She Does', 562, CAST(N'2001-06-26T00:00:00.000' AS DateTime), N'Magic:d=16,o=5,b=80:a,a,a,a,8e,d,e,p,8d,f#,p,8a.4,a,a,a,a,e,8d,e,p,8d,4f#,a,a,a,a,e,8d,e,p,8d,f#,p,8a.4,a,a,a,a,e,8d,e,p,8d,4f#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (454, 1, N'-Theme-TV-', N'Theme', N'Andy Griffith Show', 1122, CAST(N'2001-06-26T00:00:00.000' AS DateTime), N'AndyGriffith:d=4,o=6,b=180:8a5,b5,2d,a.,8g,f#,d,a.,8g,f#,d,b5,d,f#,8d,e,8a5,b5,2d,a.,8g,f#,d,a.,8g,f#,d,e,8c#,d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (455, 1, N'-Theme-TV-', N'Theme', N'Brady Bunch', 1362, CAST(N'2001-06-26T00:00:00.000' AS DateTime), N'BradyBunch:d=16,o=5,b=80:d#.,f#.,g#.,4f#.,f#.,b.,c#.6,d#.6,2b,b.,c#.6,8d#6,8d#6,d#.6,e.6,d#.6,c#.6,b.,2c#6,32a#.,32b.,8c#.6,4c#.6,c#.6,b.,c#.6,b.,2a#,b.,a#.,g#.,8f#.,8e.,2d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (456, 1, N'-Theme-Movie-', N'Theme', N'Exorcist', 2402, CAST(N'2001-06-26T00:00:00.000' AS DateTime), N'Exorcist:d=32,o=5,b=35:c#,f#,c#,g#,c#,e,f#,c#,a,c#,b,c#,g#,a,c#,g#,c#,f#,c#,g#,c#,e,f#,c#,a,c#,b,c#,g#,a,c#,g#,c#,f#,c#,g#,c#,e,f#,c#,a,c#,b,c#,g#,a,c#,g#,c#,f#,c#,g#,c#,e,f#,c#,a,c#,b,c#,g#,a,c#,g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (457, 1, N'-Theme-TV-', N'Theme', N'Star Trek (Original Show)', 962, CAST(N'2001-06-26T00:00:00.000' AS DateTime), N'StarTrekOrig:d=32,o=5,b=40:8f#,8e.6,16d#6,c#.6,b.,a#.,4a,16g.,8f#,8f#.6,16e6,d#.6,c#.6,b.,4a#,16a,8g#.,16a#,16b,c#.6,d#.6,e6,d#.6,4f#6,8a.6,16g#6,8f#6,4g#,8c#6,2b.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (458, 1, N'-Theme-TV-', N'Theme', N'Star Trek (Next Generation)', 1122, CAST(N'2001-06-26T00:00:00.000' AS DateTime), N'StarTrekTNG:d=32,o=6,b=63:8f#.5,b.5,d#.,8c#.,a.5,g#.,4f#.,a.5,e.,f#.,g#.,e.,8d#,8c#,8b.5,d#.,b.5,2c#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (459, 1, N'-Rock-', N'Smiths', N'Girlfriend In A Coma', 880, CAST(N'2001-07-20T00:00:00.000' AS DateTime), N'GirlComa:d=32,o=6,b=40:a#.5,c.,c.,a#.5,a#.5,c.,c.,8g#5,c.,8a#5,16c#.,c#.,c.,4c,a#.5,c.,c.,a#.5,a#.5,c.,c.,16c.,16c.,16a#.5,a#.5,c#.,c#.,16c#.,c.,8c')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (460, 1, N'-Rock-', N'Smiths', N'Bigmouth Strikes Again', 1440, CAST(N'2001-07-20T00:00:00.000' AS DateTime), N'Bigmouth:d=32,o=5,b=50:16c.6,4a,16c.6,16c.6,16c.6,c.6,c.6,d.6,16c.6,16a#.,a.,16g.,16a.,16a.,16a#.,8a,16a.,g.,16f.,16e.,16g.,f.,4e.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (461, 1, N'-Rock-', N'Smiths', N'There Is A Light That Never Goes Out', 1120, CAST(N'2001-07-20T00:00:00.000' AS DateTime), N'SmithLight:d=32,o=5,b=50:16f.,g.,4a,16p,f.,16f.,g.,4a.,16p,f.,f.,a.,a.,f.,f.,a.,a.,f.,f.,a.,a.,a.,8a#,a.,g.,4f,16p,a.,c.6,16a.,a.,16c.6,4a,16c.6,16c.6,c.6,c.6,c.6,c.6,a#.,a.,8a.,g.,f.,f.,f.,g.,16a#.,4a,8p,f.,f.,16f.,g.,8d.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (462, 1, N'-Pop-', N'Brian McKnight', N'Back At One', 1761, CAST(N'2001-07-20T00:00:00.000' AS DateTime), N'BackAtOne:d=8,o=4,b=70:32p,16b,16d#5,16e5,16d#5,16c#5,16b,4b.,16g#,b,16g#,b,16g#,b.,c#.5,p,16g#,e.5,e5,16e5,e5,d#5,c#5,b,16d#5,16b,2c#5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (463, 1, N'-Techno-', N'Eiffel 65', N'Another Race', 2163, CAST(N'2001-07-20T00:00:00.000' AS DateTime), N'AnotherRace:d=4,o=5,b=140:32p,8c,8d,d#,c,f,d,d#,8c,g.4,16p,8c,8d,d#,c,f,d,g,8f,d#.,16p,8c,8d,d#,c,f,d,d#,8c,g.4,16p,8c,8d,d#,c,d,8a#4,c.,32p,8a#4,c.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (464, 1, N'-Techno-', N'Eiffel 65', N'Too Much Of Heaven', 1443, CAST(N'2001-07-20T00:00:00.000' AS DateTime), N'TooMuchHeaven:d=4,o=5,b=180:32p,c6,d#6,c6,f.6,d#.6,f6,2p,a#.,f6,8f6,f6,d#6,g#.,2p,d#.6,2f.6,2p,d#.6,g6,8g#6,g6,f6,d#.6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (465, 1, N'-Oldies-', N'Elvis Presley', N'Love Me Tender', 1040, CAST(N'2001-07-20T00:00:00.000' AS DateTime), N'Tender:d=4,o=5,b=140:32p,d,g.,f#,g.,a.,e,a.,8p,g.,f#,e.,f#,g.,8p,d.,g,f#.,g,a.,e,a.,8p,g.,f#,e.,f#,g.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (466, 1, N'-Dance-', N'Jennifer Paige', N'Crush', 1123, CAST(N'2001-07-20T00:00:00.000' AS DateTime), N'Crush:d=8,o=5,b=112:32p,4g#,4c#6,4p,p,g#,g#,b,b,4p,p,f#,f#,a,4g#,p,4g#,f#,e,f#,f#,4e.,4p,4g#,4c#6,4p,p,g#,g#,b,4b,p,f#,e,4a,a,g#,f#,f#,4e.,p,c#,e,g#,f#,16e.,c#,2c#,e,4d#,d#,c#,c#,16b4,4g#4')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (467, 1, N'-Pop-', N'LFO', N'Girl On TV', 881, CAST(N'2001-07-20T00:00:00.000' AS DateTime), N'GirlOnTV:d=8,o=5,b=100:32p,16g,16g,16a,16b,16c6,b,g,e,4a.,4p,2p,g,a,b,c6,b,4a,4g.,4p,2p,b,4a.,b,a,a,16a,16a,g,b,4b,4p,16g,16g,g,g,a,4g,4p,b,b,a,a,a,16g,g.,16a,16a,a,g,4g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (468, 1, N'-80s-', N'Michael Jackson', N'Beat It', 2480, CAST(N'2001-07-20T00:00:00.000' AS DateTime), N'BeatIt:d=8,o=6,b=160:32p,4e5,g5,b5,g,e,4p,4f#,e,d,p,4d,p,4e5,g5,b5,g,e,4p,4f#,e,4d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (469, 1, N'-80s-', N'Michael Jackson', N'Black Or White', 1360, CAST(N'2001-07-20T00:00:00.000' AS DateTime), N'BlackWhite:d=8,o=6,b=125:32p,b5,e,g#,a,g#,e,b5,a5,g#5,a5,2b5,p,16b5,16b5,e,g#,a,g#,e,b5,a5,g#5,a5,4b.5,p,16b5,16b5,c#,16c#,e,16e,f#.,16e,e,p,16e,16e,c#,c#,e,e,f#,e,f#,4g#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (470, 1, N'-Latin-', N'Ricky Martin', N'Cup Of Life', 1441, CAST(N'2001-07-20T00:00:00.000' AS DateTime), N'CupOfLife:d=8,o=5,b=140:32p,b,p,b,p,4b,p,g,a,a,c6,a,4b,4p,b,p,b,p,4b,p,g,a,a,g,f#,4g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (471, 1, N'-Pop-', N'Spice Girls', N'Two Become One', 963, CAST(N'2001-07-20T00:00:00.000' AS DateTime), N'2Become1:d=4,o=6,b=140:32p,f,8d#,f.,d#,f.,8a#5,c#,d#,c#,8d#,c#.,d#,c#,8f#5,f#.5,g#5,a#5,c#,a#5,2d#,2c#.,p,f,8d#,f.,d#,f,8a#5,c#.,d#,c#,8d#,c#,d#,c#,8f#5,f#.5,g#5,a#5,c#,a#5,2d#,2c#.,d#,f#,d#,g#.,2f#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (472, 1, N'-Disney-', N'Aladdin', N'Whole New World', 3284, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'WholeNewWorld:d=16,o=6,b=40:32p,g.,32f.,g#.,32g.,d#.,4a#5,g.,32f.,g#.,32g.,d#.,8g.,8f.,f.,32e.,g.,32f.,d.,f.,d#.,d.,d#.,32c.,d.,f.,d#.,8a#.5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (473, 1, N'-Disney-', N'Aladdin', N'Prince Ali', 2482, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'PrinceAli:d=16,o=5,b=45:32p,f#,f#,f#.6,e6,32f#6,e6,d.6,c#6,32d6,c#6,b.,4f#,f,f#,b.,a,32b,a,g.,f#,32g,f#,8e.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (474, 1, N'-Pop-', N'Alanis Morissette', N'Ironic', 1363, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'Ironic:d=16,o=5,b=40:32p,32g,g,c6,32b,4g,32g,32e,32g,8g,8a,32g,g,c6,32b,a,32a#,a,4g,32g,32e,a,g,a,8e,32g,g,c6,32b,4g,32g,32e,g,g,g,4a,32g,a#,a,g,8a,f,32a,4g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (475, 1, N'-Dance-80s-', N'Temperance - Alphaville', N'Forever Young', 1844, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'4everYoung:d=32,o=6,b=50:p,g#.,8a#,g#.,8g#.,d#.,f.,f#.,8f,g#.,8f#,f.,4c#,d#.,d#.,d#.,d#.,f.,f#.,16f.,d#.,16c#.,8a#.5,c#.,16c#.,8a#.5,d#.,8f,8d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (476, 1, N'-Rock-', N'Bloodhound Gang', N'Fire Water Burn', 802, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'FireWater:d=8,o=5,b=90:32p,a#4,4c.,a#4,4c.,a#4,c,c,c,c#,2c,d#,d#,d#,d#,d#,4d#,d,c#,c#,c#,c#,2c#,4c#,c#,c#,c#,4c#.,2g#4')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (477, 1, N'-Country-', N'Bonnie Raitt', N'Something To Talk About', 643, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'ToTalkAbout:d=16,o=5,b=80:32p,a.,a.,a.,a.,8c#.,8d.,d.,2e,a.,a.,a.,a.,8c#.,8d.,d.,8e.,c#.,e.,f#.,8f#.,8a.,8c.6,b.,a.,8a.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (478, 1, N'-Techno-', N'Fatboy Slim', N'Praise You', 1843, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'PraiseYou:d=32,o=5,b=31:p,a,a,a,16a,16a,16a,c6,16c6,8b.,e6,e6,16e6,16e.6,d6,c6,8a.,a,c6,16a.,c6,a,16c6,c6,16b,8b,e6,e6,e6,16e6,16e6,d6,16c6,4a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (479, 1, N'-Oldies-', N'Fifth Dimension', N'Aquarius', 640, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'Aquarius:d=16,o=5,b=40:32p,c#6,d#6,c#6,f6,d#6,c#6,b,8b,b,a#,b,32c#6,8d#6,32p,8b,b,a#,b,32c#6,4d#6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (480, 1, N'-Rock-', N'Garbage', N'Only Happy When It Rains', 1120, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'HappyWhenRain:d=32,o=6,b=40:p,d#.,d.,c.,d.,c.,d.,c.,4e.,16p,d#.,d.,c.,d.,c.,d.,c.,16e.,a.5,16c.,8d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (481, 1, N'-Rock-', N'Gin Blossoms', N'Hey Jealousy', 802, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'HeyJealousy:d=4,o=5,b=225:32p,8d.,2f,f.,d#.,d#.,8d.,1c.,c.,d.,d.,8d#.,d.,1c,f.,8f.,2f,d#.,d#.,8d.,1c.,c.,d.,d.,8d#.,d.,1c')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (482, 1, N'-Rock-', N'Green Day', N'Walking Contradiction', 800, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'WlkngCntrdctn:d=1,o=6,b=635:32p,d,d,d#,2d#,d#,d#,2f,2f,2d#,2d,2a#5,d,d,d#,2d,c,c,2d,d.,2a#5,d,d,2d#,d#,d#,d#,f,2d#,2d,2a#5,d,d,2c,a#5,c,g#5,2a#5,a#.5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (483, 1, N'-Rock-', N'Jamiroquai', N'Virtual Insanity', 1041, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'VirtualInsantiy:d=16,o=6,b=63:32p,32g.,32a,b,8b,8a,g.,32d.,e.,8e,8g.,32d,a.,32a.,g.,d.,e.,e.,8e.,32d.,e.,4g,32b5,32d.,8e,8g.,g.,32e,d,8e,8d,8g,8e.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (484, 1, N'-Oldies-', N'Kingsmen', N'Louie Louie', 960, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'LouieLouie:d=32,o=5,b=31:p,c6,c6,c6,8c#.6,16d#.6,16c#6,a#,g#,c6,g#,16g#.,c#6,16c#.6,g#6,f#6,d#6,c#6,g#,g#,g#,c6,c6,c6,8c#.6,16d#.6,c#6,16d#6,a#,g#,c6,g#,8g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (485, 1, N'-Disney-', N'Lion King', N'Can  You Feel The Love Tonight', 2083, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'FeelLove:d=16,o=5,b=40:32p,8c#6,a#,8g#.,c#6,8a#.,f#,4d#,p,32c#,32f#,8b.,a#,4g#,p,32d#,32f,8f#.,32c#,c#,8c#6,8a#,32f#,32f#,4d#,8b,8a#,8g#,a#,4g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (486, 1, N'-Disney-', N'Lion King', N'Can''t Wait To Be King', 1281, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'CantWait:d=16,o=5,b=40:32p,32d#,32d#,d#,f,g#,c6,a#,8g#,32d#,32f,g#,g#,a#,8g#,p,32d#,32f,g#,g#,f,b,a#,8g#,32g#,32c6,g#,g#,g#,8g#.,p,32f,g#,8b,32a#,g#,8d#6,32a#,g#,4g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (487, 1, N'-Disney-', N'Lion King', N'Hakuna Matata', 2081, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'HakunaMatata:d=32,o=6,b=35:p,e,f.,f.,d#,8c#.,a#.5,c#,c#.,a#5,c#.,8d#.,16p,f.,f.,d#,c#.,8c#.,f.,f.,d#,8d#.,d#,e.,d#,e,d#,16c#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (488, 1, N'-80s-', N'Naked Eyes', N'Always Something There To Remind Me', 883, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'AlwaysSomething:d=4,o=6,b=225:32p,g.,g.,g#.,g,f.,g.,8g#.,g.,2d#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (489, 1, N'-Rock-', N'Nirvana', N'All Apologies', 1040, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'AllApologies:d=16,o=5,b=63:32p,f#,g,f#,a,a,g,8f#,f#,g,f#,d6,d6,c6,8b,f#,g,f#,a,a,g,8f#,f#,g,f#,f#6,f#6,e6,8d6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (490, 1, N'-Rock-', N'Nirvana', N'Heart Shaped Box', 800, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'HeartShaped:d=16,o=5,b=28:32p,32a,32b,32c6,d6,e6,d6,c6,b,8c6,b,a,8a.,32a,32b,32c6,d6,e6,d6,c6,b,8c6,b,a,8a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (491, 1, N'-Rock-', N'Nirvana', N'Lake Of Fire', 880, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'LakeOfFire:d=8,o=5,b=225:32p,f#.,g#.,4g#.,4g#.,f#.,f#.,4f#.,2b,f#.,4g#.,g#.,g#.,g#.,g#.,c#.,c#.,4f.,4f.,f.,4d#.,d#.,g#.,g#.,g#.,4g#.,2g#,f#.,f#.,4f#.,2b4,b.4,c#.6,c#.6,c#.6,4c#.6,4c#.6,f#.,f#.,f#.,4f#.,f#.,4g#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (492, 1, N'-Rock-', N'Nirvana', N'Pennyroyal Tea', 880, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'Pennyroyal:d=32,o=6,b=45:p,g#.5,4a#.5,g#.5,8a#.5,16a#.5,16c.,4a#.5,p,g#.5,4a#.5,g#.5,8a#.5,16a#.5,16c.,4a#.5,p,d#.,16f.,8f,d#.,d#.,d#.,8d#,4f#.,p,16f.,f.,16f.,16d#.,d#.,d#.,8d#,2f#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (493, 1, N'-Rock-', N'Nirvana', N'Plateau', 640, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'Plateau:d=16,o=5,b=40:32p,g,g,8a#,g,g,8a#,g,g,8a#,4f,g,g,a#,a#,g,8f.,g,g,f,d#,4c')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (494, 1, N'-Rock-', N'Nirvana', N'Man Who Sold The World', 2560, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'ManWhoSold:d=16,o=5,b=31:32p,a#,g#,f#,f,32d#,8f.,32f,g#,32g#,b,32g#,32g#,8a#.,a#,g#,f#,f,32d#,8f.,32f,g#,32g#,b,32g#,32g#,8a#.,a#,c#6,c#6,b,32a#,8g#.,32c#6,d#6,d#6,c#6,b,a#,a#,a#,a#,b,32a#,8f#.,32a#,g#,f#,f#,32g#,f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (495, 1, N'-Rock-', N'Nirvana', N'Verse Chorus Verse', 640, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'NirvanaVCV:d=8,o=6,b=63:32p,d,e,f,e.,16d,4b.5,a5,4c#,e.,16d,16e,4f.,16d,e,f,e.,16d,4b.5,a5,4c#,e.,16d,16e,f.,2d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (496, 1, N'-Oldies-', N'Peter Gabriel', N'Games Without Frontiers', 560, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'GamesFrontiers:d=16,o=5,b=63:32p,32b.,b.,8b,b.,32c.6,4b,32b.,b.,8a,g.,4g.,32a.,a.,8a,a.,32b.,4a,32b.,32b.,b.,32a.,32a.,32g.,4g,8p,g.,g.,f#.,f#.,e.,32e.,32e.,d.,d.,e.,8g,32g.,32f#.,f#.,4e.,8d,32d.,d.,4e.,32g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (497, 1, N'-Pop-', N'Samantha Mumba', N'Gotta Tell You', 803, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'GottaTellU:d=4,o=6,b=285:32p,g#.5,c#.,d#.,e.,e.,e.,2a.5,2b.5,2a.5,1g#.5,g#.5,c#.,d#.,e.,e.,e.,2d#.,2d#.,2d#.,2f#.,2e.,g#.5,c#.,d#.,e.,e.,e.,2d#.,d#.,d#.,2f#.,e.,d#.,e.,2c#.,c#.,1d#.,g#.,g#.,g#.,a.,2g#.,f#.,1g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (498, 1, N'-Theme-Movie-', N'Willy Wonka', N'Pure Imagination', 1121, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'PureImagination:d=16,o=5,b=25:32p,c#,e,8b,c#,e,8b,c#,e,d#.6,32e6,32d#6,32e6,32d#6,32e6,d#6,b,c#,e,8g#,a,b,8g#,f#,e,32d#,32e,32d#,32e,d#,4b4')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (499, 1, N'-Rock-', N'Space Hog', N'In The Meantime', 800, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'InTheMeantime:d=16,o=6,b=63:32p,a#.5,d.,f.,g.,f.,32c#.,c.,4a#5,32f#.,32g#.,32a#.,32g#.,32a#.,32g#.,32f#.,d.,8c#,a#.5,d.,f.,g.,f.,32c#.,c.,4a#.5,g.5,8f.5,2d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (500, 1, N'-Rock-', N'Stone Temple Pilots', N'Dead And Bloated', 1201, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'DeadBloated:d=32,o=5,b=50:p,16d#.,8f#.,c#.,d#.,d#.,c#.,16d#.,d#.,c#.,d#.,c#.,16d#.,16d#.,d#.,c#.,16d#.,16f#.,16f#.,8f#,8p,16d#.,8f#.,c#.,d#.,d#.,c#.,16c#.,c#.,c#.,d#.,c#.,16f#.,16f#.,d#.,c#.,16d#.,16f#.,16f#.,8f#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (501, 1, N'-80s-', N'Styx', N'Mr Roboto', 1041, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'MrRoboto:d=32,o=6,b=50:p,b.5,8a5,d.,8c#,a.5,8g5,p,d.,d.,d.,16e,p,d.,d.,d.,d.,e.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (502, 1, N'-Theme-TV-', N'Theme', N'Gilligan''s Island', 1122, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'Gilligan:d=2,o=5,b=355:32p,1a#,d#,a#,a#,4a#,4a#,g#,f,1c#,32p,4c#,d#,a#,a#,a#,1g#,4p,a#,d#,a#,a#,4a#,4a#,g#,c#6,c#6,g#,1f#,f,c#,1d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (503, 1, N'-Theme-Movie-', N'Theme', N'Jurassic Park', 1603, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'JurassicPark:d=32,o=6,b=28:p,b5,a#5,8b5,16p,b5,a#5,8b5,16p,b5,a#5,16b.5,c#,16c#.,e,8e,16p,d#,b5,16c#.,a#5,16f#5,d#,b5,8c#,16p,f#,b5,16e.,d#,16d#.,c#,8c#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (504, 1, N'-Theme-Movie-', N'Theme', N'Naked Gun', 1283, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'NakedGun:d=16,o=5,b=90:f#,32p,8c6,4c#6,8a,8f#,32p,f#,8c6,8c#6,f#,g#,a,f#,8b,32p,f#,8a#,4b,8g#,8f#,32p,e,8a#,8b,f#,g,g#,e,b')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (505, 1, N'-Theme-Movie-', N'Theme', N'Romeo And Juliet', 1522, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'RomeoJuliet:d=16,o=6,b=35:32p,g#,b,a#,4d#,p,d#,f#,d#,4g#,p,g#,f#,e,4f#,p,f#,e,d#,4c#,p,32d#,32c#,b5,c#,4d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (506, 1, N'-Theme-TV-', N'Theme', N'Transformers', 2082, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'Transformers:d=32,o=6,b=45:p,f5,16a#5,c,4c#,16a#5,c,16c#,f#5,4f#5,a#5,c,16c#,16c#,16d#,16f,f#,16d#,c#,16d#,f,16c#,c,16c#,d#,16c.,a#5,a5,c,a#5,8a#5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (507, 1, N'-Rock-', N'Tom Petty', N'Freefalling', 800, CAST(N'2001-07-22T00:00:00.000' AS DateTime), N'Freefalling:d=2,o=5,b=160:32p,8f#,4f#,a#.,b.,4p,4b,a#,g#,4p,a#,g#,f#.,4p,4b,a#,g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (508, 1, N'-Oldies-', N'Beatles', N'Help', 880, CAST(N'2001-08-06T00:00:00.000' AS DateTime), N'BeatleHelp:d=4,o=5,b=200:32p,g,8g,g.,g,g,f,e,d,f.,8e,2d.,p,8e,f,g.,8g,g.,8g,g.,f,8e,d.,f.,8e,2d.,p,g,8g,g.,g,g,f,e,d,f.,8e,2d.,p,g,g,2e.6,p,8d6,c.6,8g,f.,2e')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (509, 1, N'-Dance-', N'Cardigans', N'Lovefool', 1121, CAST(N'2001-08-06T00:00:00.000' AS DateTime), N'LoveFool:d=4,o=5,b=140:32p,8g,8p,8e,8g,8p,8e,8p,b,a,8g,8f#,8p,8e,8p,8f#,8p,8d,8f#,8p,8d,8p,8f#,8p,g,8f#,g,a,g,e,g,d#,d,e,f#,a,2g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (510, 1, N'-Rock-', N'Filter', N'Take Your Picture', 880, CAST(N'2001-08-06T00:00:00.000' AS DateTime), N'TakePicture:d=4,o=5,b=112:32p,8b,b.,b,e6,e6,2e6,p,8c#6,c#.6,c#6,c#6,a,2a,p,8b,b.,b,e6,e6,e6,8d6,c#6,8p,8c#6,c#.6,c#6,c#6,a,2a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (511, 1, N'-Latin-', N'Jennifer Lopez', N'Love Don''t Cost A Thing', 1281, CAST(N'2001-08-06T00:00:00.000' AS DateTime), N'CostAThing:d=4,o=6,b=225:32p,8g,8g,8g,8g,a,b,a,g,8e.,p,8g,8g,8g,8g,a,b,a,g,8e.,2p,8e,8f#,8f#,8e,8e,e,b5,2e,2f#,2g,2d,2c,p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (512, 1, N'-Latin-', N'Jennifer Lopez', N'Play', 1361, CAST(N'2001-08-06T00:00:00.000' AS DateTime), N'JLo-Play:d=16,o=5,b=140:32p,g,32p,g6,g,p,a,8p,a6,8p,a,g,4p,a,8p,a6,8p,a,g,32p,g6,g,p,a,8p,a6,8p,a,g,4p,a,8p,a6,8p,a,g,32p,g6,g,p,a,8p,a6,8p,a6,8p,a,a,8p,a6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (513, 1, N'-Rock-', N'Limp Bizkit', N'My Way', 2880, CAST(N'2001-08-06T00:00:00.000' AS DateTime), N'MyWay:d=16,o=5,b=100:32p,8a,8f#,f#,f#,f#,f#,8a,8f#,8f#,8p,8g,8g,g,g,g,g,8g,8a,8f#,8p,f#,f#,8f#,8f#,8a,8f#,8p,8f#,8g,8g,8p,8c,8c,c,c,8f,8d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (514, 1, N'-Rap-', N'Missy Elliott', N'Get Ur Freak On', 6641, CAST(N'2001-08-06T00:00:00.000' AS DateTime), N'GetUrFreak:d=8,o=5,b=180:32p,g,p,g,g,g,g#,4d#,g,p,g,g,g,g#,4d#,g,p,g,g,g,g#,4e,g,p,g,g,g,g#,4d#,g,p,g,g,g,g#,4d#,g,p,g,g,g,g#,4d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (515, 1, N'-Rock-', N'Muse', N'Newborn', 1200, CAST(N'2001-08-06T00:00:00.000' AS DateTime), N'Newborn:d=8,o=5,b=160:32p,4b,4a,4g.,g,2f#.,p,f#,4b,4a,4g.,g,2f#.,p,f#,2b,2g,2c6,2b,b.,a.,2b,4p,b,b,p,2e6,4b.,a,2b,2e6,4b.,a,2b')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (516, 1, N'-Rap-', N'Nelly', N'Ride Wit Me', 8401, CAST(N'2001-08-06T00:00:00.000' AS DateTime), N'RideWitMe:d=8,o=5,b=225:32p,4d,a,b,b,b,b,b,b,b,4a,a,4a.,a,a,g,g,g,g,g,g,g,g,4g,g,4a.,4g,4g.,4d.,4d,2d,2a,2g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (517, 1, N'-Rock-', N'Nirvana', N'Silver', 960, CAST(N'2001-08-06T00:00:00.000' AS DateTime), N'Silver:d=32,o=5,b=45:p,16c#6,c#6,c#6,16f#,f#,f#,16c#6,c#6,16a#,g#,a#,c6,16c#6,c#6,c#6,16f#,f#,f#,16c#6,c6,16a#,g#,a#,c6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (518, 1, N'-Rock-', N'Placebo', N'Every You And Every Me', 1360, CAST(N'2001-08-06T00:00:00.000' AS DateTime), N'EveryU-Me:d=8,o=6,b=140:32p,d,d,d,16d,16d,d,d,d,d,a#5,a#5,a#5,16a#5,16a#5,c,c,c,c,d,a5,f#5,d,a5,f#5,d,a5,a#5,f5,d5,c,g5,e5,c,g5,d,a5,f#5,d,a5,f#5,d,a5,a#5,f5,d5,c,g5,e5,c,g5,4d.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (519, 1, N'-Pop-', N'Robbie Williams', N'Angels', 1763, CAST(N'2001-08-06T00:00:00.000' AS DateTime), N'RW-Angels:d=4,o=5,b=160:32p,8f,a,8a,c6,8a,2g6,p,8f6,g6,8f6,g6,f6,a6,f6,p,8d6,8f6,8d6,f6,f6,8d6,g6,f6,p,8c6,d6,d6,8d6,8c6,2c6,p,a,g,8f,a,2g,p,a#,a,g,f,d#,a#,a#,a#,a,g,f,2f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (520, 1, N'-Oldies-', N'Rolling Stones', N'Sympathy For The Devil', 800, CAST(N'2001-08-06T00:00:00.000' AS DateTime), N'SympathyDevil:d=16,o=6,b=63:32p,8g#,8g#,g#.,a.,g#,8g#,8g#,g#.,a.,g#,8f#,8f#,f#.,g.,g,8f#,8f#,f#.,g.,f#,8b5,f#,32e,f#.,8f#,8p,8f#,e,f#.,e.,8e')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (521, 1, N'-Rock-', N'Smashing Pumpkins', N'Disarm', 1440, CAST(N'2001-08-06T00:00:00.000' AS DateTime), N'Disarm:d=8,o=4,b=140:32p,g,4a,4a,a,4a,4a#,2p,a,d5,4c5,4c5,4a,d5,p,4c5,4a#,4a,p,4a,4a,a,4f,4f,2p,f,d5,4c5,4c5,4a,4d5,4c5,a#,p,4c5,c5,2p,4a,p,a,p,4f,f,f,4g,p,4f,2p,4a,p,a,p,4f,f,f,4a,4d5,c5,2p,g,4c5,c5,d5,4p,4c5,c5,4c5,c5,4p,a,a#,4p,a#,4c5,f,2p,f,a#,p,4c5,d5,p,4c5,p,c5,c5,p,c5,4p,4a,a,a#,4p,a,4a#,4c5,4f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (522, 1, N'-Theme-TV-', N'Theme', N'Dragonball Z', 3202, CAST(N'2001-08-06T00:00:00.000' AS DateTime), N'DragonBallZ:d=4,o=6,b=200:32p,e5,8e,p,8d,p,8e,p,g.,8e,8p,e5,8e,p,d.,8e,2p,e5,8e,p,8d,p,8e,8b5,8d,8e,g,8e,8p,e5,8e,p,d.,e')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (523, 1, N'-Theme-TV-', N'Theme', N'He-Man', 1522, CAST(N'2001-08-06T00:00:00.000' AS DateTime), N'He-Man:d=8,o=6,b=160:32p,g,g,g,4g,4e,g,a,g,f,4g,4c,g,a,g,f,4g,4e,c,2d.,4p,4e.,4a5,4c,e,f#,e,d,4e,4a5,e,f#,e,d,4e,4a5,g5,2a5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (524, 1, N'-Theme-TV', N'Theme', N'Superman (Lois And Clark)', 722, CAST(N'2001-08-06T00:00:00.000' AS DateTime), N'LoisClark:d=32,o=5,b=50:p,c#,c,a#4,8f.,16a#,16g#,4d#.,a#4,c,c#,c,a#4,16f.,16d#,16c#,f,f#,g#,c6,4c#.6,g#,a#,16b,16e6,16d#6,16c#.6,d#6,e6,f#6,a#6,4b6,f#6,g#6,8a.6,8b6,a6,e6,4g#.6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (525, 1, N'-Rock-', N'U2', N'Still Haven''t Found What I''m Looking For', 1200, CAST(N'2001-08-06T00:00:00.000' AS DateTime), N'U2Still:d=8,o=6,b=125:32p,4f,g#,g#,4f,4p,4a#,g#,4g#.,4p,4f,g#,g#,4f,4p,4a#,16g#,16f#,4f.,p,f.,d#.,c#,4d#.,c#,4c#.,4p,f.,d#.,c#,4d#.,c#,4c#.,4p,c#,c#,2g#,p,f#,f,2c#,p,a#5,a#5,a#5,c#,2c#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (526, 1, N'-Theme-Movie-', N'Vangelis', N'Chariots Of Fire', 1761, CAST(N'2001-08-06T00:00:00.000' AS DateTime), N'ChariotsFire:d=32,o=5,b=40:p,16c#,f#.,g#.,a#.,8g#,8f.,16c#,f#.,g#.,a#.,4g#,16c#,f#.,g#.,a#.,8g#,8f.,16f,f#.,f.,c#.,4c#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (527, 1, N'-Rap-', N'Vanilla Ice', N'Ice Ice Baby', 5441, CAST(N'2001-08-06T00:00:00.000' AS DateTime), N'IceIceBaby:d=4,o=5,b=225:32p,g,g,g,8g,8g,g,d,p,g,g,g,g,8g,8g,g,d,8c6,p,8p,8d6,8p,g,g,8g,8g,g,d,p,g,g,g,g,8g,8g,g,d,8c6,p,8p,8d6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (528, 1, N'-Rock-80s-', N'Alien Antfarm - Michael Jackson', N'Smooth Criminal', 39705, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'SmoothCriminal:d=16,o=5,b=100:32p,8c#,4c#,32c#.,32c#.,d#.,8d#.,32c#.,32d#.,e.,4e,32d#.,32e.,d#.,b.4,d#.,8c#.,c#.,32c#.,32c#.,32c#.,32c#.,d#.,8d#.,32c#.,32d#.,e.,8e.,32d#.,32e.,d#.,b.4,d#.,8c#.,c#.,32c#.,32c#.,32c#.,32c#.,d#.,8d#.,32c#.,32d#.,e.,8e.,32d#.,32e.,d#.,b.4,d#.,c#.,g#.6,f#.6,g#.6,f#.6,g#.,g#.,g#.6,f#.6,g#.6,f#.6,g#.,8g#.,e.6,32f#6,8g#6,32f#.6,32e.6,c#.6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (529, 1, N'-Rock-', N'Bush', N'Come Down', 800, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'Comedown:d=32,o=5,b=35:p,f#,c#,e,f#,a,a,f#,e,f#,c#,e,f#,a,a,f#,e,f#,c#,e,f#,a,a,f#,e,f#,c#,e,f#,f#,a,f#,e')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (530, 1, N'-Pop-', N'Chris DeBurgh', N'Lady In Red', 723, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'LadyInRed:d=8,o=6,b=80:32p,a#5,a#.5,c.,c#,2d#,f,f.,d#.,c#,2c,a#5,16g#5,4c.,c,c.,c#.,d#,2f,a#5,a#.5,c.,c#,2d#,16d#,16d#,16d#,16d#,4d#.,d#,d#.,f.,f#,16f,16d#,2c#,g,16g,f,g,g#.,g.,32g#,32g,2f,a#5,a#.5,c#.,f,2d#,d#,f.,d#.,c#,2c#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (531, 1, N'-Rock-', N'Coldplay', N'Trouble', 960, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'CP-Trouble:d=8,o=5,b=125:32p,g,g#,g,d#,4c.,d#,g,g#,g,d#,4c.,d#,g,g#,g,d#,2c.,g,a#,g#,g,d#,4c.,d#,g,g#,g,d#,4c.,d#,g,g#,g,d#,1c')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (532, 1, N'-RB-', N'Destiny''s Child', N'Survivor', 3041, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'Survivor:d=32,o=5,b=140:p,8g#,p,8g#,p,8g#,4b,8g#.,16p,8g#,p,8g#,p,8g#,4b,8g#.,16p,8g#,p,8g#,p,8g#,4d#,8g.,16p,8g,p,8g,p,4a#,8g#.,16p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (533, 1, N'-Rap-', N'Eminem', N'Bad Meets Evil', 1121, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'BadMeetsEvil:d=8,o=6,b=160:32p,4a#,a#,b,a#,g#,f#,2g#,4f#,f#,f#,4g#.,f,f#,f,d,d#,f,4f#,4a#,f,f#,f,d#,32a#,1a#5,a5,a#5,1d#,4d,2a#.5,d#,f#,4a#,a#,b,a#,g#,f#,2g#,4f#,f#,f#,4g#.,f,f#,f,d,d#,f,4f#,4a#,f,f#,f,d#,32a#,1a#5,a5,a#5,1d#,4d,2a#.5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (534, 1, N'-Rap-', N'Eminem', N'Kim', 1041, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'EminemKim:d=32,o=5,b=35:p,e,a,b,e6,b,a,e,a,e,a,b,e6,b,a,e,a,f,a,c6,e6,c6,a,f,a,f,a,c6,e6,c6,a,f,a,d,f,a,c6,a,f,d,f,d,f,a,c6,a,f,d,f,b4,d,f,g#,f,d,b4,d,b4,d,f,g#,f,d,b4,d,e')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (535, 1, N'-Rap-', N'Eminem', N'Marshall Mathers', 1041, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'MarshallMathers:d=4,o=5,b=40:32p,32e.,f,32g.,32g#.,32g.,f,e,32f.,32g.,32g.,f,f,32g.,32g#.,32a#.,8f.,e,32f.,32g.,32g.,f.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (536, 1, N'-Rap-', N'Eminem', N'Role Model', 1041, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'RoleModel:d=32,o=6,b=40:p,16a#5,16c#,8f,f#,f,c#,f,16a#.5,f5,16a#5,16c#,8f,f#,f,c#,f,16a#.5,f5,16a#5,16c#,8f,f#,f,c#,f,16a#.5,f5,16a#5,16c#,8f,f#,f,c#,f,a#5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (537, 1, N'-Rap-', N'Eminem', N'Still Don''t Give A Fuck', 1604, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'StillDontGive:d=32,o=6,b=45:p,16d#,16g#,16b,8a#.,a#,g#,8g.,d#,c#,16b5,16c#,8g#.5,16d#,16g#,16b,8a#.,a#,g#,8g.,d#,c#,16b5,16c#,8g#.5,16d#,16g#,16b,8a#.,a#,g#,8g.,d#,c#,16b5,16c#,8g#.5,16d#,16g#,16b,8a#.,a#,g#,8g.,d#,c#,16b5,16c#,16g#5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (538, 1, N'-Rap-', N'Eminem', N'Under The Influence', 1281, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'UnderInfluence:d=16,o=5,b=50:32p,f#,c#,f#,g#,a,g#,f#,c#,8d.,f#,8c#.,g#,f#,c#,f#,g#,a,g#,f#,c#6,8d.6,d6,8c#.6,g#,f#,c#,f#,g#,a,g#,f#,c#,8d.,f#,8c#.,g#,f#,c#,f#,g#,a,g#,f#,c#6,8d.6,d6,32c#6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (539, 1, N'-Musical-', N'Fiddler On The Roof', N'If I Were A Rich Man', 803, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'RichMan:d=16,o=5,b=63:32p,g#,f#,g#,f#,8f,8c#.,p,f,f#,g#,f#,g#,f#,f,f#,g#,a#,b,a#,b,a#,8g#,8p,8a,8g#,8g,8f#,e,d#,c#,d#,8e,8p,e,d#,c#,d#,8e,8c#,4g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (540, 1, N'-Rock-', N'Foo Fighters', N'Big Me (Bass Line)', 960, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'BigMe-Bass:d=16,o=5,b=63:32p,8c#6,a#,8c#6,8g#6,c#6,8a#.,8f6,8a#,a,8g#,f,8g#,8a#,g#,f#,f#,f#,f#,f#,f#,f#,f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (541, 1, N'-Rock-', N'Green Day', N'86', 1040, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'GreenDay86:d=8,o=6,b=90:32p,16a5,a5,g5,f5,4g.5,4p,16e,e,f,e,d,c,f,e,d,c,4d,4c.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (542, 1, N'-Rock-', N'Green Day', N'All By Myself', 1520, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'AllByMyself:d=32,o=5,b=80:p,8g,d#.,8g,d#.,8g,d#.,8g,d#.,8g#,d#.,8g#,d#.,8g#,d#.,8g#,d#.,8g,d#.,8g,d#.,8g,d#.,8g,d#.,8g#,d#.,8g#,d#.,8g#,d#.,8g#,d#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (543, 1, N'-Rock-', N'Green Day', N'Come Clean', 560, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'ComeClean:d=2,o=5,b=250:32p,f#6,4d#6,d#6,4c#6,d#6,c#6,b,4d#6,b,c#.6,4b,1b.,4p,c#6,c#6,4a#,a#,4g#,a#,g#,f#,a#,1b.,4p,b,4e6,d#6,b,4c#6,4b,b')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (544, 1, N'-Rock-', N'Green Day', N'Pulling Teeth', 563, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'PullTeeth:d=8,o=5,b=63:32p,c#6,b,16g#,b,4b.,16g#,b,c#.6,b,16g#,b,4b.,c#.6,b,g#,16f#,f#,e.,16e,f#,g#.,g#,16f#,f#,f#,e')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (545, 1, N'-Country-', N'LeeAnn Rimes', N'Can''t Fight The Moonlight', 1923, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'FightMoonlight:d=32,o=5,b=28:p,f#,g#,16a#,f#,g#,16a#,f#,g#,16b,a#,f#,16g#,f#,a#,16g#,f#,a#,16g#,f#,16d#.,a#,g#,d#,16f#,g#,16a#,f#,g#,16a#,f#,g#,16b,a#,f#,16g#,d#,16f#.,a#,g#,d#,16f#,g#,4d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (546, 1, N'-Rock-', N'Live', N'Lightning Crashes', 880, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'LghtngCrsh:d=16,o=6,b=40:32p,32e,e.,e,f,e,c,8d,32e,32d,c,d,e,f,e,32d,32c,8b.5,32f,32f,f,e,32d,32c,4c,32c,c.,4c,32c,32c,c,32b5,c,32d,4d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (547, 1, N'-Pop-', N'Melanie C', N'I Turn To You', 963, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'TurnToYou:d=8,o=6,b=100:32p,a#.5,c.,16d.,2d#.,16d#.,16d#.,16d#.,d#.,f.,d#.,16d.,d.,16g.5,2a#.5,d.,c.,16a#.5,2c.,16c.,c.,16c.,a#.5,d.,32c.,32a#.5,2g.5,16d.,16d.,d.,c.,16a#.5,2c.,16a.5,16a#.5,c.,16a#.5,16a.5,4g.5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (548, 1, N'-Pop-', N'Nelly Furtado', N'I''m Like A Bird', 1843, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'LikeABird:d=32,o=6,b=45:p,16a#.,16f,g,16g,16f.,f,f,d#,d,d#,16d#,8d.,16d,d,16d,c,a#5,16a#5,8c.,16d,d,16d,c,a#5,16a#5,8g.5,16a#.,16f,g,16g,16f.,f,f,d#,d,d#,16d#,8d.,16d,d,16d,c,a#5,16a#5,8c.,16d,d,16d,c,a#5,16a#5,8g.5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (549, 1, N'-Rock-', N'Nirvana', N'About A Girl', 960, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'AboutAGirl:d=16,o=5,b=35:32p,c#,8c#,32e,f#.,32a,b,a.,c#,8c#,32e,f#.,32a,b,a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (550, 1, N'-Rock-', N'Nirvana', N'Son Of A Gun', 800, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'SonOfAGun:d=32,o=6,b=45:p,16d#,16f#,g#,f#,16f#,16g#,16g#,g#,f#,16f#,16d#,16f#,g#,f#,16f#,g#,g#,g#,c#,f#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (551, 1, N'-Other-', N'Nokia', N'Groovy Blue', 8970, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'GroovyBlue:d=32,o=6,b=112:p,16g,16a#,16g,a#.,16f.,a,8p.,a,8p.,a,8p,a,8p,a,8p.,a,a#.,a.,a,8a#,a,8g#,a,8p.,a,8p.,a,8p.,a,8p.,a,8p.,a,8p,16g,16a#,16g,16a#,16f,a,8p.,a,8p.,a,8p,a,8p,a,8p.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (552, 1, N'-Other-', N'Intel', N'Pentium Theme', 1282, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'Intel:d=4,o=6,b=200:32p,d,g,d,2a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (553, 1, N'-RB-', N'Pink', N'Most Girls', 1361, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'MostGirls:d=16,o=5,b=50:32p,d#,d#,a#4,d#,f,32f,32f,f,8f#,f#,d#,f#,g#,32f#,32g#,a#,a#,8a#,8f#,8d#,8c#6,a#.,32b,a#.,32b,32a#,32b,8a#.,d#,d#,a#4,d#,f,32f,32f,f,8f#,f#,d#,f#,g#,32f#,32g#,a#,a#,8a#,8f#,8d#,8c#6,a#.,32b,a#.,32b,32a#,32b,8a#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (554, 1, N'-Oldies-', N'Queen', N'Another One Bites The Dust', 1043, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'BitesTheDust:d=16,o=5,b=80:32p,32d#.6,32c#.6,8a#.,8a#.,4a#.,32a#.,a#.,a#.,c#.6,32a#.,4d#.6,32d#.6,32c#.6,8a#.,8a#.,4a#.,32a#.,a#.,a#.,c#.6,32a#.,4d#.6,32d#.6,32c#.6,8a#.,8a#.,4a#.,32a#.,a#.,a#.,c#.6,32a#.,4d#.6,32d#.6,32c#.6,8a#.,8a#.,4a#.,32a#.,a#.,a#.,c#.6,32a#.,4d#6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (555, 1, N'-Rock-', N'REM', N'Shiny Happy People 1', 800, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'REM-Shiny1:d=4,o=5,b=355:32p,1f#.,b,a#,2g#,2f#,1a#.,b,a#,2g#,2f#,1a#.,b,a#,2g#,2f#,1b.,1d#,2f,1f#.,b,a#,2g#,2f#,1a#.,b,a#,2g#,2f#,1a#.,b,a#,2g#,f#.,1b,1a#,1g#,1f#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (556, 1, N'-Rock-', N'REM', N'Shiny Happy People 2', 640, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'REM-Shiny2:d=16,o=6,b=63:32p,32f,32d#,f,d#,8a#5,a#5,a#5,c,8d#,c,8f,8d#.,32f,32d#,f,d#,8a#5,a#5,a#5,8c,2d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (557, 1, N'-Pop-', N'S Club 7', N'Never Had A Dream Come True', 2963, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'HadADream:d=32,o=5,b=35:p,f,a#,a,g,f,8g,16f.,4d,a#,a,g,f,8g,16a#.,d6,8d6,a#,a,16g,16f6,d#6,16d#.6,16f6,16d6,16a#,16g.,a#,16a#,f,16f.,16a#,16a#,a,f,a#,a,g,f,8g,16f.,8d,f,a#,a,g,f,16g,a#,16a#,16d6,4d6,d#6,d6,c6,a#,16f6,d#6,16d#.6,16f6,16d6,a#,16g.,16a#,16a#,f,16f.,16a#,16a#,16a,16g,a,4a#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (558, 1, N'-Pop-', N'Samantha Mumba', N'Always Come Back To Your Love', 1043, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'AlwaysComeBack:d=4,o=6,b=225:32p,a#,a,g,2f.,d#,2d.,f,1a#.5,a#,a,g,2f,g,c,1d.,a#5,a#,a,g,2f.,a,2a#.,a#,2c.7,2d7,2a.,2a#.,2c7,2a.,2a#.,2c7,2a#.,8a,8a#,a,g,2f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (559, 1, N'-Pop-', N'Samantha Mumba', N'Body 2 Body', 801, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'Body2Body:d=32,o=5,b=40:p,f#.,b.,c#.6,b.,d.6,b.,f#.,b.,e.,a.,b.,a.,c#.6,a.,e.,a.,f#.,b.,e.6,b.,e.6,b.,f#.,b.,f#.,b.,c#.6,b.,d.6,c#.6,b.,c#.6,f#.,b.,4c#6,8c#6,8f#.,8b,8e.,f#.,b.,4c#6,f#.,b.,4c#6,8c#6,8f#.,8b,8e.,f#.,b.,8c#.6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (560, 1, N'-Theme-TV-', N'South Park - Chef', N'Chocolate Salty Balls', 1680, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'SaltyBalls:d=16,o=5,b=125:32p,8e.6,d6,b,a,8g,8a,8g,a,g,e,8a,8g,a,g,e,2g,d6,b,d6,8e.6,4e6,d6,8e6,4e6,b,8b,8b,8b,8b,d6,8b,8b,b,8d6,2e6,8d6,8e6,8d6,4e6,8d6,8b,8g,4a,8g,8a,2e,e,8e,e,8g,8b,8d6,2e.6,2e6,8d6,8e6,8d6,4e6,8d6,8b,8g,4a,8g,8a,2e,e,e,8e,8g,8b,8d6,2e6,8a,a,g,8e,8e')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (561, 1, N'-Rock-', N'Stone Temple Pilots', N'Plush', 1120, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'STP-Plush:d=32,o=5,b=40:p,c6,16d#.6,4a#,g#,16a#,g#,16a#,g#,16g#,4f,8p,g#,16a#,g#,16a#,g#,a#,g#,16d#6,16c6,c6,16d#.6,4a#,g#,16a#,g#,16a#,g#,16g#,8f.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (562, 1, N'-Theme-VG-', N'Theme', N'Crash Bandicoot', 1123, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'CrashBandicoot:d=32,o=5,b=56:p,16e.,a#.,b.,a.,16g#.,d#.,16e.,a#.,b.,a#.,16a.,d#.,16e.,a#.,b.,a.,g#.,e.,d.,e.,16g.,16g.,g.,16a.,16e.,a#.,b.,a.,16g#.,d#.,16e.,a#.,b.,a#.,16a.,d#.,16e.,a#.,b.,a.,g#.,e.,d.,e.,16g.,16g.,g.,16a.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (563, 1, N'-Theme-TV-', N'Theme', N'King Of The Hill', 1282, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'KingOfHill:d=16,o=5,b=40:32p,f#.,32f#,32a#,f#.,b,32b,32d#6,8c#6,f#,32f#,32f#,32a#,f#.,b,a#,g#,32a#,32g#,f#,32f#,32f#,32a#,f#.,b,32b,32d#6,8c#6,f#6,d#6,c#6,b,a#,32b,32a#,f#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (564, 1, N'-Theme-TV-', N'Theme', N'Men Behaving Badly', 962, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'MenBehaving:d=8,o=5,b=125:32p,16f,g#,4c6,a#,16g#,a#.,g#,16g,g#.,g,f.,16f,g#,4c6,a#,16g#,a#.,g#,16f,d#.6,c#6,c.6,16f,g#,4c6,a#,16g#,a#.,g#,16g,g#.,g,16f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (565, 1, N'-Theme-TV-VG-Movie-', N'Theme', N'Pokemon', 4323, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'Pokemon:d=16,o=5,b=112:32p,f,a#,c6,c#6,c6,c#6,d#6,2f6,a#,c6,8c#6,8f6,8d#6,32c#.6,32d#.6,32c#.6,8c6,8g#.,f,a#,c6,c#6,c6,c#6,d#6,2f6,8a#,c#6,8f6,a,d#6,4g#6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (566, 1, N'-Theme-TV-', N'Theme', N'Red Dwarf', 962, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'RedDwarf:d=16,o=6,b=70:32p,8g#,8c#,8f,8g#.,32g#,8a#,a#.,32g#,a#.,32c7,8c#7,8c#,8f,8g#.,32g#,f#.,8f,4a#,8f#,8a#,4c#7,c#.7,32c7,a#.,32c7,4c#7,4g#,4b,a#.,a#.5,c.,d.,d#.,f.,4f#,4a,g#.,g#.,a#.,c.7,c#.7,8d#.7,g#.,a#.,c.7,c#.7,d#.7,4c#7,8c#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (567, 1, N'-RB-', N'TLC', N'Unpretty', 801, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'Unpretty:d=16,o=6,b=45:32p,f,f,d#,d#,f,32d#,8c#.,c#,c#,d#,c#,d#,8f.,32f,32f,32f,32f,32d#,32d#,32d#,f,d#.,c#.,d#.,c#5,f#5,f#5,32f#5,8f5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (568, 1, N'-Rock-', N'U2', N'Angel Of Harlem', 1040, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'u2AnglHrlm:d=32,o=5,b=45:p,8c#,4g#,p,c#.,16c#.,8g#,16f#.,f.,16d#.,16d#.,e.,d#.,4c#,8a#4,4g#.,p,16e,16d#,16c#.,8d#.,4c#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (569, 1, N'-Rock-', N'U2', N'Hold Me Thrill Me Kiss Me Kill Me', 720, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'u2HmTmKmKm:d=32,o=5,b=63:p,e.,16g#.,16b.,16b.,16b.,c#.6,4b,p,e.,16g#.,16g#.,f#.,16e.,4g#.,p,e.,16g#.,16b.,b.,16b.,8c#6,16b.,b.,16b.,8g#6,16g#.6,f#.6,16e.6,4e.6,p,g.6,g.6,16f#.6,4e.6,p,g.6,g.6,16f#.6,4e.6,p,8g.6,16d.6,4e6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (570, 1, N'-Rock-', N'U2', N'One', 1600, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'U2-One:d=8,o=6,b=125:32p,16a#.5,c#,c#.,c#.,a#5,4d#,2a#5,p,f#5,c#,c#.,c#.,a#5,2d#.,p,a#5,c#,c#.,c#.,a#5,4d#,2a#5,p,a#5,f,4d#,4c#,a#5,2d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (571, 1, N'-Rock-', N'U2', N'Where The Streets Have No Name', 800, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'U2-Streets:d=32,o=5,b=35:p,16d#,f.,16d#,8g.,p,16g,16f,16d#,8d#.,p,16c,16d#,c.,8g,16g#,16g,g#,16g.,p,a#4,16g,f.,d#.,8c.,8p,d#.,d#.,16f,d#.,d#.,8d#.,p,8g.,g.,g.,16g,f.,16d#,8d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (572, 1, N'-RB-', N'Usher', N'Pop Ya Collar', 1681, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'PopYaCollar:d=32,o=5,b=56:p,16d#6,16d6,16c6,c6,c,c,16c,g,16c6,16d6,d6,d6,16d#6,d6,16c6,c,c,c,16g,16c6,d6,d6,d6,d6,16d#6,d6,16c6,c,c,c,c,c,16c6,16d6,d6,d6,16d#6,d6,16c6,a#,16c6,a#,a#,a#,a#,a#,16c6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (573, 1, N'-Dance-', N'Vengaboys', N'I Only Kiss When The Sun Don''t Shine', 803, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'VengaKissSun:d=32,o=5,b=35:p,f#,f,f#,16g#,16g#,16g#,f,f#,g#,16a#,16c#,c#,a#,4g#,c#,a#,16c#,c#,a#,8g#.,c#,a#,g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (574, 1, N'-Rock-', N'Weezer', N'Undone (The Sweater Song)', 1760, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'SweatrSong:d=16,o=5,b=45:32p,c,c,8c#,c#,f,8d#,d#,32f,4d#,p,c,c,8c#,c#,f,8d#,c#,32c#,8d#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (575, 1, N'-Pop-', N'Whitney Houston', N'My Love Is Your Love', 1201, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'MyLoveIsYour:d=16,o=5,b=31:p,f#.,c#.,f#,g#.,c#.,g#,a#.,b.,a#,g#.,8f#.,32a#,32a#,32a#,32a#,32a#,32a#,g#,32g#,32a#.,8g#,32f#,32f#,32f#,32f#,32f#,32d#,32f#.,32f#,g#,f#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (576, 1, N'-Theme-Movie-Rap-', N'Will Smith', N'Men In Black', 2163, CAST(N'2001-08-30T00:00:00.000' AS DateTime), N'MenInBlack:d=16,o=5,b=45:p,8c#,e,c#,g#,g#,8g#.,g#,a,g#,e,8f#,g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (577, 1, N'-Rock-', N'Gorillaz', N'Clint Eastwood', 13300, CAST(N'2001-10-23T00:00:00.000' AS DateTime), N'GrillaClnt:d=16,o=5,b=112:d#6,8c#6,8d#6,4a#,8p,f#,8g#,8a#,a#,a#,p,8d#6,4a#.,f#,8g#,8a#,g#,g#,p,8a#,4a#,p,f#,8f#,g#,8a#,f#,8f#,8f#,4d#,p,c#,8c#,d#,8d#.,8d#,8c#,d#,8d#.,8d#,8c#,d#,8d#.,8d#,8c#,d#,8d#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (578, 1, N'-RB-', N'Missy Elliot', N'One Minute Man', 4881, CAST(N'2001-10-03T00:00:00.000' AS DateTime), N'1MinMan:d=16,o=6,b=90:a5,a5,a5,e,p,f,e,4p,e,e,f,f,e,8p,a5,e,p,f,e,8p,e,p,e,f,g,f,e')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (579, 1, N'-RB-', N'Outkast', N'Ms Jackson', 4081, CAST(N'2001-10-03T00:00:00.000' AS DateTime), N'MsJackson:d=8,o=6,b=90:16c,16b5,16a5,b5,c,p,16p,e,e,e,4g,4p,a5,e,d,e,d,16e,d,16e,16a5,16p,g5,e,d,e,d,16e,d,16e,a5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (580, 1, N'-Theme-TV-', N'South Park', N'Kyle''s Mom Is A Stupid Bitch', 2720, CAST(N'2001-10-03T00:00:00.000' AS DateTime), N'SPKyleMom:d=16,o=5,b=160:2c6,8f,f,f,8f,c,c,f,f,8f,8f,c,c,f,f,8f,8g,f,f,8f,8e,8e,8c,8e,e,e,8e,c,c,e,e,8e,8e,d,d,8c,c,c,8d,e,e,8g,8f,8f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (581, 1, N'-Rock-', N'U2', N'Elevation', 1521, CAST(N'2001-10-03T00:00:00.000' AS DateTime), N'Elevation:d=8,o=5,b=125:a,b,b,b,4d6,b,4d6,4b,d6,2d6,a,b,b,b,2d6,a,b,b,b,4d6,4b,a,b,b,b,4d6,b,4d6,4b,d6,b,4b.,a,4b,4b,b,b,b,d6,b,b,a,4b.,d6,4b.,p,4d6,4d6,4d6,2d6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (582, 1, N'-RB-', N'Usher', N'You Remind Me', 13064, CAST(N'2001-10-03T00:00:00.000' AS DateTime), N'YouRemindMe:d=16,o=5,b=125:32p,c#6,c#6,8c#6,8a#,8g#,8f#,4d#.,8g#,4f.,d#,f,4f#.,c#6,c#6,8c#6,8a#,8g#,8f#,4d#.,8g#,4f.,8c#6,4c#.6,c#6,c#6,8c#6,8a#,8g#,8f#,4d#.,g#,a#,4g#.,d#,f,4g#,8f#,c#6,c#6,8c#6,8a#,f#,f#,a#,8b.,8b,8a#,8g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (583, 1, N'-Traditional-Anthems-', N'Albert Von Tilzer and Jack Norworth', N'Take Me Out To The Ball Game', 36582, CAST(N'2001-10-04T00:00:00.000' AS DateTime), N'BallGame:d=4,o=5,b=225:2c,c6,a,g,e,2g.,2d.,2c,c6,a,g,e,1g.,a,g#,a,e,f,g,2a,f,2d.,2a,a,a,b,c6,d6,b,a,g,f,d,2c,c6,a,g,e,2g.,2d.,2c,d,e,f,g,1a,a,b,2c.6,2c.6,c6,b,a,g,f#,g,2a.,2b.,1c.6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (584, 1, N'-Theme-TV-', N'Angel', N'Theme', 4242, CAST(N'2001-10-04T00:00:00.000' AS DateTime), N'Angel:d=4,o=5,b=125:e,8f#,8g,d6,8c6,b.,8a,g.,f#,2e,2f#,2g,2c,8e.,8f#.,8g,d6,8c6,2b,8p,2f#6,2g6,2c6,2c6,2c6,p,b,f#6,e6,f#6,8e6,f#6,g.6,e,b,f#6,8e6,f#.6,8g6,a.6,8c7,b.6,8c.7,8b.6,8a.6,8d.7,8c.7,2b6,8a.6,8g.6,8f#.6,e,8f#,8g,d6,8c6,2b,8p,2f#6,2g6,2c6,2c6,2c6,32e,32b,2b6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (585, 1, N'-Rock-', N'Bon Jovi', N'Living On A Prayer', 1920, CAST(N'2001-10-04T00:00:00.000' AS DateTime), N'LivOnPray3:d=4,o=6,b=125:2g.,8p,8g,g,f#,e,d,b.,c.7,8p,c7,8c7,8b,8g,g,a,8g,8g,8a,g.,8p,8g,8g,8g,f#,e,d,b.,c.7,8p,c7,8c7,8b,8g,g,a,1p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (586, 1, N'-Oldies-', N'Bruce Springstein', N'Born In The USA', 1360, CAST(N'2001-10-04T00:00:00.000' AS DateTime), N'BornInUSA:d=8,o=5,b=140:2e,d,e,f,d,p,2e,4p,p,2e,d,e,f,d,p,2e,p,4p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (587, 1, N'-Pop-', N'Bryan Adams', N'Summer Of 69', 1281, CAST(N'2001-10-04T00:00:00.000' AS DateTime), N'Summer69:d=8,o=6,b=140:a5,d,d,4d,4d,4f#,e,d,4p,p,4e,e,e,e,4f#,4e,2e,4p,p,4d,d,d,d,4f#,e,d,2d,4p,c#,e,e,e,4e,4f#,4e,2e,4p,p,4d,4d,d,4d,4d,4f#,2p,e,e,4e,e,e,4f#,4e,4e,2p,d,d,4d,p,d,d,d,4d,4f#,e,d,p,d,e,e,4e,p,e,f#,f#,4e,4e,4p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (588, 1, N'-Rap-', N'D12 ft Eminem', N'Purple Pills (Purple Hills)', 10807, CAST(N'2001-10-04T00:00:00.000' AS DateTime), N'PrplePills:d=8,o=5,b=125:c6,c6,a,a,f,a,b,p,c6,c6,a,a,f,a,b,p,c6,c6,a,a,a,p,16b,16a,b,a,b,a,c6,4c6,a.,16p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (589, 1, N'-80s-', N'Dead Or Alive', N'You Spin Me Round (Like A Record)', 2880, CAST(N'2001-10-04T00:00:00.000' AS DateTime), N'USpinMeRnd:d=4,o=5,b=180:g,g,g,a#,a#,8f,8f,8c6,8c6,8a#,8g,8g,8g,8c6,8c6,8a#,8a#,f,f,c6,a#,p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (590, 1, N'-Theme-VG-', N'Doom', N'Level One', 3043, CAST(N'2001-10-04T00:00:00.000' AS DateTime), N'DoomLev1:d=32,o=5,b=56:f,f,f6,f,f,d#6,f,f,c#6,f,f,b,f,f,c6,c#6,f,f,f6,f,f,d#6,f,f,c#6,f,f,8b.,f,f,f6,f,f,d#6,f,f,c#6,f,f,b,f,f,c6,c#6,f,f,f6,f,f,d#6,f,f,c#6,f,f,8b.,a#,a#,a#6,a#,a#,g#6,a#,a#,f#6,a#,a#,e6,a#,a#,f6,f#6,a#,a#,a#6,a#,a#,g#6,a#,a#,f#6,a#,a#,8e6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (591, 1, N'-Oldies-', N'Doors', N'Hello I Love You', 1201, CAST(N'2001-10-04T00:00:00.000' AS DateTime), N'HelloILuvU:d=8,o=5,b=112:a,4a,p,a,g,g,g,g,c6,c6,c6,4a.,p,a,4a,p,a,g,g,g,g,c6,c6,c6,4a.,p,a,4a,p,a,g,g,g,g,c6,c6,c6,4a.,p,a,4a,p,a,g,g,g,g,c6,c6,c6,4a.,p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (592, 1, N'-Theme-VG-', N'Frogger', N'In Game Music', 1043, CAST(N'2001-10-04T00:00:00.000' AS DateTime), N'FroggerInGame:d=32,o=6,b=35:16d,b5,g5,16g,f#,e,16d,g,b5,a5,8d,d,d,d,d,b5,a5,16g5,g,g,g,a,g,f#,e,d,16b5,b5,16g,16b5,d,8a.5,b5,b5,c,d,e,f#,8e.,c,c,d,16e,f#,g,4f#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (593, 1, N'-Theme-VG-', N'Frogger', N'Start Music', 883, CAST(N'2001-10-04T00:00:00.000' AS DateTime), N'FroggerStart:d=8,o=5,b=125:b,g,g,g,b,g,g,g,c6,c6,b,b,2a,c6,c6,b,b,a,a,e6,e6,d6,c6,b,a,4g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (594, 1, N'-Rock-', N'Guns ''N Roses', N'Sweet Child Of Mine', 10975, CAST(N'2001-10-04T00:00:00.000' AS DateTime), N'SweetChild:d=8,o=5,b=140:c,c6,g,f,f6,g,e6,g,c,c6,g,f,f6,g,e6,g,d,c6,g,f,f6,g,e6,g,d,c6,g,f,f6,g,e6,g,f,c6,g,f,f6,g,e6,g,f,c6,g,f,f6,g,e6,g,c,c6,g,f,f6,g,e6,g,c,c6,g,f,f6,g,e6,g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (595, 1, N'-Pop-', N'Janet Jackson', N'All 4 U', 1603, CAST(N'2001-10-04T00:00:00.000' AS DateTime), N'All4U:d=16,o=6,b=112:b,b,8b,b,b,8b,8g,g,g,8g,8g,8d,d,d,8d,8d,g,g,g,d,8d,8d,g5,g5,8d.,8d,d,8e,8d,8p,g5,g5,g5,g5,8a5,a5,8a5,a5,8c,8b.5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (596, 1, N'-Theme-VG-', N'Leisure Suit Larry', N'Main Theme', 1283, CAST(N'2001-10-04T00:00:00.000' AS DateTime), N'LeisureSuit:d=16,o=6,b=56:f.5,f#.5,g.5,g#5,32a#5,f5,g#.5,a#.5,32f5,g#5,32a#5,g#5,8c#.,a#5,32c#,a5,a#.5,c#.,32a5,a#5,32c#,d#,8e,c#.,f.,f.,f.,f.,f,32e,d#,8d,a#.5,e,32f,e,32f,c#,d#.,c#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (597, 1, N'-Rap-80s-', N'MC Hammer', N'U Can''t Touch This', 4005, CAST(N'2001-10-04T00:00:00.000' AS DateTime), N'UCntTchThs:d=8,o=6,b=140:4f,d#,d,c,4p,g5,a#5,4p,d,c,4p,p,4f,d#,d,c,4p,d,a#5,4p,d,c,4p,p,4f,d#,d,c,4p,g5,a#5,4p,d,c,4p,p,4f,d#,d,c,4p,d,a#5,4p,d,c,4p,p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (598, 1, N'-Other-', N'Ericsson', N'Ericsson Ring', 2082, CAST(N'2001-10-04T00:00:00.000' AS DateTime), N'Ericsson:d=16,o=6,b=355:b5,d,b5,d,b5,d,b5,d,d,f,d,f,d,f,d,f,f,a,f,a,f,a,f,a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (599, 1, N'-Oldies-', N'Queen and David Bowie', N'Under Pressure', 1125, CAST(N'2001-10-04T00:00:00.000' AS DateTime), N'UnderPress:d=8,o=5,b=112:f,f,f,16f,16f,f,16c,4p,f,f,f,16f,16f,f,16c,4p,f,f,f,16f,16f,f,16c,4p,a#,a,2p,a,a,4a,g,g,4p,g,g,g,f,f,f,p,f,f,d,c')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (600, 1, N'-80S-Theme-Movie-', N'Ray Parker Jr', N'Ghostbusters (Alt)', 43507, CAST(N'2001-10-04T00:00:00.000' AS DateTime), N'GhstBustrs:d=16,o=5,b=56:32c6,32c6,e6,c6,d6,a#,4p,32c6,32c6,32c6,32c6,a#,c6,4p,32c6,32c6,e6,c6,d6,a#,4p,32c6,32c6,32c6,32c6,a#,d6,c6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (601, 1, N'-Rock-', N'Rod Stewart', N'Do Ya Think I''m Sexy', 1040, CAST(N'2001-10-04T00:00:00.000' AS DateTime), N'DaYaThkSex:d=16,o=6,b=140:4c,4d#,4g,2a#,2g,p,32p,g#,g,g#,g,d#,c,4d#,4p,8p,f,d#,f,d#,c,a#5,4c,p,32p,4a#,32g,p,32p,8d#,32c,p,32p,4d#,8c,4a#,32g,p,32p,8d#,8c,4d#,32c,p,32p,4a#,32g,p,32p,8d#,8c,4d#,8c,4g,2p,4p,4a#,32g,p,32p,8d#,32c,p,32p,4d#,8c,4a#,32g,p,32p,8d#,8c,4d#,32c,p,32p,4a#,32g,p,32p,8d#,8c,4d#,8c,4g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (602, 1, N'-Oldies-', N'Rolling Stones', N'I Can''t Get No Satisfaction', 1520, CAST(N'2001-10-04T00:00:00.000' AS DateTime), N'Satisfactn:d=8,o=5,b=140:d,p,4d.,d,e,4f.,p,f,f,e,e,d,d,p,4d.,d,e,4f.,p,f,f,e,e,d,d,p,4d.,d,e,4f.,p,f,f,e,e,d,d,p,4d.,d,e,4f.,p,f,f,e,e,d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (603, 1, N'-Disney-', N'Snow White', N'Whistle While You Work', 2325, CAST(N'2001-10-04T00:00:00.000' AS DateTime), N'WslWylUWrk:d=8,o=5,b=140:d6,c6,b,c6,4d6,p,16d6,16e6,d6,c6,b,c6,4d6,4p,d6,c6,b,a,d6,c6,b,a,d6,c6,b,a,4g,4p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (604, 1, N'-Theme-Movie-', N'Theme', N'Robocop', 1122, CAST(N'2001-10-04T00:00:00.000' AS DateTime), N'Robocop:d=32,o=5,b=35:a#,a#,16a#,16a#,a#,16c6,16c6,c6,16a#,16a#,a,a,16a,16a,a,16a,16a,a,16a,16a,a#,a#,16a#,16a#,a#,16c6,16c6,c6,16a#,16a#,a,a,16a,16a,a,16a,16a,a,16a,16a,c,d,f,d,f,g,f,g,a#,g,a#,c6,a#,c6,16d6,8c#.6,8d.6,8c.6,8d.6,8a#,16a,8f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (605, 1, N'-Oldies-', N'Tom Jones', N'Delilah', 800, CAST(N'2001-10-04T00:00:00.000' AS DateTime), N'Delilah:d=4,o=5,b=100:e,c,g,32p,8p,16e.,8f,d,2p,8p,f,d,a,8p,32p,16f#.,8g,e,2p,8p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (606, 1, N'-Oldies-', N'Tom Jones', N'It''s Not Unusual', 960, CAST(N'2001-10-04T00:00:00.000' AS DateTime), N'NotUnusual:d=8,o=5,b=180:g,c6,d6,p,e6,p,f6,p,g6,p,f6,4e6,4d.6,g,g,a,4g,1p,4p,g,c6,d6,p,e6,p,f6,p,g6,p,f6,4e6,4d6,p,c6,d6,e6,4d6,1p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (607, 1, N'-Traditional-', N'Traditional', N'Camptown Races', 963, CAST(N'2001-10-04T00:00:00.000' AS DateTime), N'Camptown:d=4,o=5,b=180:g,g,e,g,a,g,2e,e,2d.,e,2d.,g,g,e,g,a,g,2e,2d,e,d,1c,c.,8c,e,g,1c6,a.,8a,c6,a,1g,g,g,8e,8e,8g,8g,a,g,2e,d,8e,8f,e,8e,8d,2c,2p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (608, 1, N'-Traditional-', N'Traditional', N'La Cucaracha', 1843, CAST(N'2001-10-04T00:00:00.000' AS DateTime), N'Cucaracha:d=16,o=5,b=100:c,c,c,8f.,a,p,c,c,c,8f.,a,4p,f,f,e,e,d,d,8c,p,c,c,c,8e.,g,p,c,c,c,8e.,g,4p,c6,d6,c,a,g,8f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (609, 1, N'-Theme-VG-', N'Wolfenstein 3D', N'Around The Corner', 1124, CAST(N'2001-10-04T00:00:00.000' AS DateTime), N'Wolf3D:d=4,o=5,b=125:c6,f,f#,c#6,c6,f,2f#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (610, 1, N'-Theme-VG-', N'Zelda (Link''s Awakening)', N'Overworld', 1363, CAST(N'2001-10-04T00:00:00.000' AS DateTime), N'LinksAwake:d=16,o=6,b=125:4g#5,g#.5,d#5,g#.5,4f#5,f#.5,g#5,a#.5,4b5,b.5,g#5,b.5,4a#5,a#.5,b5,c#.,2d#.,c#.,c#,c#.,2d#.,c#.,c,a#.5,4g#5,4d#.5,g#.5,g#.5,a#5,c,c#,1d#,d#.,d#.,e,f#.,1g#,g#.,g#.,f#,e.,4f#,e.,2d#,d#.,e,d#.,8c#,c#,d#,2e,8d#,8c#,8b5,b5,c#,2d#,8c#,8b5,8a#5,a#5,c,2d,4f,4d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (611, 1, N'-Dance-80s-', N'Abba', N'I Have A Dream', 2803, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'HaveADream:b=125,o=6,d=8:32p,4f#5,4d#.,c#,2e.,4f#5,4b.5,a#5,2b.5,4f#5,4d#.,c#,2e.,4f#5,4b.5,a#5,2b.5,d#,e,f#.,16g#,4f#,2c#.,c#,d#,e.,16f#,2d#.,d#,e,f#.,16g#,4f#,2c#.,c#,d#,e.,16f#,1d#,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (612, 1, N'-Dance-80s-', N'Abba', N'Lay All Your Love On Me', 1685, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'LayYourLove:b=125,o=5,d=8:32p,f#6,a#,a,a#,f6,a#,a,a#,d#6,a#,f6,a#,f#6,a#,g#6,a#,f#6,b,a#,b,d#6,b,a#,b,f6,a#,a,a#,d6,a#,a,a#,f#6,b,a#,b,g#6,b,a#6,c#6,g#6,c#6,c6,c#6,g#6,c#6,c6,c#6,4f#6,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (613, 1, N'-Dance-80s-', N'Abba', N'Voulez Vous', 1604, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'VoulezVous:b=225,o=5,d=8:32p,e6,f6,e6,f6,4e6,2c6,4a#,f,g,a#,c6,f,g,a#,c6,4f,4g,4c,4c#,4a#4,4c,e6,f6,e6,f6,4e6,2c6,4a#,f,g,a#,c6,f,g,a#,c6,4f,4g,4a#4,4b4,4c,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (614, 1, N'-Rock-', N'AC-DC', N'Thunderstruck', 2562, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'Thunderstruck:b=45,o=6,d=32:p,c,e,c,g,c,e,c,g,c,e,c,g,c,g,c,g,f,c,a#,c,f,c,a#,c,f,c,a#,c,f,c,a#,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (615, 1, N'-Rap-', N'Afroman', N'Because I Got High', 28422, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'IGotHigh:b=50,o=5,d=32:p,g#,g#,g#,g#,16g#,g#,8g#,g#,g#,g#,16g,4f.,g#,g#,g#,a#,16a#,a#,a#,a#,a#,8a#,g,g,g,16f,4d#.,8a#,c6,c6,c6,16c6,16a#,16g#,16g#,g#,d#6,d#6,c6,d#6,4c#6,16f.6,f6,d#6,d#6,16c#6,16c.6,c6,c#6,c#6,16g#,16a#.,g#,a#,a#,g,16a#,8g#.,d#6,f6,16d#6,16c#6,c6,c6,16a#,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (616, 1, N'-Pop-', N'All Saints', N'Never Ever', 2082, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'NeverEver:b=63,o=6,d=32:p,16d.,d.,16d.,d.,16b.5,a.5,16d.,d.,8b5,8d,4b5,16a.5,a.5,16e.,f.,16e.,d.,16f#.,e.,16e.,d.,8e,16f.,8f#.,16d.,d.,16d.,d.,16b.5,a.5,16d.,d.,8b5,8d,4b5,a.5,16a.5,a.5,16f#.,f#.,16e.,d.,16f.,e.,16e.,d.,16e.,e.,16f.,8f#,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (617, 1, N'-Dance-', N'ATC', N'My Heart Beats Like A Drum', 2721, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'ATCMyHeart:b=125,o=6,d=8:32p,g,c,d#,g,g#,c,d#,g#,f,a#5,d,f,g,a#5,d#,f,g,c,d#,g,g#,c,d#,g#,f,d,a#5,f,d#,a#5,f,a#5,g,c,d#,g,g#,c,d#,g#,f,a#5,d,f,g,a#5,d#,f,g,c,d#,g,g#,c,d#,g#,f,d,a#5,f,4d#,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (618, 1, N'-Pop-', N'Backstreet Boys', N'As Long As You Love Me', 3281, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'BSBAsLong:b=25,o=5,d=32:p,a,a,g#,f#,8g#,g#,g#,a,b,8e.,c#,16e,f#,g#,16f#,e,d#,8e,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (619, 1, N'-Pop-', N'Backstreet Boys', N'Show Me The Meaning', 3203, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'BSBShowMe:b=25,o=5,d=32:p,a#,a#,a#,a#,16a#,a#,16b,g#,16f#,8f,a#,a#,a#,a#.,a#,16b,f#,16f#,16f,16f#,16c#6,a#,16c#.6,a#,16d6,a#,16d,f6,16f6,d#6,8a#,a#,b,b,g#,f#,f#,16f.,8f#,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (620, 1, N'-Pop-', N'Backstreet Boys', N'The Call', 4721, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'BSBTheCall:b=285,o=6,d=2:32p,4b5,4b5,4b5,4b5,b5,1b5,1f#5,4c#,4c#,4c#,4c#,c#,1c#,1f#5,g,f#,e,d,e,f#,1b5,1g,1f#,1c#,d.,4b5,4b5,4b5,b5,f#5,1f#5,c#,f#5,c#,f#5,d,e,f#,a,1f#,4d,4e,1f#,4d,4g,4f#,4g,4f#,g,d,1e,4c#,4d,1b5,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (621, 1, N'-Oldies-', N'Bangles', N'Manic Monday', 1520, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'ManicMonday:b=35,o=6,d=16:32p,32f#,32f#,32f,32f,d#,f,d#,8c#.,32f#,32f#,f,d#,4f,32g#5,f#,f,d#,8c#,32g#5,32f#,32f#,32f,32f,d#,8f.,32f#,32f#,32f,32f,d#,f,d#,c#,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (622, 1, N'-Oldies-', N'Beatles', N'Let It Be', 960, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'LetItBe:b=45,o=6,d=32:p,g#5,g#5,g#5,g#5,a#5,f5,g#5,g#5,c#,d#,f,f,f,d#,d#,c#,16c#,f,f,f#,f,f,16d#,f,d#,16c#,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (623, 1, N'-Oldies-', N'Beatles', N'Love Me Do', 1120, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'LoveMeDo:b=45,o=6,d=16:32p,d#,d#,32f#,8g#,32f#,32d#,32d#,32f#,8g#,32f#,32d#,32d#,32f#,g#.,d#,f,d#,c#,8f,g#5,g#5,b5,g#5,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (624, 1, N'-Oldies-', N'Beatles', N'Yellow Submarine', 1040, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'YellowSub:b=45,o=5,d=32:p,16d#6,16d#6,16d#6,d#6,f6,a#,a#,a#,a#,16a#,a#,a#,a#,a#,16a#.,g#,g#,g#,g#,16g#,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (625, 1, N'-Rock-', N'Blink 182', N'Man Overboard', 2000, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'ManOverboard:b=50,o=5,d=32:p,f#,g#,a#,b,8a#,g#,a#,b,16a#,16g#,d#,g#,a#,b,8a#,g#,a#,b,16a#,16g#,f#,g#,a#,b,8a#,g#,a#,b,16a#,16g#,d#,g#,a#,b,8a#,g#,a#,b,16a#,16g#,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (626, 1, N'-Rock-', N'Blink 182', N'Rock Show', 3840, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'RockShow:b=56,o=6,d=16:32p,d,d#,f,32a#5,32a#5,d,32c,32a#5,c,a#5,d,d#,f,32a#5,32a#5,32d,32d,32c,32a#5,c,a#5,d,d#,f,32a#5,32a#5,32d,32d,32c,32a#5,c,a#5,32c,32c,c,32c,32c,d,d#,f,d#,d,32c,32c,c,32c,32c,d,d#,f,d#,d,c,c,c,d,d#,32c,32a#5,c,4a#5,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (627, 1, N'-Pop-Theme-Movie-', N'Bosson - Miss Congeniality', N'One In A Million', 7285, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'1InAMillion:b=125,o=6,d=8:32p,a#5,d#,f,f#,4f,4f#,4a#5,c#,a#5,4b5,4f#,d#,d#,f,f#,4g#,f,f,c#,c#,4b5,4b5,4a#5,a#5,d#,f,f#,4f,4d#,4a#5,c#,a#5,4b5,4f#,d#,d#,f,f#,4g#,f,f,c#,c#,4b5,4b5,4a#5,2f#,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (628, 1, N'-RB-', N'City High', N'What Would You Do', 8721, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'WouldUDo:b=180,o=5,d=8:32p,b,b,b,4b,a,a,a,g,4g,2g,4e,4g,4a,e,e,4e,4g,4a,g,g,4a,2b,g,a,a,g,g,a,a,g,g,a,p,a,a,a,4a,g,g,g,a,a,a,a,4g,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (629, 1, N'-RB-', N'Craig David', N'Fill Me In', 3521, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'FillMeIn:b=140,o=5,d=4:32p,g,8f,d#,8d#,d#,d#,d#,8c,2p,g,8f,8d#,8d#,8d#,8d#,8d#,d#,d#,c,p,g,8f,8d#,d#,8d#,d#,8d#,d#,c,8c,8d#,f,8g,2g,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (630, 1, N'-Rock-', N'Dandy Warholes', N'Bohemian Like You', 2882, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'Bohemian:b=125,o=5,d=8:32p,b,b,b,4d6,2f#6,4p,f#6,d6,e6,f#6,e6,d6,4b,p,d6,e6,f#6,e6,d6,b,b,b,d6,e6,f#6,e6,d6,b,b,d6,b,2f#6,4p,d6,4e6,4d6,4b,4p,b,e6,f#6,e6,d6,4b,d6,b,e6,f#6,e6,d6,4b,b,b,b,a,f#,b,p,e,e,e,b,a,f#,b,p,e,e,e,b,a,f#,b,p,e,e,e,b,a,f#,b,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (631, 1, N'-RB-', N'Destiny''s Child', N'Bills Bills Bills', 1041, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'BillsBills:b=125,o=5,d=8:32p,f,c,f,c,4f,p,f,e,16e,e,16e,e,4e,p,e,d#,16d#,d#,16d#,d#,4d#,p,d#,d,16d,d,16d,d,4d,p,d,c#6,p,g#,p,c#,p,g#,p,c#6,2p,4f6,4p,c6,p,g,p,c,p,g,p,c6,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (632, 1, N'-RB-', N'Destiny''s Child', N'Bootylicious', 4811, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'Bootylicious:b=100,o=5,d=16:32p,8d,d,d,f,8e,d,8d,8f,8e,8p,8d,d,d,f,8e,d,8d,8f,8e,8p,8d,d,d,f,8e,d,8d,8f,8e,p,d,d,g,g,8g,8g,a,8f,8d,8c,c,d,8d,d,d,f,8e,d,8d,8f,8e,8p,8d,d,d,f,8e,d,8d,8f,8e,8p,8d,d,d,f,8e,d,8d,8f,8e,p,d,d,g,g,8g,8g,a,8f,8d,8c,c,8d,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (633, 1, N'-RB-', N'Destiny''s Child', N'Bugaboo', 1361, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'Nokring:b=80,o=6,d=16:32p,8e,c,a5,g5,8d,8c,8d,c,8d,c,8e,8e.,d,8d,c5,c,8d,c,8e,8c,p,8d,8c,8d,8c,8d,8c,8e,a5,d5,d,c,8d,c,d,c,8a.5,8p,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (634, 1, N'-RB-', N'Destiny''s Child', N'Independant Woman', 1681, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'Independant:b=180,o=5,d=8:32p,4g,16f.,4g,4a#,4g,16f.,g.,4a#,g.,f.,g.,f.,4g.,4d.,4g,16f.,4g,4a#,4g,f,g.,4a#,g.,4f,4g,4a,a#.,16a.,4g.,g.,16f.,g.,a#.,g.,16f.,g.,4a#,g.,16f.,4g,4d,c.,a#.4,4a#.4,g.,16f.,g.,4a#,g.,f,4g,a#.,g.,f.,4g,a.,a#.,16a.,4g.,g.,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (635, 1, N'-Oldies-', N'Elvis Presley', N'Are You Lonesome Tonight', 1280, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'AreYouLone:b=125,o=5,d=8:32p,e,g,c6,p,4b,p,c6,4b,4p,e,g,b,p,4a,p,b,4a,5p,e,g,a,p,4g,p,48a.,1p,g,p,4f,e,1p,4a,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (636, 1, N'-Oldies-', N'Elvis Presley', N'Love Me Tender', 960, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'LoveMeTender:b=180,o=5,d=4:32p,d,g.,f#,2g,a,e,2a,8p,g,f#.,e,f#,2g,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (637, 1, N'-RB-', N'Eve ft Gwen Stefani', N'Let Me Blow Your Mind', 5921, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'Nokring:d=16,o=5,b=90:32p,e,p,g,p,a,p,b,p,a,p,g,p,8e,2p,8e,2p,8e,8p,e,p,g,p,a,p,b,p,a,p,g,p,8e,2p,8e,2p,8e')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (638, 1, N'-RB-', N'Eve', N'Who''s That Girl', 3521, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'EveThatGrl:b=90,o=5,d=16:32p,8d#.6,8a#.,2a#,a#,a#,8c#6,c#6,8a#.,a#,a#,8d#6,d#6,4a#,p,8d#.6,8a#.,2a#,a#,a#,8c#6,c#6,8a#.,a#,a#,8d#6,d#6,4a#,p,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (639, 1, N'-Rock-', N'Fat Les', N'Vindaloo', 1200, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'Vindaloo:b=100,o=5,d=8:32p,e,16d,4c,4p,e,16d,4c,4p,e,16d,c,16p,e,16d,c,16p,e,16p,4d,4p,f,16e,4d,4p,f,16e,4d,4p,f,16e,d,16p,f,16e,d,16p,e,16p,4c,p,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (640, 1, N'-Techno-', N'Fatboy Slim', N'Ya Mamma', 2963, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'Nokring:d=8,o=5,b=250:32p,d,d,d.,16p,2d,f,f,f.,16p,2c,d,d,d.,16p,2d,f,f,f.,16p,2c,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (641, 1, N'-Pop-', N'Hanson', N'Mmmbop', 882, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'Mmmbop:d=4,o=5,b=180:32p,d,a,f#,8d,c#,p,a,e,8c#,d,8p,8b,8g,8d6,c#6,a,f#,8c#,d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (642, 1, N'-Rock-', N'Linkin Park', N'A Place For My Head', 8886, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'Place4MyHead:b=125,o=6,d=8:32p,4a5,a5,16e,16e,e,f,e,d,4c,16a5,a#5,a#5,a#5,c,4a5,a5,16e,16e,e,f,e,d,4c,c,16a5,16a5,a#5,a#5,a#5,c,4a5,4a,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (643, 1, N'-Pop-', N'Mary J Blige', N'Family Affair', 1923, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'FamilyAffair:b=90,o=6,d=16:32p,c#,8c#,c#,g#5,8g#5,b5,c#,b5,4c#.,p,8c#,c#,g#5,g#5,g#5,8b5,8c#,4c#.,c#,c#,c#,g#5,g#5,g#5,b5,c#,b5,c#,c#,e,8f#.,8c#,8c#,8b5,8c#,b5,2g#5,8c#,8c#,8c#,8c#,8g#5,8b5,8c#,8c#,8g#5,8b5,8c#,f#,e,8c#,8b5,4c#,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (644, 1, N'-Pop-', N'''N Sync', N'Pop', 17379, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'NSyncPop:b=125,o=6,d=8:32p,c#,16c#,c#.,b5,c#,4p,16b5,16b5,c#,16c#,c#.,b5,c#,4p,b5,c#,16c#,c#.,b5,c#,2p,b5,p,a5,p,g#5,p,b5,p,c#,16c#,c#.,b5,c#,2p,d#,16c#,c#.,b5,c#,2p,b5,16b5,b.5,c#,c#,2p,c#.,c#.,c#,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (645, 1, N'-Pop-', N'Nelly Furtado', N'Turn Off The Light', 9370, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'Nokring:b=125,o=5,d=16:32p,c,8d#,c,8f,d#,8f,d#,8f,8g.,8g#.,8g#.,8g#.,g#,8g#,g#,8f,8d#.,c,4d#.,8f,8d#.,c,8d#,c,8d#,c,8f,d#,8f,d#,8f,8g.,8g#.,8g#.,8g#.,g#,8g#,g#,8f,8d#.,c,4d#.,8f,8d#.,c,8d#,d#,8f,g#,8c6,c6,8g#,g#,8f,f,8g#.,8c6,8g#.,8f.,8f.,f,8f,8d#.,c,1d#,8p,8c.6,8g#,g#,8f,f,8g#.,8c6,c6,8g#.,8f.,8g#.,8f6,8d#6,8c#6,8c6,8a#.,4c#6,4c6,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (646, 1, N'-Pop-', N'O Town', N'All Or Nothing', 3602, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'AllOrNothing:b=140,o=6,d=4:32p,8f,8e,8d,8c,e.,8c5,c.5,8c,g.,f.,e,d.,8g4,g.4,8c,f,8f,e.,d,c,8c,8c,c,8c,b5,8c,c,c.,8b5,b5,2a.5,2e,2d,1e.,8c,g.,f.,8e.,16p,e,2d.,16p,8c,f.,e.,d,c,8c,8c,c,8c,b5,8b5,c,c.,8c,b5,c,a.5,8a5,2e,d.,16c,16p,1c,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (647, 1, N'-Rock-', N'Papa Roach', N'Blood Brothers', 2083, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'BloodBrothers:b=160,o=6,d=8:32p,d,d,f,d,e,c,p,4d,f,d,c,c,c,d,c,d,d,f,d,e,c,p,4d,f,d,c,a5,a5,a#5,a,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (648, 1, N'-Pop-Theme-Movie-', N'Phil Collins', N'You''ll Be In My Heart', 3045, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'YouInMyHeart:b=40,o=5,d=16:32p,32g#.,g#.,c#.6,c#.6,g#.,4f#,32g#.,g#.,d#.6,d#.6,f#.,4f,32g#.,32g#.,c#.6,c#.6,g#.,f#.,d#.6,d#.6,f.,8d#.,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (649, 1, N'-Rock-', N'Red Hot Chili Peppers', N'Under The Bridge (Alt)', 2722, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'UnderBridge:b=50,o=5,d=32:p,g#,g#,g#,g#,16b,16g#,4f#,16p,16f#,16d#,16f#,16g#,8g#.,16p,g#,g#,g#,g#,16b,16g#,4f#,16p,16f#,16d#,16f#,16g#,4g#,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (650, 1, N'-RB-', N'Salt ''N Pepa', N'Push It', 2641, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'PushIt:b=225,o=5,d=4:32p,a,p,e6,d6,p,c6,p,b,p,g,p,g,b,c6,b,g,a,p,e6,d6,p,c6,p,b,p,g,p,g,b,c6,b,g,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (651, 1, N'-Pop-', N'Samantha Mumba', N'Baby Come On Over', 1683, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'BabyCome:b=225,o=5,d=4:c6,a#,a,g,a,a,8p,g,f,2p,8f,8f,8f,a#,a#,8p,f,e,2p,c6,a#,a,a,8p,e,d,2p,8d,d,g,a,2g,c6,a#,a,g,a,a,8p,g,f,2p,8f,8f,8f,a#,a#,8p,f,e,2p,c6,a#,a,a,8p,e,d,2p,8d,d,g,a,2g,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (652, 1, N'-Rap-', N'Sisqo', N'Can I Live', 1761, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'CanILive:b=112,o=5,d=16:32p,a,b,4c6,8p,a,b,8c6,a,b,8c6,a,b,4c6,8p,a,b,8c6,a,b,8c6,g#,a,4b,8p,g#,a,8b,8b,8g#,8e,4b,8p,g#,a,8b,8b,8g#,a,b,4c6,8p,a,b,c6,b,a,b,c6,b,a,b,4c6,8p,a,b,8c6,8c6,4a,4b,8p,g#,a,8b,8b,8g#,8e,4b,8p,g#,a,8b,g#,a,8b,a,b,4c6,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (653, 1, N'-Pop-', N'Space', N'Female Of The Species', 883, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'SpaceFemale:b=160,o=5,d=4:32p,a,a,a,a,g,8g,a#,g,16p,a,a,a,a,g,8g,a#,g,16p,8g,d6,d6,a,8f#,a#,8a#,8a,8g,8g,8a,8a,8f#,g,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (654, 1, N'-Theme-TV-', N'Theme', N'Bold And The Beautiful', 2082, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'BoldBeautiful:b=225,o=5,d=4:32p,16g,16a,16a#,16c6,16d6,16e6,f.6,c.6,f6,d#.6,d.6,a#,2c.6,8c6,8d6,d#.6,d.6,a#,c.6,a#.,a,a#.,a.,f,8g,16a,16g,1f.,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (655, 1, N'-Rock-', N'Van Morisson', N'Brown Eyed Girl', 1200, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'BrwnEyeGrl:b=140,o=5,d=8:g,a,16p,b,16p,a,g,16p,c6,d6,16p,e6,16p,d6,c6,16p,g,a,16p,b,16p,a,g,16p,4a,16p,f#.,g,a,16p,g,a,16p,b,16p,a,g,16p,c6,d6,16p,e6,16p,d6,c6,16p,g,a,16p,b,16p,a,g,16p,4a,16p,f#.,g,a.,4g.,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (656, 1, N'-Theme-Movie-', N'Wizard Of Oz', N'Ding Dong The Witch Is Dead', 1525, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'DingDongDead:b=50,o=5,d=32:16g#.,16g#,f,f#.,g#.,16f.,f.,d#.,16c#,d#,f.,d#.,16c#.,16g#.,16g#,f,f#.,g#.,b.,a#.,4g#,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (657, 1, N'-Theme-Movie-', N'Wizard Of Oz', N'If I Only Had A Brain', 2243, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'HadABrain:b=63,o=5,d=16:32p,a#.,32b,c#.6,32a#,f#.,32g#,a#,8f#,g#,a#.,32f#,d#.,32f,f#,8d#,d#,c#.,32c#,c#.,32c#,4c#.,8p,f#.,32f#,8d#,d#.6,32c#6,b.,32a#,g#.,32f#,f.,32f,f.6,32d#6,c#.6,32b,a#.,32g#,f#.,32f#,f#.,32f#,4f#,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (658, 1, N'-Theme-Movie-', N'Wizard Of Oz', N'We''re Off To See The Wizard', 2004, CAST(N'2001-10-22T00:00:00.000' AS DateTime), N'OffToSeeWiz:b=45,o=5,d=32:16g#.,16c#6,f#,16f,f#,g#,8c#6,g#,a#,g#,f#,f,f#,d#,8c#.,c#,16c#,c#,16c#6,c#6,c6,c6,c6,16a#,a#,d#6,d#6,d#6,16d#6,c6,8g#,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (659, 1, N'-Holiday-Christmas-', N'Christmas', N'Carol Of The Bells', 1283, CAST(N'2001-12-02T00:00:00.000' AS DateTime), N'CarolBells:d=8,o=5,b=180:4a,g#,a,4f#,4a,g#,a,4f#,4f#6,f#6,f#6,e6,d6,4c#6,c#6,c#6,b,a,4b,b,b,c#6,b,4f#,f#,f#,4f#,c#,d#,e,f#,g#,a,b,c#6,4b,4a,c#,d#,e,f#,g#,a,b,c#6,4b,4a,4a,g#,a,4f#,4a,g#,a,4f#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (660, 1, N'-Pop-', N'Alanis Morisette', N'Thank You 1', 1200, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'AlanisThank:d=4,o=5,b=35:32p,32g.,32g#.,32g.,16g#.,16g.,32g.,16g,16g.,32d#.,32g.,16f.,d.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (661, 1, N'-Pop-', N'Alanis Morisette', N'Thank You 2', 1203, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'AlanisThank:d=4,o=5,b=63:32p,8g#,8g#,16g.,32f.,d#.,16g#.,8g#,8g.,d#.,16g.,16f.,8f.,8f.6,8d.6,8c.6,16d.6,d#.6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (662, 1, N'-Pop-', N'Alanis Morisette', N'You Oughta Know', 1203, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'UOughtaKnow:d=4,o=5,b=225:32p,g,2c6,1b.,g,g,2c6,1a#,g,g,2c6,2a#,2a,g,g,a,a#,a#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (663, 1, N'-Dance-', N'Amber', N'This Is Your Night', 1202, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'AmberYourNight:d=16,o=5,b=63:32p,c#,d#,f,4f.,d#,8f,8f#,f#,f,f,d#,8c#,4d#,d#,c#,c#,d#,8f,f,8d#,c#,d#,f,4f.,d#,8f,8f#,f#,f,f,d#,8a#,8g#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (664, 1, N'-Pop-', N'Backstreet Boys', N'I Want It That Way', 482, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'BSBIWantIt:d=16,o=5,b=25:32p,32g,8a#.,d6,g.,f.,32g,8a#.,d6,g.,c.6,32g,8a#.,d6,g.,8f.,g.,a#.,d6,c6,32a#,a#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (665, 1, N'-Pop-', N'Backstreet Boys', N'Quit Playing Games With My Heart', 1203, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'BSBQuitPlaying:d=32,o=6,b=25:p,d.,d.,d,d#.,d.,c,8a#.5,f5,16d,8c.,16c,8g#.5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (666, 1, N'-Pop-', N'BB Mak', N'Back Here 1', 1203, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'BBMakBack:d=32,o=6,b=40:p,16c#,16d,16e,4e,d.,c#.,4b5,c#.,d.,e.,e.,e.,c#.,e.,e.,c#.,8e.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (667, 1, N'-Pop-', N'BB Mak', N'Back Here 2', 1203, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'BBMakBack:d=16,o=5,b=40:32p,32a.,32g#.,32a.,32e.6,a.,g#.,4a,e.6,a.,e.6,a.,8b,32c#.6,8c#.6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (668, 1, N'-Rock-', N'Ben Folds Five', N'Brick', 1202, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'Brick:d=4,o=5,b=285:32p,2a#.,d#.,d#.,d#.,2d#.,2d.,2d#.,2d#.,1f,2a#.,d#.,d#.,d#.,2d#.,d.,2d.,2d.,1c.,2a#.,d#.,d#.,d#.,2d#.,2d.,2d#.,2d#.,2f.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (669, 1, N'-Pop-', N'Billie Myers', N'Kiss The Rain', 1203, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'KissRain:d=16,o=5,b=45:32p,a#,c6,4a#,f,f,d,a#4,8g,4f,a#,c6,4a#,f,f,d#,d,8c,a#4,d,c')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (670, 1, N'-Rock-', N'Bush', N'Glycerine', 481, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'Glycerine:d=16,o=5,b=56:32p,c#,a#.,32g#,8f#,4g#,8a#,g#,f#,4f#,a#.,g#,f#.,8f#.,c#,f#.,32f#,8f#,8f#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (671, 1, N'-Rock-', N'Bush', N'Swallowed', 1200, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'Swallowed:d=16,o=6,b=40:32p,8a5,8b.5,c#.,e,8c#,32b.5,a.5,8a5,4f#5,32e.5,32g#.5,32a.5,32b.5,8a5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (672, 1, N'-Rock-', N'Cake', N'Frank Sinatra', 1200, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'CakeFrankS:d=4,o=6,b=225:32p,c,c,c,2f.,2c,c,c,c,2g#.,2c,c,c,c,2c#.,2g#5,g#5,g#5,g#5,2c#,2c,2a#5,2g#5,2g#.5,2a#5,2c,d#,1g#.,2c,2a#.5,2c.,1g.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (673, 1, N'-Pop-', N'Christina Aguilera', N'Come On Over', 1203, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'ComeOnOver:d=32,o=5,b=40:p,g#.,g#.,a.,16b.,16e.,g#.,g#.,e.,16g#.,f#.,8e,g#.,g#.,a.,16b.,16e.,g#.,g#.,e.,16g#.,f#.,e.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (674, 1, N'-Pop-', N'Christina Aguilera', N'I Turn To You', 1202, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'ITurnToYou:d=16,o=6,b=35:32p,d,32c#,8d.,d,32c#,8d.,d,32c#,8d.,d,32e,f#.,32e,d,32c#,b5,b5,4a5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (675, 1, N'-Pop-', N'Corrs', N'Dreams 1', 1203, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'Dreams:d=4,o=6,b=125:32p,a#5,8c#,d#,f.,8d#,c#,8a#5,2c#,8a#5,c#,8a#5,d#.,8a#5,2a#.5,a#5,8c#,d#,f.,8d#,c#,8d#,a#.5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (676, 1, N'-Pop-', N'Corrs', N'Dreams 2', 1203, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'Dreams:d=4,o=6,b=125:32p,8a#5,8a#5,f.,d#,c#,8c#,8a#5,d#,c#,c#,8d#,d#,2c#,8a#5,8a#5,f.,d#,c#,8a#5,8f,8d#,8d#,c#,8d#,8d#,8d#,1c#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (677, 1, N'-Dance-', N'Eiffel 65', N'Dub In Life 1', 1203, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'DubInLife:d=16,o=5,b=63:32p,g#,f#,8f#,4g#.,d#,e,e,e,e,e,e,e,8e,4d#.,f#,f#,8f#,4g#.,f#,g#,f#,g#,f#,b.,g#.,8f#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (678, 1, N'-Dance-', N'Eiffel 65', N'Dub In Life 2', 1204, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'DubInLife:d=16,o=6,b=63:32p,g#5,b5,8d#,8e,8d#,b5,f#,8b,8a#,8f#,b5,f#,8b,8a#,8f#,8e,8d#,8e,8d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (679, 1, N'-Dance-', N'Eiffel 65', N'Your Clown', 1203, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'YourClown:d=32,o=6,b=28:p,f,g,g5,g5,g5,a5,16a#5,16a#.5,a5,8f5,a#5,c,a#5,c,a#5,c,16a#5,16c,16d,8a#.5,g5,g5,g5,g5,a5,16a#5,8c,16c,a#5,c,8d,16d,d#,d,d#,8d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (680, 1, N'-Rock-', N'Everclear', N'Father Of Mine', 1200, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'FatherOfM:d=32,o=5,b=50:p,16a,16b,16c#6,4a,a,a,16a,16b,16c#6,4a,b,16b.,d6,16d.6,e6,16e.6,b,16b.,b,b,16d6,16a,a,b,a.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (681, 1, N'-Rock-', N'Everclear', N'Santa Monica', 1200, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'SantaMonica:d=16,o=6,b=50:32p,32c,32p,32c,32p,c,d#,c,a#5,8c.,32p,8c.,4p,c,c,32c,c.,a#5,g#5,a#5,8g#5,f5,4d#.5,c,32c,32p,c,a#5,g#5,8a#.5,32p,4a#5,c,8g#.5,32p,32g#5,32p,32g#5,g#.5,f5,d#5,8f5,p,4f5,g#5,d#.5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (682, 1, N'-Rock-', N'Filter', N'Hey Man Nice Shot (Bass Line)', 1200, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'NiceShotBass:d=4,o=5,b=355:32p,d#,d#,d#,d#,d#,d#,d#,d#,d#,f#,f#,f#,f#,f#,f#,f#,f#,g#,g#,g#,g#,g#,g#,g#,g#,a,a,a,a,g#,g#,8g#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (683, 1, N'-Rock-', N'Filter', N'Hey Man Nice Shot', 1200, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'NiceShot:d=4,o=5,b=225:32p,8d#.,f#.,f#.,8f#.,f#.,f#.,1d#.,f#.,8f#.,8f#.,8f#.,d#.,1d#.,a#.,a#.,8a#.,g#.,g#.,1f#.,8f#.,8f#.,8d#.,2f#.,d#.,1d#.,c#.6,2d#.6,2c#.6,2a#.,8a#.,c#.6,2a#,1g#,2g#,2f#,1f#.,c#.6,2d#.6,2c#.6,2a#,2g#,f#.,2g#,2f#,d#.,2g#,2f#,d#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (684, 1, N'-Rock-', N'Foo Fighters', N'I''ll Stick Around', 1200, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'FooStickAr:d=16,o=5,b=35:32p,8g#,32g#,g#,8f#.,32f#,f#,c#6,c#6,c#6,32c#6,32c6,8c.6,32g#,g#,f#,b,b,b,8a#.,32g#,a#,4c.6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (685, 1, N'-Rock-', N'Foo Fighters', N'This Is A Call', 480, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'ThisIsACall:d=16,o=6,b=40:32p,f,32d#,d,d#,a.5,32f5,8d#.5,a,32a,g,a,c,32a#5,a5,32d,f,g.,32f,d#,c.,32g,f,d#,f,f.,32c,c')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (686, 1, N'-Rock-', N'Foo Fighters', N'Up In Arms', 1200, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'UpInArms:d=2,o=6,b=225:32p,4f,d#,4a#5,c#,4a#5,c#,d#,c#,4a#5,c#,4d#,1f.,4c#,d#,4c#,e,4a#5,c#,a#5,4f,4f,4f,4f,f,4d#,4c#,4d#,c#,4a#5,c#,d#,1c#,4c#,d#,4c#,e,4c#,d#,4a#5,1f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (687, 1, N'-Rock-', N'Garbage', N'Medication 1', 480, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'Medication:d=16,o=6,b=45:32p,a5,c#,e,a5,8b,f#,e,c#5,g#5,e,c#,8f#,e,c#,a5,c#,e,a5,8b,f#,e,c#5,g#5,e,c#,8f#,e,c#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (688, 1, N'-Rock-', N'Garbage', N'Medication 2', 1200, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'Medication:d=16,o=6,b=45:32p,8d#,d#,c#,b5,c#,8d#,c#,8b5,8g#5,g#,a#,8g#,8d#,8c#,b5,4g#5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (689, 1, N'-Rock-', N'Garbage', N'Number One Crush', 1200, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'Num1Crush:d=4,o=5,b=125:32p,a#,a,2a#,a,2a#,a#,a,2a#,a,2a#,2a#,2b,2a#,2g#,2a#,2b,2a#,2g#,2f#,2f#.,d#,b,b,a#,2b,2a#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (690, 1, N'-Rock-', N'Garbage', N'Sleep Together', 1200, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'SleepToget:d=16,o=6,b=63:32p,b5,b5,b5,c#,8d,8f#.,b5,8c#,4d.,b5,b5,8c#,d,4b.5,b5,8b5,8c#,8d,8f#.,e,4e.,8b.5,4f#.,f#,e,32d.,8f#,4e.,8g,8a,8b,e,8g,4a.,8g,8a,8b,d7,8b,4a.,8g,8a,8b,e,8g,4a.,8g,8a,8b,d7,8b,a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (691, 1, N'-Rock-', N'Garbage', N'Stupid Girl', 1200, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'StupidGirl:d=32,o=5,b=40:p,e.,e.,f#.,16g.,4f#,e.,e.,f#.,16g.,16f#.,4e,e.,e.,f#.,16g.,16a,16e.,16e.,e.,8d.,16e,e.,f#.,16g.,16f#.,16e.,16d.,4c,g4,d.,16d.,16c.,16a#.4')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (692, 1, N'-Rock-', N'Garbage', N'Temptation Waits 1', 1203, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'TmptatWait:d=4,o=5,b=125:32p,c6,a#,g#,2a#,2g#.,c6,a#,g#,2a#,2g#.,c6,a#,g#,2a#,2g#,f,2a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (693, 1, N'-Rock-', N'Garbage', N'Temptation Waits 2', 1200, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'TmptatWait:d=4,o=5,b=125:32p,d,e,f,g,8a,g,8f,2d,d,e,f,g,8a,g,8f,2d,d,e,8f,g,8f,8g,8a,8g,8f,8d,8c,2c.,8c,8c,2c#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (694, 1, N'-Rock-', N'Hole', N'Celebrity Skin', 1200, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'CelebSkin:d=32,o=6,b=50:p,a#.5,16a#.5,d.,16d.,g.5,g.5,p,f.5,g.5,a#.5,16d.,d.,p,a#.5,16a#.5,d.,16d.,g.5,g.5,p,d.,d.,d#.,d.,a#.5,a#.5,p,a#.5,16a#.5,d.,16d.,g.5,g.5,p,f.5,g.5,f.5,g.5,f.5,g.5,f.5,p,a#.5,16a#.5,d.,16d.,g.5,g.5,p,d.,d.,d#.,d.,a#.5,a#.5,p,4g,16f.,d.,d.,d.,c.,a#.5,16a#.5,16g.,16g.,8g,16f.,d.,d.,d.,c.,a#.5,16a#.5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (695, 1, N'-Pop-', N'K Ci And JoJo', N'All My Life', 1201, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'AllMyLife:d=8,o=5,b=125:32p,e6,2g6,4f#6,f#6,2e.6,a,f#6,f#6,f#6,4f#6,4d6,2a.,a,2g6,4a.6,4f#6,4e.6,4e6,2d6,a,a,a,g,f#,4g,f#,2d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (696, 1, N'-Rock-', N'Linkin Park', N'Crawling 1', 480, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'Crawling:d=32,o=5,b=25:p,16a.,a#,16a.,a#,8a.,a,16a.,a#,16a.,a#,a,8g.,16a.,a#,16a.,a#,8a.,a,16a.,a#,16a.,a#,a,4g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (697, 1, N'-Rock-', N'Linkin Park', N'Crawling 2', 480, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'Crawling:d=4,o=5,b=40:32p,16d,8c.6,a,16g.,32f.,16e.,16f.,16d,8c.6,a,16g.,32f.,16e.,16f.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (698, 1, N'-Rock-', N'Linkin Park', N'One Step Closer', 563, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'OneStepCloser:d=8,o=5,b=63:32p,16a,16a,a,a,g,f#,g,4f#.,a,16a,16a,a,g,f#,d6,4c.6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (699, 1, N'-Pop-', N'Mandy Moore', N'Candy', 1203, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'MandyCandy:d=16,o=5,b=50:32p,8g,8g,f,d#,d#,d#,c#,d#,d#,c#,f,d#,d#,4g.,8g,g.,32g,f,8g,g,g#,g#,f#,f,d#,f,d#,a#,8g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (700, 1, N'-Pop-', N'Mandy Moore', N'I Wanna Be With You', 1203, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'WantBeWith:d=16,o=6,b=56:32p,32g#.,32g#.,g#.,b.,b.5,2c#,32c#.,b.,32a.,g#.,f#.,2a,32a.,b.,32a.,8g#,f#.,b.,a.,g#.,f#.,8b,a.,4g#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (701, 1, N'-Latin-', N'Marc Anthony and Jennifer Lopez', N'No Me Ames', 1201, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'NoMeAmes:d=16,o=5,b=40:32p,d#.,c#.,c.,c#.,d#,f,d#.,c#.,c.,c#.,d#,f,d#.,c#.,c.,c#.,d#,f,4d#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (702, 1, N'-Rock-', N'Matchbox 20', N'Real World', 1203, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'RealWorld:d=32,o=6,b=45:p,16f#.,d#.,f#.,16f#.,c#.,d#.,d#.,c#.,16b.5,16c#.,b.5,f#.,d#.,f#.,16g#.,16c#.,b.5,c#.,c#.,c#.,b.5,b.5,8b5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (703, 1, N'-Pop-', N'Melanie C', N'Northern Star', 1203, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'NorthrnStr:d=16,o=5,b=25:32p,a#,g#,a#,c#6,32a#,g#,8a#,32f#,a#,g#,a#,c#6,32a#,g#,8a#.,a#,g#,a#,c#6,a#,32g#,a#,32g#.,32f#.,8d#.,32f,32f#,32f#,8f,32f#,32f,8d#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (704, 1, N'-Pop-', N'''N Sync', N'I Drive Myself Crazy', 1201, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'DriveCrazy:d=8,o=6,b=45:32p,16a#5,16a#5,16c,c.,16f5,16d#,16d#,d,c,f5,16d#,16d#,d,c,f5,16a#5,16a#5,16c,2c')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (705, 1, N'-Techno-', N'Nine Inch Nails', N'Terrible Lie', 483, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'TerribleLie:d=4,o=5,b=355:32p,d,d,2c,2d,c,2f,f,2d,1c,d,d,2c,2d,c,2f,f,2d,g,g,g,2a.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (706, 1, N'-Rock-', N'Nirvana', N'In Bloom', 1200, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'InBloom:d=16,o=6,b=40:32p,4f#,32g#,8d#.,32c#,b.5,f#,f#,32f#,g#,8d#.,32c#,b.5,f#,f#,32f#,g#,8d#.,32c#,b.5,f#,f#,32f#,g#,8d#.,32c#,b.5,c#,c#,32c#,b5,4d,c#,c#,32c#,b5,8d,32d,32c#,b5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (707, 1, N'-Rock-', N'Nirvana', N'Lithium', 1200, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'Lithium:d=16,o=5,b=31:32p,a,a,32g,a.,32d6,e6,f.6,32c#6,c#6,d#6,8c6,32f,32a#,c6,8a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (708, 1, N'-Rock-', N'Nirvana', N'Rape Me', 1200, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'RapeMe:d=32,o=5,b=40:p,16c.6,a.,4g,16c.6,a.,16g.,16g.,4g#,a.,a.,a.,16c.6,16d.6,4b,c.6,b.,a.,g.,a.,a.,a.,16g.,16g.,8g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (709, 1, N'-Rock-', N'Nirvana', N'Something In The Way', 1200, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'InTheWay:d=32,o=6,b=40:p,a#.5,8c,16c.,c.,4c#,4c,4g#5,a#.5,8c,16c.,c.,8c#.,8f.5,4c,4g#5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (710, 1, N'-Pop-', N'No Doubt', N'Just A Girl (Bass Line)', 1203, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'JstGrlBass:d=32,o=6,b=35:p,d#.5,d#.,c,c,d#.,b5,b5,d#.,a#5,a#5,f.,d#.5,d#.,c,c,d#.,b5,b5,d#.,a#5,a#5,f.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (711, 1, N'-Pop-', N'No Doubt', N'Spiderwebs', 1203, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'Spiderwebs:d=32,o=6,b=35:p,d#,d#,d#,d#,f#,g#,16f#,f#,g#,f#,f#,d,d,16c#,d#,d,d#,d,d#,d,16d#,b5,8b5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (712, 1, N'-Rock-', N'Oasis', N'Champagne Supernova', 1200, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'Champagne:d=16,o=6,b=50:32p,8d,8f,8d,c.,8a#.5,8c,a#5,32f.,32g.,f.,8f,32d.,8f,32d.,32c.,4a#.5,32a#.5,c,8d,8d,8d,32d#.,8d,g.5,g.5,32g.5,g.5,8f.5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (713, 1, N'-Rock-', N'Oasis', N'Morning Glory', 1200, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'OasisGlory:d=32,o=5,b=35:p,c,d#,d#,c,16d#,f,16g#,8f.,c,d#,d#,c,16d#,f,16g#,16f,16d#,16f.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (714, 1, N'-Rock-', N'Offspring', N'Self Esteem', 1200, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'SelfEsteem:d=32,o=5,b=28:p,f,f,f,16f#,f#,f#,f,d#,f,4d#,f,f,f,16f#.,f#,f,d#,f,8d#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (715, 1, N'-Rock-', N'Our Lady Peace', N'Clumsy (Beginning)', 1200, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'Clumsy:d=4,o=5,b=90:32p,a#4,8f,g,a,8p,a4,8f,g,a,8p,a#4,8f,g,a,c6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (716, 1, N'-Rock-', N'Our Lady Peace', N'Starseed 1', 1200, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'Starseed:d=16,o=5,b=45:32p,d#,c#6,d#,8a#,d#,a#.,32d#,c6,c#6,c6,8a#,d#,8a#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (717, 1, N'-Rock-', N'Our Lady Peace', N'Starseed 2', 1200, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'Starseed:d=4,o=6,b=355:32p,1c#,2a#.5,a#.5,a#.5,8c.,8c.,c.,c#.,c.,1a#5,2a#.5,1c#,2a#.5,a#.5,a#.5,8c.,8c.,c.,c#.,c.,1a#5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (718, 1, N'-Latin-', N'Ricky Martin', N'She''s All I Ever Had', 1201, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'IEverHad:d=4,o=6,b=40:32p,8c,16b5,c.,16a.5,16b.5,g5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (719, 1, N'-Pop-', N'Shawn Mullins', N'Lullaby', 1203, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'Lullaby:d=16,o=6,b=40:32p,c,d#,a#,8g#,d#,d#,c,8c#,c,8a#.5,32c,32a#5,4g#5,32c,32c#.,8a#.5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (720, 1, N'-Rock-', N'Silverchair', N'Tomorrow', 1203, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'Tomorrow:d=16,o=6,b=63:32p,8d,d,8d,32d.,4d,d,d,8d#,d#,d#,c#,c,4a#5,4p,d,4d,d,8d,d,d,d,8f,8f.,d#,8d#,f,g,8f,4d#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (721, 1, N'-Pop-', N'Sister Hazel', N'All For You', 1203, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'AllForYou:d=2,o=6,b=285:32p,c#,a5,4c#,d,4b5,4b5,b5,b5,e,d,c#,4a5,4c#,e,4c#,4c#,b5,4b5,4b5,e,d,c#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (722, 1, N'-Rock-', N'Smashing Pumpkins', N'Tonight Tonight', 1200, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'SPTonight:d=16,o=6,b=40:32p,4f#,d#.,8c#.,4b5,8c#,d#.,f#,4g#,4g#,4f#,d#.,c#.,32d#.,32c#,4b5,8f#,4g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (723, 1, N'-Rock-', N'Third Eye Blind', N'Jumper', 1200, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'Jumper:d=4,o=6,b=250:32p,f.,c#.,d#.,8f.,f#.,f.,2d#,2d#,32d#,f.,2c#.,8d#.,d#.,d#.,2c#,8f#.,2f.,8d#.,1c#.,8a#.5,1g#.5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (724, 1, N'-Rock-', N'Third Eye Blind', N'Never Let You Go', 1200, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'NvrLetUGo:d=32,o=5,b=40:p,8a,g.,16g.,f.,16a#.,16a#.,a.,a.,g.,f.,g.,8a,g.,g.,g.,f.,16a#.,a#.,a#.,a.,a.,8g,8a,g.,16g.,f.,16a#.,16a#.,a.,a.,g.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (725, 1, N'-Rock-', N'Veruca Salt', N'Seether 1', 1200, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'Seether:d=32,o=6,b=35:p,16f#,16d#,d#,16e,d#,c#,d#,c#,b5,8b5,16f#,16d#,d#,16e,16d#,16d#,c#,8b5,16f#,16d#,d#,16e,16d#,16d#,c#,8b5,16a#.5,16b5,8c#,16c#,b5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (726, 1, N'-Rock-', N'Veruca Salt', N'Seether 2', 1200, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'Seether:d=32,o=6,b=56:p,c#.,c#.,4c#,16d#.,4c#,8c#.,c#.,8d#.,4b5,p,c#.,c#.,4c#,16d#.,4c#,16c#.,4d#,4b5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (727, 1, N'-Rock-', N'Verve Pipe', N'Freshman', 1200, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'Freshman:d=8,o=6,b=112:32p,f5,c,f,c,4g,f,4g,a#5,d,a#5,4a#,p,d5,a5,d,a5,f,d,c5,g5,a#4,f5,a#5,f5,4d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (728, 1, N'-Rock-', N'White Town', N'Your Woman (Beginning)', 481, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'YourWoman:d=16,o=5,b=50:32p,8g#,d#.,32b,8g#,d#.,32b,8g#,d#.,32b,8g#,8d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (729, 1, N'-Rock-', N'White Town', N'Your Woman', 480, CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'YourWoman:d=32,o=5,b=25:p,a#,g#,a#,g#,a#,g#,b,16c#6,16g#,16f#,8g#.,g#,a#,g#,a#,g#,b,16c#6,16d#6,d#6,c#6,4g#,f#,f,f#,g,g#,16b,16a#,16g#,16d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (730, 1, N'-Classical-', N'Bach', N'Toccata and Fugue', 11954, CAST(N'2018-02-01T00:00:00.000' AS DateTime), N'TocattaFugue:d=32,o=5,b=100:a#.,g#.,2a#,g#,f#,f,d#.,4d.,2d#,a#.,g#.,2a#,8f,8f#,8d,2d#,8d,8f,8g#,8b,8d6,4f6,4g#.,4f.,1g,32p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (731, 1, N'-Other-', N'T-Mobile', N'T-Jingle', 114, CAST(N'2018-02-26T00:00:00.000' AS DateTime), N'T-Jingle:d=8,o=6,b=180:C#,C#,C#,F6,2C#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (732, 1, N'-Rock-', N'They Might Be Giants', N'Istanbul (not Constantinople)', 1350, CAST(N'2018-03-08T15:52:31.640' AS DateTime), N'Istanbul:d=16,o=5,b=80:32c#.,32c#.,f#.,a.,c#.6,c#,f#.,a.,32c6,c#.6,c#.6,f#.,a.,c#.6,c#,f#.,a.,32c6,c#.6,c#.6,f.,g#.,b.,32f.,f.,g#.,b.,g#.,32f#.,32f#.,32f#.,8f#,32f#.,32f#,32f#.,f#.,4f#,32p,f#.,g#.,8a.,8g#.,4f#,g#.,a.,c#.6,g#.,a.,4f#.,f.,f.,f.,32f.,f.,f.,32f.,8f.,f#.,f#.,a.,b.,c#.6,32c#.6,4c#6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (733, 1, N'-Pop-', N'Britney Spears', N'Stronger', 1124, CAST(N'2018-03-08T15:53:45.983' AS DateTime), N'Stronger:d=4,o=5,b=225:2a,2a,1a.,b,c6,b,a,g,2f,2c6,1f.,2e,1e,e,2a,2a,1a.,a,a,b,c6,b,a,g,2f,2c6,1f.,2e,1e.,1f6,1f6,2e6,f6,2e6,2d6,2d6,1c6,a,e6,2d6,2e6,e6,2e6,1g.6,2a.,1a.,a,c6,1b.6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (734, 1, N'-Pop-', N'Britney Spears', N'Sometimes', 467, CAST(N'2018-03-08T15:54:32.727' AS DateTime), N'Sometimes:d=8,o=6,b=100:d,d#,f,4f.,4p,a#5,d,c,4c.,d,d#,f,4f,f,c,4a#.5,p,d,d#,d,d#,d,d#,d#,g,4f,f,c,4a#.5,p,d,c,4c.,d,d#,f,4g.,f,c,2a#5,c,c,c,d,c,a#5,4a#5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (735, 1, N'-Pop-', N'Britney Spears', N'Oops I Did It Again (Alt)', 468, CAST(N'2018-03-08T15:55:10.573' AS DateTime), N'OopsIDidIt:d=8,o=5,b=100:4g#6,4c#6,c6,c#6,d#6,4c#.6,p,b,b,d#6,f#6,4e.6,p,b,f#6,g#6,f#6,4e.6,p,g#6,f#6,e6,c#6,c6,4g#6,4c#6,c6,c#6,d#6,16e6,16d#6,4c#6,p,16b,16b,b,d#6,f#6,4a6,4g#6,4f#6,e6,p,e6,4g#6,4g#6,f#6,e6,4c#6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (737, 1, N'-Pop-', N'Britney Spears', N'Baby One More Time (Alt)', 398, CAST(N'2018-03-08T15:56:31.813' AS DateTime), N'HitMeBaby:d=32,o=5,b=50:d,p,d,p,d,p,8d,16p,d,p,16c#,16d,8e,8a,16g,16f,16p,f,p,f,p,16p,16f.,16p,f,p,16g,16a,16a#,16a,16p,16d6,16c#6,16d6,16p,d,p,d,p,d,p,8d,16p,d,p,16c#,16d,8e,8a,16g,16f,16p,f,p,f,p,f,p,8f,16p,f,p,16g,16a,16a#,16a,16p,16d6,c#6,p,d6,16p,p,p,d,p,d,p,8d,16p,d,p,16c#,16d,8e,8a,16g,16f,16p,f,p,f,p,f,p,8f,16p,f,p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (738, 1, N'-Pop-', N'Backstreet Boys', N'Back To Your Heart', 169, CAST(N'2018-03-09T09:24:22.393' AS DateTime), N'BackToYour:d=4,o=5,b=100:8a7,8f#,8a,8a,8f#,a,8f#,2a,8p,8a7,16a,16a,g,8f#,g,8f#,g,2a,p,8f#,8a,8a,8f#,a,8f#,8b,8p,a.,p,8a,8g,8g,8f#,g,8f#,g,a,a.,p,8b7,8d,d,e,8d,2d,p,8b7,8d,8d,8d,e,8f#,2f#.,p,8b7,8d,8d,8e,e,8f#,2d.,p,8b7,8d,8d,8d,g,f#,e,p,8d,d,e,d.,8p,8d,d,e,d.,p,8b7,d,8e,f#.,8e,d,c#,2d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (739, 1, N'-Pop-', N'Backstreet Boys', N'More Than That', 90, CAST(N'2018-03-09T09:25:00.137' AS DateTime), N'MoreThan:d=16,o=6,b=40:8g#,c,8c#.,g#,8g#,g,g,8g.,f,g,8g#,c,8c#.,g#,8g#.,a#,a#.,32g#,8g.,8g#,c,8c#.,g#,8g#,g,g,4g,c#,d#,f,d#,c,a#,4c')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (740, 1, N'-Pop-', N'Backstreet Boys', N'No One Else Comes Close', 162, CAST(N'2018-03-09T09:25:25.677' AS DateTime), N'BSBComesCl:d=4,o=5,b=285:f,d#,d,c,2a#.4,g4,a#4,2f,1d#.,16d#.,d,c,a#4,1g#.4,g,16p,1f.,16f.,d#,d,c,2a#.4,g4,a#4,2f,1d#.,16g.,f,d#,d,1c.,g,16p,1f.,16f.,d#,d,c,2a#.4,g4,a#4,2f,1d#.,16d#.,d,c,a#4,1g#4,c,c,c,2g,1f.,16d#,f,1f#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (741, 1, N'-Pop-', N'Backstreet Boys', N'Quit Playing Games With My Heart', 525, CAST(N'2018-03-09T09:25:56.707' AS DateTime), N'QuitPlayin:d=4,o=5,b=100:e,e.6,2c#6,16d6,16c#6,d.6,2a,16d6,16c#6,d.6,a,b,2a.,e,e.6,2c#6,16d6,16c#6,d.6,2a,16d6,16c#6,d.6,a,b,2a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (742, 1, N'-Pop-', N'Backstreet Boys', N'Spanish Eyes', 168, CAST(N'2018-03-09T09:26:18.347' AS DateTime), N'SpanishEye:d=8,o=5,b=70:16g,16a,4a#.,16g,16a,a#,a,g,f,f,4d#.,p,16g,16a,4a#.,16g,16a,a#,c6,d6,d#6,d#6,2d.6,16d6,16d#6,f6,d#6,d6,d6,4c.6,4p,16g,d6,c6,c6,16a#,4a#,16a,a,g,2g.,g,2f,f6,d#6,d6,c6,2d#.6,16c6,16d6,d#6,d6,c6,c6,16a#,a#.,16a,a.,1g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (743, 1, N'-Pop-', N'Backstreet Boys', N'The One', 271, CAST(N'2018-03-09T09:26:41.490' AS DateTime), N'TheOne:d=16,o=5,b=40:b4,c#,b4,8a4,32p,a4,b4,c#,4b4,32c#,d,e,e,8e,c#,32d,e,e,e,b4,c#,32b4,8a4,32p,a.4,b4,c#,4b4,32c#,32d,e,e,8e,c#,32d,e,e,e,b4,c#,32b4,32a4')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (744, 1, N'-Rock-', N'Bon Jovi', N'Blaze of Glory', 75, CAST(N'2018-03-09T09:27:13.313' AS DateTime), N'BlazOfGlry:d=4,o=5,b=160:32a#4,d#,d#,d#,8d#,d#.,d#,8d#,f.,d#,c#,c#,8a#4,d#.,2c#.,c,c,c,8c,c.,c,a#4,g#4,a#4,d#4,d#4,8d#4,1d#4,8c#,f#,f#,f#,8f#,f#.,2f#,f#,g#,g#,8g#,g#,a#.,2g#.,8g#,a#,g#,8g#,8g#,8g#,8g#,g#,g#,8a#,g#,8g#,a#,g#,8f#,d#.,2d#,8a#,a#.,1g#,8g#,8g#,a#,8g#,g#.,1g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (745, 1, N'-Rock-', N'Bon Jovi', N'You Give Love A Bad Name', 296, CAST(N'2018-03-09T09:27:46.363' AS DateTime), N'LoveBadNam:d=16,o=5,b=70:32b,32p,32b,32p,b,8c.6,p,32a,32p,a,p,a,b,8b.,p,32b,32p,8b,8a,g,32e,32p,32e,32p,32g,32p,32p,8e,4p,32b,32p,b.,32p,8c6,p,c6,c6,d6,a,a,b,8b.,p,32b,32p,b.,32p,8a,g,e,e,g,32e,32p,4e,32b,32p,32b,32p,b,8c.6,p,32a,32p,a,p,a,b,8b.,p,p,b.,32p,a.,32p,32g,e,e,g,32e,32p,8e,4p,32b,32p,b.,32p,8c6,p,c6,c6,d6,a,a,b,8b.,p,32b,32p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (746, 1, N'-Theme-VG-', N'Final Fantasy', N'Battle Won', 632, CAST(N'2018-03-09T09:29:49.973' AS DateTime), N'FF-BatWin:d=32,o=6,b=125:8p,c,d,e,f#,g,a,b,c7,p,c7,p,c7,p,4c7,4g#,4a#,c7,8p,16a#,2c7')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (747, 1, N'-Pop-', N'Celine Dion', N'My Heart Will Go On', 304, CAST(N'2018-03-09T09:31:40.573' AS DateTime), N'MyHeartWil:d=4,o=6,b=100:2d,2e,a5,2a,g,8f#,2e,f#,g,2f#,e,d,c#,2d,c#,1b5,1a5,1d,2e,a5,2a,g,8f#,2e,f#,g,2f#,e,d,c#,2d,c#,c#,2d,e,2f#,2e,1d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (748, 1, N'-Pop-RB-', N'Christina - Mya - Pink - Lil Kim', N'Lady Marmalade', 957, CAST(N'2018-03-09T09:32:22.940' AS DateTime), N'LadyMarmal:d=8,o=6,b=125:4g.,f,4d.,c,4a#.5,c,a#5,p,g,p,4d,d,d,4g,d,d,4g,d,d,4g,d,d,c,a#5,c,d,c,a#5,g5,2g,f,4d.,c,4a#.5,c,a#5,p,g,p,c,a#5,c,d,c,a#5,g5,2g,f,4d.,c,4a#.5,c,a#5,p,g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (749, 1, N'-Pop-', N'Corrs', N'Give Me A Reason', 179, CAST(N'2018-03-09T09:33:03.603' AS DateTime), N'GiveMeARsn:d=32,o=6,b=35:d#,d#,16d#,d#,g,16g#,16d#.,c7,a#,g#,16g,16d#,16d#,d#,g,16g#,16d#.,c7,a#,g#,16g,d#,d#,16d#,d#,g,16g#,16d#.,c7,a#,g#,16g,d#,d#,16d#,d#,g,16g#,16d#.,c7,a#,g#,16g,8g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (750, 1, N'-RB-', N'Craig David', N'Rendevous', 409, CAST(N'2018-03-09T09:33:30.777' AS DateTime), N'Rendevous:d=16,o=5,b=125:g,a#,d6,f6,8a#,8f,d,f,a,c6,8f,8d,c,d#,g,a#,8d#,8c,d,f,a,c6,8a,f,f#,g,a#,d6,f6,8a#,8g,d,f,a,c6,8a,8f,c,d#,g,a#,8g,8d#,d,f,a,c6,8a,8f,c#6,d6,p,c#6,d6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (751, 1, N'-RB-', N'Craig David', N'Seven Days (Intro)', 814, CAST(N'2018-03-09T09:34:01.177' AS DateTime), N'7DaysIntro:d=16,o=6,b=90:b5,32f#,32g,f#,e,f#,e,d,c,b5,8c.,c,4c,8d.,8d,c#,d,4f#,8p,b5,32f#,32g,f#,e,f#,e,d,c,b5,8c.,c,4c,8d.,8d,c#,d,4f#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (752, 1, N'-RB-', N'Craig David', N'Walking Away', 324, CAST(N'2018-03-09T09:34:40.177' AS DateTime), N'WalkinAway:d=4,o=5,b=120:16d6,8e6,16d6,16c6,16a,16c6,16d6,8c6,16a,p,8g.,16g,8d6,16c6,8d6,8e6,8d.6,16p,8e6,16d6,16c6,16a,16c6,16d6,8c6,8a,p,4c6,16c6,8b,16b,8b,8c6,8c.6,8p,8e6,16d6,16c6,16a,16c6,16d6,8c6,16a,p,8g.,16g,8d6,16c6,8d6,8e6,8d.6,8e6,16d6,16c6,16a,16c6,16d6,8c6,16a,8p,4c6,16c6,8b,16b,8b,8c6,4c6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (753, 1, N'-Rock-', N'Creed', N'With Arms Wide Open (Alt)', 305, CAST(N'2018-03-09T09:35:18.987' AS DateTime), N'WithArms2:d=8,o=6,b=80:16d,d,16p,16c,b5,4c,4p,16p,c,c.,16c,b5,4c,4g5,p,c,c,b5,4c,4d,16d,d,16p,16c,b5,4c,16p,4d,16d,d,16p,16c,b5,4c,4p,16p,c,c.,16b5,4b5,c,c,p,16c,c,16p,c,b5,2p,16c,c.,c,b5,4c,4d,16d,d,16p,16c,b5,4c')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (754, 1, N'-Rap-', N'Eminem', N'Kill You', 421, CAST(N'2018-03-09T09:35:48.963' AS DateTime), N'KillYou:d=8,o=5,b=100:e.6,16e6,4p,16b,16b,b,e6,d#6,16p,16d#6,2p,b,d#6,16p,16d#6,4p,p,b,e6,g6,f6,16p,16f6,2p,e.6,e6,4p,16b,16b,b,e6,d#6,2p,b,d#6,4p,p,16p,e6,g6,f6,16p,f6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (755, 1, N'-Pop-', N'Five', N'Closer To Me', 171, CAST(N'2018-03-09T09:37:13.373' AS DateTime), N'Closer2Me:d=16,o=6,b=140:32p,c#.,32p,8c#,p,8d#,p,f.,32p,4f,g#.5,32p,f.5,32p,g#.5,32p,f.5,32p,g#.5,32p,f.5,32p,g#.5,32p,f.5,32p,g#.5,32p,c#.,32p,8c#,p,8d#,p,f.,32p,4f,g#.5,32p,f.5,32p,g#.5,32p,f.5,32p,g#.5,32p,f.5,32p,8g#5,p,8g#5,p,g#.5,32p,4a#5,4g#5,4p,f#.5,32p,f.5,32p,f#.5,32p,f.5,32p,f#.5,32p,f.5,32p,8f#5,p,8f#5,p,f#.5,32p,4g#5,f#.5,32p,f.5,32p,f#.5,32p,f.5,32p,f#.5,32p,f.5,32p,8f#5,p,8f#5,p,f.5,32p,8f#5,p,8f#5,p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (757, 1, N'-Pop-', N'Five', N'If You Got The Feeling', 144, CAST(N'2018-03-09T09:38:18.273' AS DateTime), N'IfYouveGot:d=16,o=5,b=100:8f,g,8g,e,e,p,8e,d,8e,d,e,p,e,e,d,8d,d,c,4p,p,c,e,p,8f,f,8f,d,e,p,8e,d,8e,p,e,e,d,8e,8d,4c,8p,c,e,p,8g,e,8g,e,e,p,8e,d,8e,d,e,p,e,e,d,8e,d,c,4p,p,c,e,p,8g,e,8g,e,e,p,8e,d,8e,d,d,p,d,d,d,8d,8c,4c')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (758, 1, N'-Pop-', N'Five', N'Keep On Moving', 165, CAST(N'2018-03-09T09:38:43.230' AS DateTime), N'KeepMoving:d=4,o=5,b=140:8d,f,8a,2p,8d,f,f,d,c,8d,8p,a#,8a#,a#,8a,f,f,p,8c,8d,8f,f,8a,p,8c,8d,8f,16p,32p,f,d,p,8c,8d,a#,8a#,8a#,8a#,8a,f,f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (759, 1, N'-Pop-', N'Janet Jackson', N'Doesn''t Really Matter', 175, CAST(N'2018-03-09T09:39:19.650' AS DateTime), N'DoesntReal:d=16,o=5,b=100:g,g,g,g,g,g,8a#,8a#,g#,8g#.,8g,8f,f,8f.,8g#,8g#,a#,8g.,f,d#,8d#,d#,8d#.,8g,8g,f,8c.,8d#,d#,d,d,8d.,8f,8f,d#,8d#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (760, 1, N'-Pop-', N'Janet Jackson', N'Got Til It''s Gone', 160, CAST(N'2018-03-09T09:39:50.270' AS DateTime), N'GotTilItsG:d=8,o=5,b=160:2b,4b,a,4a#,a,2c6,f.,16f,4a#,a,g,p,f,p,d,p,d,4f,4c,4p,2b,4b,a,4a#,a,2c6,f.,16f,4a#,a,g,p,f,p,16d,p,d,4f,4c')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (761, 1, N'-Pop-', N'Jennifer Lopez', N'Feeling So Good', 146, CAST(N'2018-03-09T09:40:17.840' AS DateTime), N'FeelingSoG:d=8,o=6,b=125:g,4f,4d#,4g,p,g,4f,4d#,4g,p,g,4f,4d#,4g#,4g,4f,4d#,4g,p,g,4f,4d#,4g,p,g,4f,4d#,4g,p,g,f,d#,d#,d#,4g#,4g,4f,4d#,4d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (762, 1, N'-Pop-', N'Jessica Simpson', N'Where You Are', 156, CAST(N'2018-03-09T09:41:33.020' AS DateTime), N'WhereUAre:d=16,o=5,b=63:2g,4d#.,8p,c,8f,f,8f,8c,4d.,p,a#,a#,a#,8d#,d#,8d#,8d,2c,32p,8d,d#,8d,8c,2a#,4g,d,8d#,8d,2c,8g,8f,4f.,8p,a#,a#,8d#.,8d#,8d,4c.,8p,d,d#,d,d,d,8d#,8d.,8f#.,8g,8a.,8a.,8a#.,4g.,4p,32p,8a#,8a,a#,8c6,8d#,8d,8c.6,8c6,8a#,8a,4a,a#,8a.,8g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (763, 1, N'-Rap-', N'Lil Bow Wow', N'Bow Wow (That''s My Name)', 202, CAST(N'2018-03-09T09:42:28.160' AS DateTime), N'BowWowName:d=4,o=6,b=200:f,f,g,8f,8d,f,8f,8d,2g,d,d,d.,d.,c,8a#5,8g5,c,f,f,f,8f,8d,f,8f,8d,g,8c,8c,8c,8c,c,8c,8c,c,8d,8c,d,8d,8c,d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (764, 1, N'-Rock-', N'Limp Bizkit', N'Rollin', 399, CAST(N'2018-03-09T09:42:56.277' AS DateTime), N'Rollin:d=8,o=6,b=100:e,c#,16c#,c#,16c#,c#,16c#,c#,16p,16c#,16g#,e,c#,16c#,c#,16c#,c#,16c#,c#,16c#,16g#,16e,e,c#,16c#,c#,16c#,c#,16c#,c#,16c#,g#,e,c#,16c#,c#,16c#,c#,16c#,c#,c#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (765, 1, N'-Pop-', N'Madonna', N'What It Feels Like For A Girl', 171, CAST(N'2018-03-09T09:43:26.670' AS DateTime), N'Feels4AGrl:d=8,o=5,b=125:16a#4,c.,d#,2d#,p,4a#,g,4g#,4g.,16f,d#.,d#,2d#,p,16a#4,c.,d#,2d#,p,4a#,g,4g#,4g.,16f,d#.,d#,2d#,p,16a#4,c.,d#,2d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (766, 1, N'-Pop-', N'Mariah Carey', N'Heart Breaker', 170, CAST(N'2018-03-09T09:43:48.830' AS DateTime), N'HeartBreak:d=8,o=5,b=100:e,g,4a,4a,16g,16f,e,e,g,a,e,e,2g,d,e,16d,16c,a,a,4g,16f,e,e,g,a,e,f,4g,d,e,4d,4d,d,c,c,d,e,c,a7,d,4c,a7,4g7,a7,d,4c,d,4e,g,a,2g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (767, 1, N'-Pop-', N'Mel B', N'Tell Me', 148, CAST(N'2018-03-09T09:44:12.467' AS DateTime), N'TellMe:d=8,o=5,b=112:4g,2g,4g,p,g,f,d#,f,d#,2f,4f,p,g,f,d#,f,d#,2f,4f,p,g,f,d#,2c,4c,p,a#,2a#,4a#,p,4g,2g,4g,p,g,f,d#,4f,2f,4f,p,g,f,d#,4f,2f,16f,g,f,d#,2c,16c,f,4d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (768, 1, N'-Pop-', N'Mel B', N'Never Be The Same Again', 165, CAST(N'2018-03-09T09:44:49.323' AS DateTime), N'BeTheSame:d=8,o=5,b=80:a#,c,d,d#,d,d#,f.,f.,g,p,g,g,g,g,g,g,16a,4a#,g,g,16f,16f,16f,16f,f,16f#,16g,p,g,g,16g,16g,16g,16g,g,g,16a,4a#,32p,g,g,16f,16f,16f,16f,f,16f#,16g,p,g,g,g,g,g,g,16a,4a#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (769, 1, N'-80s-', N'Michael Jackson', N'Thriller', 338, CAST(N'2018-03-09T09:45:18.597' AS DateTime), N'Thriller:d=8,o=5,b=112:b,d6,b,e6,16p,2d6,4p,d6,16p,c#6,16p,b,4p,p,b,b,32a,16p,32p,a,16g,g,16p,e,g,a,b,a,a,16g,b')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (770, 1, N'-Rock-', N'Robbie Williams', N'Let Love Be Your Energy', 157, CAST(N'2018-03-09T09:48:19.587' AS DateTime), N'LetLoveBeY:d=4,o=6,b=225:g,g#,g,f,d#,1c.,2d#,2f,2f#,2f,d#,c,a#5,g,1g.,p,g,g#,g,f,d#,1c.,d#,c,2d#,d#,c,2d#,2f,2d#.,g,g#,g,f,d#,1c.,2d#,2f,2f#,2f,d#,c,a#5,g,1g.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (771, 1, N'-Rock-', N'Robbie Williams', N'Strong', 161, CAST(N'2018-03-09T09:48:39.490' AS DateTime), N'Strong:d=4,o=5,b=200:1b,a,g#,e,2f#,16f#,2g#.,p,e,2f#,16f#,2g#.,p,e,2f#,16p,16d#,16c#,1b.,1b,a,g#,e,2f#,16f#,2g#.,p,e,2f#,16f#,2g#.,p,e,2f#,16p,16d#,16c#,1b')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (772, 1, N'-Rock-', N'Robbie Williams', N'You''re The One', 155, CAST(N'2018-03-09T09:50:23.963' AS DateTime), N'YoureThe1:d=16,o=7,b=40:g#6,a#6,4c,g#6,a#6,4c,f#6,a#6,4c,g#6,a#6,32c,32c#,8c,c,f,d#,c,8a#6,4g#6,f6,g#6,c,8a#6,4c,c,g#6,4g#6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (773, 1, N'-Pop-', N'Ronan Keating', N'Life Is A Roller Coaster', 177, CAST(N'2018-03-09T09:50:52.820' AS DateTime), N'LifeIsARol:d=8,o=6,b=125:g5,4e,4c,2e.,2p,p,g5,4e,4c,2d.,e,e,e,e,4e,e,e,e,c,c.,16c,c.,16c,c.,16c,4c,4d')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (774, 1, N'-Pop-', N'Ronan Keating', N'The Way You Make Me Feel', 171, CAST(N'2018-03-09T09:51:20.540' AS DateTime), N'MakeMeFeel:d=32,o=5,b=40:a4,a4,16b4,d,16d,16b4,4d,a4,f#,f#,f#,16f#,e,d,16e,4d,f#,f#,f#,16f#,e,d,4d,f#,16f#,16f#,e,d,16e,16d,16b4,8a4,a4,a4,a4,16b4,d,16d,8b4,p,a4,a4,f#,f#,f#,16f#,e,d,16e,4d,a4,a4,a4,16b4,d,16d,8b.4')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (775, 1, N'-Pop-', N'S Club 7', N'Bring It All Back (Alt)', 189, CAST(N'2018-03-09T09:51:48.413' AS DateTime), N'BrngItBk2:d=32,o=5,b=50:16a#,16p,16c#6,p,16f#,f#,16f#,16a#,p,c#,p,c#,16c#,16d#,16f#,16g#,16f#,16f#,p,a#,p,p,a#,p,g#,p,f#,16g#,16f#,16f#,p,f#,p,f#,16d#,f#,p,g#,16f#,p,d#,p,f#,p,d#,p,16a#,16p,16c#6,p,16f#,f#,16f#,16a#,p,c#,p,c#,16c#,16d#,16f#,16g#,16f#,16f#,p,a#,p,a#,16a#,16g#,16f#,g#,p,f#,p,f#,p,f#,p,f#,16d#,f#,p,g#,16f#,p,d#,p,f#,p,d#,p,16a#,16p,16c#6,p,16f#,f#,16f#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (776, 1, N'-Pop-', N'Savage Garden', N'I Knew I Loved You', 189, CAST(N'2018-03-09T09:53:04.407' AS DateTime), N'IKnewILove:d=8,o=6,b=90:b,b,a,a,4c#7,4b,4a.,4p,b,b,a,a,c#7,b,4b,4a.,p,16e5,16a,16b,16a,16p,b,b,a,a,e7,c#7,4d7,16c#7,4a.,4p,16e5,16a,16b,16a,16p,b,b,a,a,c#7,4d7,c#7,2a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (777, 1, N'-Pop-', N'Savage Garden', N'The Animal Song', 181, CAST(N'2018-03-09T09:53:27.543' AS DateTime), N'AnimalSong:d=8,o=5,b=112:c#,a#,16a#,a#.,a#,16a#,b,b.,a#,16a#,g#,g#,f#,4g#.,p,16p,16c#,16a#,a#,a#,a#,b,b,b,a#,a#,g#,g#,a#,4g#.,4p,g#,a#,16a#,a#.,b,b,b,b,16b,c#6,c#6,d#.6,4c#6,p,16p,16f#,a#,a#,a#,16a#,b.,b,b,b,c#.6,c#.6,d#6,c#.6,c#.6,f6,2f#6,2b,a#,g#,4g#,f#.6,f#.6,c#6,4d#6,4c#6,4b,4a#,a#,g#,4g#,c#.6,c#.6,f6,2f#6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (778, 1, N'-Pop-', N'Savage Garden', N'The Best Thing', 152, CAST(N'2018-03-09T09:53:51.137' AS DateTime), N'TheBestThi:d=8,o=5,b=125:4f#6,4e6,c6,b,4a,b,a,b,a,4b,4f#,p,16e,16f#,b,4c#.6,p,4c#6,d6,c#6,b,4a,4b,4f#6,4e6,c6,b,4a,b,a,b,a,4b,4f#,4c#6,4b,f#,f#,b,4c#6,b,b,a,4a,4b,4f#,2p,f#6,f#6,f#6,e6,e6,c#6,4e6,4f#6,4e6,c6,b,4a,b,a,b,a,4b,4f#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (779, 1, N'-Classical-', N'Bach', N'Badinerie', 852, CAST(N'2018-03-09T09:55:45.963' AS DateTime), N'Badinerie:d=16,o=6,b=125:8b,d7,b,8f#,b,f#,8d,f#,d,4b5,f#5,b5,d,b5,c#,b5,c#,b5,a#5,c#,e,c#,8d,8b5,8b,d7,b,8f#,b,f#,8d,f#,d,4b5,8d,8d,8d,8d,8b,8d,32d,32c#,32d,32c#,8c#,8f#,8f#,8f#,8f#,8d7,8f#,32f#,32f,32f#,32f,8f,c#,f#,a,f#,g#,f#,g#,f#,f,g#,b,g#,a,g#,a,g#,f#,a,f#,f,f#,b,f#,f,f#,c#7,f#,f,f#,d7,f#,f,f#,d7,c#7,b,c#7,a,g#,f#,8a,8g#,4f#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (780, 1, N'-Rap-', N'Sisqo', N'Thong Song (Alt)', 349, CAST(N'2018-03-09T09:57:13.280' AS DateTime), N'ThongSong2:d=4,o=5,b=125:b4,c#,d,a,g,f#,2e,8g,16g,16g,16g,16f#,8e,16d,8b.4,f#,f#,16f#,16e,16d,2f#,8d,f#,8d,8e,2b4,b4,c#,d,a,g,f#,2e,8g,16g,16g,16g,16f#,8e,16d,8b.4,f#,f#,16f#,16e,16d,2f#,8d,f#,8d,8e,2b4')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (781, 1, N'-Dance-', N'Sonique', N'Feels So Good', 318, CAST(N'2018-03-09T09:58:45.067' AS DateTime), N'FeelsSoGoo:d=16,o=5,b=125:d,a#,p,d,g,p,d,a,p,d,a#,p,a#,a,a#,p,d,a#,p,d,g,p,d,a,p,d,a#,p,a#,a,a#,p,c,a,p,c,f,p,c,g,p,c,8a,4p,c,a,p,c,f,p,c,g,p,c,8a,4p,d,a#,p,d,g,p,d,a,p,d,a#,p,a#,a,a#,p,d,a#,p,d,g,p,d,a,p,d,a#,p,a#,a,a#,p,c,a,p,c,f,p,c,g,p,c,8a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (782, 1, N'-Dance-', N'Sonique', N'Sky', 201, CAST(N'2018-03-09T09:59:03.360' AS DateTime), N'Sky:d=16,o=5,b=140:2g#,2a.,4p,4g#.,g#,g#,8g#,8f#,8e,8p,4f#.,f#,f#,8f#,8e,4d#,8e.,d#,4c#,2g#,2a.,4p,4g#,8g#,8g#,8g#,8f#,8e,8p,8f#.,8f#.,8f#,8f#,8e,4d#,8e.,d#,4c#,2g#,2a.,4p,4g#.,g#,g#,8g#,8f#,8e,8p,4f#.,f#,f#,8f#,8e,4d#,8e.,d#,4c#,2g#,2a.,4p,4g#,8g#,8g#,8g#,8f#,8e,8p,8f#.,8f#.,8f#,8f#,8e,4d#,8e.,d#,2c#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (783, 1, N'-Pop-', N'Spice Girls', N'Holler', 160, CAST(N'2018-03-09T09:59:30.433' AS DateTime), N'Holler:d=8,o=6,b=100:g#5,a#5,c#,c#,d#,f.,16d#,p,a#5,c#,a#5,c#,d#,4f,p,a#5,c#,a#5,c#,d#,f.,d#.,a#5,c#,a#5,d#,a#5,a#.5,p,16p,g#,f#,f,c#,d#,f.,16d#,p,a#5,c#,a#5,c#,d#,4d#.,f,d#,c,a#.5,c#.,4d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (784, 1, N'-Pop-', N'Spice Girls', N'Let Love Lead The Way', 152, CAST(N'2018-03-09T10:00:03.750' AS DateTime), N'LetLoveLea:d=8,o=7,b=70:c,16d,e,d.,b6,16c,d,c.,a6,16b6,c,b6,a6,g6,16a6,4c,c,16d,e,a.,4c,16e,f,16e,d,c,4a.6,32p,e,16g,4d,16c,d,16e,d.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (785, 1, N'-Pop-', N'Spice Girls', N'Mama', 164, CAST(N'2018-03-09T10:00:24.447' AS DateTime), N'Mama:d=8,o=5,b=125:4g,p,4b,p,p,b,a,g,4e,4p,b,a,g,p,e,4c,2p,4p,4a,4p,4b,p,p,b,a,g,4e,4p,b,a,g,p,e,4a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (786, 1, N'-Pop-', N'Spice Girls', N'Spice Up Your Life', 157, CAST(N'2018-03-09T10:00:46.097' AS DateTime), N'SpiceUpLif:d=8,o=5,b=125:g#.,f.,c.,g#.,f,c,g#.,e.,c.,g.,e,c,g#.,f.,c.,g#.,f,c,g.,e.,c,a#.4,c.,e,16g#,16g#,16g#,16g#,4g#,16p,16c6,16c6,16c6,16c6,16c6,16c#6,16p,c.6,16g,16g,16g,16g,4g,16p,16a#,16a#,16a#,16a#,16a#,16c6,16p,a#.,16g#,16g#,16g#,16g#,4g#,16p,c6,p,c6,p,g#,a#.,g.,2e')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (787, 1, N'-Pop-', N'Spice Girls', N'Viva Forever', 173, CAST(N'2018-03-09T10:01:02.607' AS DateTime), N'Viva4Ever:d=8,o=6,b=112:f#,f#,16f,f,2d#,f,16f#,f,2c#,d#,16f,d#.,2b5,c#,16d#,2c#.,f#,16f,f,2d#,f,16f#,a#,2f,f#,16g#,g#,2f#,f#,16f,2f#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (788, 1, N'-Pop-', N'Take That', N'How Deep Is Your Love', 168, CAST(N'2018-03-09T10:01:49.733' AS DateTime), N'HowDeepIsY:d=8,o=5,b=112:1b,4b,4c#6,4d6,1b,b,c#6,2d6,4d6,c#6,4b,16c#6,16b,1a,a,4b,2c6,c6,4b,b,4a,a,4g#,g#,e,4f#,g#,16g#,f#,2e,f,f#,g#,4a,a,c#,2g#,a,16a,16g#,1f#,g#,a,4b,b,g#,4b,16b,16c#6,b')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (790, 1, N'-Rock-', N'U2', N'Stuck In A Moment You Can''t Get Out Of', 215, CAST(N'2018-03-09T10:03:59.647' AS DateTime), N'StuckInAMo:d=8,o=6,b=100:4p,4f#,4e,4b5,f#,e,b5,f#,e,b5,f#,e,c#,b5,b5,4b5,c#.,16b5,16b5,16b5,4c#,c#,4b5,g#5,4e.5,p,4f#,4e,4b5,f#,e,b5,f#,e,b5,f#,e,c#.,16b5,b5,4b5,c#,p,16e5,16e5,c#,p,c#,4b5,g#5,e5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (791, 1, N'-Dance-', N'Vengaboys', N'Uncle John', 180, CAST(N'2018-03-09T10:04:23.537' AS DateTime), N'UncleJohn:d=32,o=5,b=50:d,p,d,e,p,f#,p,16g.,p,16a,b,a,p,16f#.,e,p,d,p,e,p,d,p,16p,f#,p,16d.,e,p,f#,p,16g.,p,a,b,p,a,p,16f#.,e,p,d,p,e,p,d,p,e,p,d,d,p,d,p,d,e,p,f#,p,16g.,p,16a,b,a,p,16f#.,e,p,16p,p,d,p,e,p,d,f#,p,16d.,e,p,f#,p,16g.,p,a,b,p,a,p,16f#.,e,p,d,p,e,p,d,p,e,p')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (792, 1, N'-Pop-', N'Westlife', N'Flying Without Wings', 199, CAST(N'2018-03-09T10:05:28.420' AS DateTime), N'FlyingWings:d=8,o=5,b=70:16d6,c6,16p,b,a,g,4e,p,d6,c6,b,16a,g,16p,4a,p,d6,c6,b,16a,g,16p,16b,2g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (793, 1, N'-Pop-', N'Westlife', N'I Have A Dream', 184, CAST(N'2018-03-09T10:05:48.290' AS DateTime), N'HaveADream:d=4,o=5,b=125:f,d.6,8c6,1d#6,p,f,a#.,8a,1a#,p,f,d.6,8c6,1d#6,p,f,a#.,8a,1a#,p,8d6,8d#6,8f.6,16g6,f6,1c6,p,8c6,8d6,8d#.6,16f6,1d6,p,8d6,8d#6,8f.6,16g6,f6,1c6,p,8c6,8d6,8d#.6,16f6,1d6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (794, 1, N'-Pop-', N'Westlife', N'If I Let You Go', 163, CAST(N'2018-03-09T10:06:11.927' AS DateTime), N'IfILetYouG:d=8,o=5,b=90:f,f,f,f,e,2e,d,d,d,c,4c,4p,c,g,g,f,4f,f,e,f,4e,d,4d,4p,f,f,f,e,4e,d,d,d,d,c,2c,p,4g.,4f.,4e,2c,c,c,c,c,d,2c.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (795, 1, N'-Pop-', N'Westlife', N'My Love', 171, CAST(N'2018-03-09T10:06:28.590' AS DateTime), N'MyLove:d=8,o=5,b=90:g,c6,16c6,4c6,16p,g,d6,16d6,4d6,16p,g,b,b,b,c6,4c6,p,g,a,16a,4a,16p,a,a,a,c6,a,a,4g,p,16p,g,c6,16c6,4c6,16p,g,d6,16d6,4d6,16p,g,e6,g6,g6,e6,c6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (796, 1, N'-Pop-', N'Westlife', N'Seasons In The Sun', 175, CAST(N'2018-03-09T10:06:48.177' AS DateTime), N'SeasonsInT:d=8,o=5,b=90:a#,b,4c#6,c#6,c#6,4c#6,b,a#,g#,f#,g#,a#,4d#,g#,a#,4b,g#,f#,4f,f,f,f,f,d#,f,4f#,c#6,d6,4e6,e6,e6,4e6,d6,c#6,b,a,b,c#6,4f#,b,c#6,4d6,b,a,4g#,4g#,4g#,f#,g#,2a')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (797, 1, N'-Pop-', N'Westlife', N'Uptown Girl', 398, CAST(N'2018-03-09T10:07:09.733' AS DateTime), N'UptownGirl:d=8,o=5,b=125:4e6,4e6,2e6,4p,d#6,e6,f#6,e6,d#6,c#6,4c#6,b,g#,2b,p,a,g#,a,b,a,g#,f#,4e,4e6,2e6,p,e6,d#6,e6,f#6,e6,d#6,c#6,4c#6,b,g#,2b,p,a,g#,a,4b,c#6,d#6,4e6,4e6,2e6,d#6,e6,f#6,e6,d#6,c#6,4c#6,b,g#,2b,p,a,g#,a,b,a,g#,f#,4e,4e6,4f#6,4e6,p,e6,d#6,e6,f#6,e6,d#6,c#6,4c#6,b,g#,2b,a,g#,a,2b,4p,4b,4e6,4a6,4g.6,e6,4e6,4g6,2f6,4d6,4e6,4f6,4e6,2d6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (798, 1, N'-Pop-', N'Westlife', N'What Makes A Man', 168, CAST(N'2018-03-09T10:07:27.317' AS DateTime), N'WhatMakesA:d=16,o=6,b=125:f,32f,f.,f.,e,4e,32d,c,d.,32d,d.,c.,4c,g.,g.,g.,f,4f,32d,e,f.,32e,e.,d.,4d,d,d,f.,f.,f.,32e,4e,d,32c,d.,d,32d,d.,c,4c,32c,d,32e,g,8f,8e,4d,32p,g5,32f,f,f.,f.,32e,4c')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (799, 1, N'-Pop-', N'Whitney Houston', N'It''s Not Right (But It''s Okay)', 195, CAST(N'2018-03-09T10:08:29.290' AS DateTime), N'ItsNotRigh:d=16,o=5,b=56:f#4,32c#,f#,a,c#6,32c#,f#,a,c#6,f#4,32c#,f#,a,c#6,32c#,f#,a,c#6,c#4,32g#4,c#,e,g#,32g#4,c#,e,g#,c#4,32g#4,c#,e,g#,32g#4,c#,e,g#,f#4,32c#,f#,a,c#6,32c#,f#,a,c#6,f#4,32c#,f#,a,c#6,32c#,f#,a,c#6,c#4,32g#4,c#,e,g#,32g#4,c#,e,g#,c#4,32g#4,c#,e,g#,32g#4,c#,e,g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (800, 1, N'-Pop-', N'Will Smith', N'Men In Black', 423, CAST(N'2018-03-09T10:08:58.430' AS DateTime), N'MenInBlack:d=8,o=6,b=112:4f5,g#5,16p,16g#5,c,c,c,1p,c,c#,c,g#5,4a#5,4c,p,c,a#5,16g#5,2p,4f5,g#5,16p,16g#5,c,c,c,p,4a#5,g#5,4f5,4p,p,c,c#,c,g#5,4a#5,2c')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (801, 1, N'-Oldies-', N'Barry Manilow', N'Can''t Smile Without You', 132, CAST(N'2018-03-09T10:10:16.310' AS DateTime), N'CantSmile:d=32,o=5,b=63:16g#.,p,16g#.,d#,16f#.,p,16f#.,c#,16f.,p,16f.,a#4,16d#.,p,16d#.,p,16a#.,p,16a#.,d#,16g#.,p,16g#.,c#,16f#.,p,16f#.,b4,16f.,p,16f.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (802, 1, N'-Oldies-', N'Barry Mann', N'Who Put The Bomp', 128, CAST(N'2018-03-09T10:10:41.483' AS DateTime), N'WhoPutBomp:d=32,o=5,b=40:16b,b,b,16b,f#,f#,16g#,g#,16g#,g#,16g#,16e,e,e,16e,e,e,16f#,f#,16g#,g#,16f#,8f#,16f#,16f#,8g.,16d#6,16d#6,16c#6,16b,16c#6,d6,c#6,8b,16c#6,16d#6,16d#6,16d#6,16b,16e6,16c#6,16b,16a#,4b.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (803, 1, N'-Classical-', N'Beethoven', N'1812 Overture', 167, CAST(N'2018-03-09T10:11:05.223' AS DateTime), N'1812Over:d=4,o=6,b=355:8b5,8b5,e,f#,g#,f#,e,f#,2g#,2e,1e.,8b5,8b5,e,f#,g#,f#,e,f#,2g#,2e,1e.,8c#,8c#,f#,g#,f#,c#,a5,c#,f#,c#,a5,c#,1f#.,8b5,16b.5,e,f#,e,b5,g#5,b5,e,c#,g#5,c#,1e.,8c#.,8c#,8c#.,2e,1c#,8b.5,b5,8b.5,2d#,1b5,b5,b5,8b.5,2c#,2e,2d#,2f#,2e,b.,a#.,a.,g#.,2g,2f#,f.,2e,d#.,d.,2c#,1b5,1c,1c#,1d#,1e,2f#,2d#,1e,2f#,2d#,2e,2d#,2e,2d#,2e,2d#,2e,2d#,1e.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (804, 1, N'-Oldies-', N'Bette Midler', N'From A Distance', 134, CAST(N'2018-03-09T10:12:35.253' AS DateTime), N'FromADist:d=16,o=6,b=45:32d#.,32f.,d#.,8g#.5,g#.,8g.,f.,4d#,f.,32c.,32a#.5,8c.,c,c#,d#,8d#,32c#.,c#.,32c.,32a#.5,8a#5,32c,32a#5,g.5,32a#.5,32g#.5,4g#5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (805, 1, N'-Country-', N'Brooks And Dunn', N'Boot Scootin Boogie', 140, CAST(N'2018-03-09T10:13:01.767' AS DateTime), N'BootScootn:d=16,o=6,b=50:32c,c,32c,c.,a#5,32g5,32a.5,4f.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (806, 1, N'-Oldies-', N'Byrds', N'Turn Turn Turn', 126, CAST(N'2018-03-09T10:13:23.830' AS DateTime), N'TrnTrnTrn:d=8,o=5,b=63:16d#,g,16g#,4a#,4g#,4g,4f.,16p,16d#,g,16g#,a#,a#,4g#,4g,4f.,16p,16d#6,d#6,16d#6,d.6,16d#6,d#.6,16d6,4d#6,16g6,f6,16d#6,4d#.6,c6,c.6,a#.,g#,4g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (807, 1, N'-Oldies-', N'Credence Clearwater Revival', N'Down On The Corner', 125, CAST(N'2018-03-09T10:13:51.103' AS DateTime), N'DownOnCrnr:d=2,o=5,b=285:f#,f#,f#,a#,a#,a#,g#,4g#,4g#,a#,1f.,c#,c#,c#,f,4g#,g#,g#,g#,4f,g#,4g#,g#,f,c#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (808, 1, N'-Oldies-', N'Doobie Brothers', N'Listen To The Music', 127, CAST(N'2018-03-09T10:14:16.297' AS DateTime), N'ListnMusic:d=8,o=5,b=112:a.,16a,a,a,4g,4f.,c.,f.,2f,p,a,2a,32f.,16f,16g,16g,16f,16f,2d,p,g.,16f,e,2c,p,16e,e.,4e.,16f,16e,2d,p,d,f,2a.,p,16a,16a,16a,16a,g.,2f,p,d,f,2g,p,16a,g,2f.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (809, 1, N'-Dance-', N'Fools Garden', N'Lemon Tree (Intro)', 133, CAST(N'2018-03-09T10:14:49.830' AS DateTime), N'LmnTreeInt:d=4,o=5,b=355:a#.,2a#,2d#6,2d#6,8d#.6,g#.,2g#,1c#6,8p,a#.,8a#.,a#.,8a#.,a#.,8g#.,f#.,8f#.,2g#,g#.,1a#,8p,a#.,8a#.,a#.,8a#.,2d#6,2f#6,f.6,2c#6,1a#,8p,8a#.,g#.,8g#.,f#.,2g#,2g#,8f#.,g#.,8g#,g#.,2a#,2c#6,2g#,g#,g#.,8f#.,g#.,1a#.,8p,g#,a#.,2g#,8f#.,1d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (810, 1, N'-Oldies-', N'Frank Sinatra', N'Strangers In The Night', 140, CAST(N'2018-03-09T10:15:48.460' AS DateTime), N'Strangers:d=16,o=5,b=50:f#,g#,g#,f#,4g#,p,f#,g#,a#,8g#,8f#,f,f#,f#,f,4f#,p,f,f#,g#,8f#,8f,d#,f,f,d#,4f,p,d#,f,f#,8f,8d#,2b')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (811, 1, N'-Classical-', N'Pachebel', N'Canon', 133, CAST(N'2018-03-09T10:17:27.347' AS DateTime), N'Canon:d=16,o=6,b=125:8a#.,g.,g#.,8a#.,g.,g#.,a#.,a#.5,c.,d.,d#.,f.,g.,g#.,8g.,d#.,f.,8g.,g.5,g#.5,a#.5,c.,a#.5,g#.5,a#.5,g.5,g#.5,a#.5,8g#.5,c.,a#.5,8g#.5,g.5,f.5,g.5,f.5,d#.5,f.5,g.5,g#.5,a#.5,c.,8g#.5,c.,a#.5,8c.,d.,d#.,a#.5,c.,d.,d#.,f.,g.,g#.,8a#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (812, 1, N'-Oldies-', N'Joe Cocker', N'With A Little Help From My Friends', 132, CAST(N'2018-03-09T10:17:48.097' AS DateTime), N'WithALittle:d=32,o=6,b=40:8d.,d#,f,8f.,d#,d,8c.,d,d#,4d#,8p,g5,a#5,16c#.,g5,16a#5,8a#5,16a#.5,16g5,4f5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (813, 1, N'-Latin-', N'Shakira', N'Estoy Aqui', 145, CAST(N'2018-03-09T10:20:01.387' AS DateTime), N'EstoyAqui:d=32,o=6,b=80:16a#.5,8d#.,8f.,4d#,16a#.5,8d#.,8f.,4f,16a#.5,8d#.,8f.,d#.,d#.,f.,f.,d#.,d#.,f.,f.,d#.,d#.,g.,g.,d#.,d#.,g.,g.,d#.,d#.,16g.,16d#.,8a#.5,8f.,4d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (814, 1, N'-Latin-', N'Shakira', N'Ohos Asi', 116, CAST(N'2018-03-09T10:20:22.953' AS DateTime), N'OjosAsi:d=16,o=5,b=100:a.,a.,8a#.,32g.,g.,32g.,8a.,f.,d#.,f.,d#.,g.,d#.,32d#,32f,32d#,d.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (815, 1, N'-Country-Pop-', N'Shania Twain', N'That Don''t Impress Me Much', 175, CAST(N'2018-03-09T10:20:50.707' AS DateTime), N'ImpressMe:d=8,o=6,b=125:a,b,b,a,4d7,4f#,d,e,b5,4d,4b.5,p,b5,a,b,b,a,a,f#,d,4e,e,e,d,e,2f#,p,e,e,d,e,b5,2d,b5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (816, 1, N'-Rock-Oldies-', N'Stevie Nicks - Hole', N'Gold Dust Woman', 135, CAST(N'2018-03-09T10:21:47.163' AS DateTime), N'GoldDust:d=16,o=5,b=100:f#.,4f,8d#.,8c.,d#.,2c,8p,f#.,8f.,8d#.,c#.,2d#,f#.,8f.,2d#,8p,f.,f#.,4f#,d#.,4d#.,8f#.,f,8d#.,4d#.,c#.,c#.,c#.,c#.,c#.,c#.,c#.,2d#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (817, 1, N'-Oldies-', N'Supremes', N'Stop In The Name Of Love', 130, CAST(N'2018-03-09T10:22:21.097' AS DateTime), N'StopInName:d=16,o=5,b=40:8a#,32a#,a#,a#.,32g#,4g#,32p,g#,f#,f,f.,32d#,8d#,32p,32c#,32d#,f,c#,4c#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (818, 1, N'-80s-', N'USA For Africa', N'We Are The World', 152, CAST(N'2018-03-09T10:22:47.320' AS DateTime), N'WeAreWorld:d=8,o=5,b=200:a.,2g,f.,1d.,a.,4g.,f.,4d.,1c.,a.,2g,f.,2d,d.,d.,4c,4d,e.,32e,f.,2e,f.,2g,2e,4d.,1c.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (819, 1, N'-80s-', N'Village People', N'Macho Man', 134, CAST(N'2018-03-09T10:23:07.340' AS DateTime), N'MachoMan:d=16,o=5,b=40:a#,g#,f#,32c#,4d#,32p,a#,g#,f#,32c#,4f,32p,a#,g#,f#,32c#,4d#,32p,f#,f#,f,f,f#,d#,e,f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (820, 1, N'-80s-', N'Weather Girls', N'It''s Raining Men', 153, CAST(N'2018-03-09T10:23:29.540' AS DateTime), N'RainingMen:d=32,o=6,b=35:8a.,a,a,16a,16g#,g#,g#,f#,e,8f#.,p,b,16b,8a,p,b5,b5,a5,8a.,a,a,16a,16g#,g#,g#,f#,e,8f#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (821, 1, N'-Pop-', N'Alanis Morisette', N'Hand''s Clean', 841, CAST(N'2018-03-09T10:34:50.343' AS DateTime), N'HandsClean:d=32,o=6,b=50:c#,c#,16c#,c#,16d#,16d#,d#,16f,16c#,c,c,16c,16c,c,16c#.,4g#5,8p,16g#,8g.,16g,8g#,16g#,16g,8d#,8c#,8c,16f,16g#,8g,8a#,8d#,8g#,4g#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (822, 1, N'-Pop-Theme-Movie-', N'Enya - Lord Of The Rings', N'May It Be', 1432, CAST(N'2018-03-09T10:35:29.997' AS DateTime), N'MayItBe:d=8,o=6,b=50:16a#5,16c,4d,16c,d,f,4g,p,g,4f,d,a#5,4c,p,16d,16f,4g,16f,g,a#,4f,p,16d,16f,4g,32f,32d,c,d,4f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (823, 1, N'-Pop-', N'Whitney Houston', N'I Will Always Love You', 418, CAST(N'2018-03-09T10:36:07.430' AS DateTime), N'AlwaysLuvU:d=32,o=5,b=50:16f.,4a#.,16a#.,16a.,8a#.,16c.6,4a#,d.6,c.6,d.6,c.6,4a#.,16a#.,16a.,8a#.,16c.6,2a#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (824, 1, N'-Disney-', N'Aladdin', N'Arabian Nights', 90, CAST(N'2018-03-09T10:36:36.190' AS DateTime), N'ArabianN:d=16,o=6,b=63:8a#5,a#.5,c.,c#,4f.,32e,32f,8e,c#,c,c#.,c.,a#5,4f.,c#,c#.,c.,a#5,8f.,f,g#.,f.,d#,8f.,32c#,32f,e.,c#.,e,2f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (825, 1, N'-Disney-', N'Cinderella', N'A Dream Is A Wish Your Heart Makes', 39, CAST(N'2018-03-09T10:37:00.137' AS DateTime), N'DreamIsWsh:d=16,o=5,b=25:f,d#,32d#,32f,d#,a#,8d#.,f,d#,f,d#,a#,8g#.,c6,32a#,32g#,32g,32f,d#,g#,8d#.,g#,f,g,g#,c6,8a#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (826, 1, N'-Country-', N'Johnny Cash', N'Ring Of Fire', 43, CAST(N'2018-03-09T10:37:41.743' AS DateTime), N'RingOfFire:d=16,o=6,b=56:4d#,32d#,32d#,f,c#,4d#,8p,8d#,8g,8a#,32a#,a#.,32g#,8g#,g#,g#,f,8d#,32c,c#,8d#,8g,8a#,32g,g.,8g#,8g#,f,8d#,32c,c,8g#5,8c,4d#,c,c#,a#5,c,4d#,g#5,a#5,g5,8g#5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (827, 1, N'-Disney-Oldies-', N'Kenny Loggins', N'House At Pooh Corner', 31, CAST(N'2018-03-09T10:38:10.543' AS DateTime), N'HousePooh:d=16,o=6,b=56:f5,8a5,8c,8a5,8a#5,8a5,a.5,32g5,8g.5,f5,f5,a5,8c,a5,a5,8a#5,32d,a#.5,4c,p,f5,f5,a5,8c,a5,a5,8a#5,d,a#5,4c,p,a5,a5,c,8e,d,e,4f,p,a5,a5,c,8e,d,e,4f,p,f,f,f,8e,d,c,8c,c,d,8c,a5,f5,4g5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (828, 1, N'-Disney-', N'Pinnochio', N'Give A Little Whistle', 23, CAST(N'2018-03-09T10:41:17.677' AS DateTime), N'LittleWhis:d=4,o=5,b=285:b.4,e.,d#.,c#.,b.4,a.,g#.,f#.,e.,c#.6,b.,a#.,2b.,8c#.6,8c#.6,8c#.6,8c#.6,c#.6,2b.,8c#.6,8d#.6,2b.,8f#.,8f#.,8f#.,8f#.,f#.,2e.,8f#.,8g#.,e.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (829, 1, N'-Classical-', N'Bach', N'Fugue In D Minor', 144, CAST(N'2018-03-09T10:41:50.260' AS DateTime), N'BachFugueD:d=32,o=6,b=45:d#,c#,d#,b5,d#,a#5,d#,g#5,d#,g5,d#,g#5,d#,a#5,d#,b5,d#,d#5,d#,f5,d#,g5,d#,g#5,d#,g5,d#,g#5,d#,a#5,d#,8b.5,16c,8c#.,16d,8d#.,16d#,8f.,16f,16f#,16a#5,16b5,16d#,8g#.5,8b5,16a#5,16g#5,16c#,8f#5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (830, 1, N'-Disney-', N'Cinderella', N'Bibbity Bobbity Boo', 146, CAST(N'2018-03-09T10:42:20.133' AS DateTime), N'Bibbity:d=16,o=5,b=90:c#6,c6,c#6,8d#6,32c#.6,a#,a,a#,8b,32a#.,f#,f#,f#,f#,f,d#,4c#.,c#,d#,f,f#,g#,a#,b,a#,g#,8c#.6,c#6,d#6,c#6,b,a#,g#,4f#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (831, 1, N'-Classical-', N'Grieg', N'In The Hall Of The Mountain King', 132, CAST(N'2018-03-09T10:42:43.530' AS DateTime), N'HallMtnKng:d=32,o=5,b=45:c.,d.,d#.,f.,g.,d#.,16g.,f#.,d.,16f#.,f.,c#.,16f.,c.,d.,d#.,f.,g.,d#.,g.,c.6,a#.,g.,d#.,g.,8a#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (832, 1, N'-Disney-', N'Lady And The Tramp', N'We Are Siamese', 124, CAST(N'2018-03-09T10:43:07.550' AS DateTime), N'Siamese:d=32,o=5,b=25:g#,f,f,f,g#,f,f,f,g#,8f.,p,g#,f,f,f,g#,f,f,f,f#,8d#.,p,f#,d#,d#,d#,f#,d#,d#,d#,f#,8d#.,p,16g#,g#,g#,g#,f#,f,d#,f,8c#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (833, 1, N'-Disney-', N'Marry Poppins', N'Supercalifragilisticexpialidocious', 187, CAST(N'2018-03-09T10:44:11.280' AS DateTime), N'Supercalif:d=32,o=5,b=45:f,g#,g#,g#,a#,g#,g#,f,g#,g#,a#,g#,16g#,16f#,g#,g#,g#,g#,a#,g#,g#,d#,g#,g#,a#,g#,16g#,16f,g#,g#,g#,g#,a#,g#,g#,g#,c#6,c#6,d#6,c#6,16c#6,16a#,a#,c#6,c6,a#,c#6,g#,g#,f,g#,a,a#,c6,16c#6,16c#6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (834, 1, N'-Disney-', N'Song Of The South', N'How Do You Do', 351, CAST(N'2018-03-09T10:45:30.853' AS DateTime), N'HowDoUDo:d=32,o=5,b=50:16a#,c#,d#.,8f#,16f#,g#,16a#.,16a#,a,a#.,8c#6,16g#,g#,a#.,8g#,16g#,a#,16c#.6,16b,b,a#.,8g#,16a#,c#,d#.,8f#,16f#,g#,16a#.,16a#,a,a#.,8c#6,16g#,a#,16g#.,16c#,d#,f.,4f#.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (835, 1, N'-Rap-', N'Warren G', N'Prince Igor', 129, CAST(N'2018-03-09T10:46:22.960' AS DateTime), N'PrinceIgor:d=32,o=6,b=40:16c,16c,4g,f,g,16d#,d,c,d,d#,4f,16g,16f,d#,d,16g5,16g5,4c,d#,f,16d#,d,c,d,c,8a#.5')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (836, 1, N'-Classical-', N'Dvorak', N'New World Symphony - 4th Movement', 347, CAST(N'2018-03-09T10:46:52.670' AS DateTime), N'DvorakNW4:d=16,o=5,b=35:8f,g,g#,g.,32f,8f,8f,d#,32c,32d#,4f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (837, 1, N'-Anthems-', N'Military', N'Marine''s Hym', 143, CAST(N'2018-03-09T10:47:16.820' AS DateTime), N'MarineHymn:d=16,o=5,b=50:32c#.,32f.,g#.,g#.,g#.,g#.,8g#,32c#.6,g#.,32f.,32f#.,g#.,g#.,32f#.,8d#,4c#,32c#.,32f.,g#.,g#.,g#.,g#.,8g#,32c#.6,g#.,32f.,32f#.,g#.,g#.,32f#.,8d#,4c#,32c#.6,32c.6,a#.,f#.,a#.,c#.6,8g#,32a#.,g#.,32c#.6,32c.6,a#.,f#.,a#.,c#.6,4g#,32c#.,32f.,g#.,g#.,g#.,g#.,8g#,32c#.6,g#.,32f.,32f#.,g#.,g#.,32f#.,8d#,4c#,')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (838, 1, N'-Theme-Movie-', N'Theme', N'Pulp Fiction', 1544, CAST(N'2018-03-09T10:48:24.717' AS DateTime), N'PulpFictn:d=8,o=5,b=90:4f,a,a#,4c6,e6,c#6,2c6,p,c#.6,16c.6,16c#.6,c.6,a#.,c.6,16a#.,16c.6,a#,a.,16f#.,4f')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (839, 1, N'-Traditional-', N'Traditional', N'Teddy Bear''s Picnic', 136, CAST(N'2018-03-09T10:48:54.580' AS DateTime), N'TeddyBearP:d=32,o=6,b=45:g#5,16c#,e,d#,e,d#,16c#,e,16d#,e,c#,d#,e,16d#,e,8c#.,b5,16e,g#,f#,g#,f#,16e,g#,16f#,g#,e,f#,g#,16f#,g#,8e.,b,16c#7,b,16c#7,b,f#,g#,b,16g#,f#,16f#,e,16f#,e,b5,c#,e,16c#,b5,16c#.,16b.5,16c#.,16b.5,8f#.,8e.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (840, 1, N'-Disney-', N'Song Of The South', N'Zip-A-Dee-Doo-Dah', 15244, CAST(N'2018-03-08T00:00:00.000' AS DateTime), N'ZipADee:d=4,o=5,b=200:d,8p,16d.,32p,d#,2f,2a#.,g,8p,8g,d#,1f,p,g.,8a,a#,2d6,2a#.,c6,g,a,1a#')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (841, 1, N'-Disney-', N'Song Of The South', N'Uncle Remus Said', 127, CAST(N'2018-03-09T14:36:12.417' AS DateTime), N'UncleRemus:d=4,o=5,b=100:32f6,32g6,32p,32a6,32p,32a#6,8p,32a#6,16p.,8a#6,32p,32c7,16p,32c#7,32d7,8p,16a#6,32p,8d7,8p,32c7,16p.,16c7,16p,8c7,32p,32d7,16p.,16a.6,32p,32f6,16p,16f6,8p,16d.6,32p,16e6,16p,16f6,16p,16g6,16p,32a.6,32p,16a#6,32p,8c7,8p,32c6,16p,16c6,16p,32c6,32p,16c.7,32p,16a#6,16p,32a.6,16p,32g.6,16p,8f6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (842, 1, N'-Other-', N'Other', N'3 Rising Tones', 244, CAST(N'2018-03-09T14:37:33.793' AS DateTime), N'3Rising:d=32,o=5,b=63:4c,4e,4g')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (843, 1, N'-Theme-TV-', N'Theme', N'Good Eats', 10, CAST(N'2018-03-24T10:48:14.953' AS DateTime), N'GoodEats:d=8,o=5,b=120:f,g,d6,c6,a#,f,f#,g,g,4g.')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (844, 1, N'-Theme-TV-', N'Theme', N'Gravity Falls', 10, CAST(N'2018-05-15T10:48:14.953' AS DateTime), N'GravityFalls:d=4,o=5,b=162:8f,8d,8a4,8d,8f,8d,8a4,8d,8f,8c,8a4,8c,8f,8c,8a4,8c,8e,8c#,8a4,8c#,8e,8c#,8a4,8c#,8e,8c#,8a4,8c#,8e,8c#,8a4,8c#,2d.,e,1f,a.,g.,a,1c,2d.,e,2f,2e,2g,2a,2g,2f,p,f,f,f,a,a,g,f,p,a,a,a,g,a,g,f,p,f,f,f,a,a,g,f,p,a,a,a,p,c#6,c#6,c#6,p,f,f,f,a,a,g,f,p,a#,a#,a#,2a,2c6,2a,2c#6')
GO
INSERT [dbo].[Tone] ([ToneId], [Available], [Category], [Artist], [Title], [Counter], [Added], [Rtttl]) VALUES (845, 1, N'-Theme-TV-', N'Theme', N'Invader ZIM', 10, CAST(N'2020-06-17T13:48:14.953' AS DateTime), N'InvaderZIM:d=8,o=5,b=244:1p,16g#4,16a4,16a#4,16b4,16c,16c#,16d,16d#,16e,16f,16f#,16g,16g#,16a,16a#,16b,16c6,2c#6,a4,c#,d,p,d,p,d,p,d,p,d,p,d,p,d,p,d,p,d,p,d,p,d,p,d,p,d,p,f,4p,p,a4,c#,d,p,d,p,d,p,d,p,d,p,d,p,d,p,a#4,p,d,p,c#,p,c#,p,c,p,c,2p,p,a4,c#,d,p,d,p,d,p,d,p,d,p,d,p,d,p,d,p,d,p,d,p,d,p,d,p,d,p,f,4p,p,a4,c#,d,p,d,p,d,p,a#4,p,c#,p,c#,p,c#,p,a4,p,c,p,a4,p,a#4,p,f#4,p,4g4')
GO
SET IDENTITY_INSERT [dbo].[Tone] OFF
GO
