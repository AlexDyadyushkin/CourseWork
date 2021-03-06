USE [master]
GO
/****** Object:  Database [bdAvtoLider]    Script Date: 06.06.2021 12:50:46 ******/
CREATE DATABASE [bdAvtoLider]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bdAvtoLider', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\bdAvtoLider.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bdAvtoLider_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\bdAvtoLider_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [bdAvtoLider] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bdAvtoLider].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bdAvtoLider] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bdAvtoLider] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bdAvtoLider] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bdAvtoLider] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bdAvtoLider] SET ARITHABORT OFF 
GO
ALTER DATABASE [bdAvtoLider] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bdAvtoLider] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bdAvtoLider] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bdAvtoLider] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bdAvtoLider] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bdAvtoLider] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bdAvtoLider] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bdAvtoLider] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bdAvtoLider] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bdAvtoLider] SET  DISABLE_BROKER 
GO
ALTER DATABASE [bdAvtoLider] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bdAvtoLider] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bdAvtoLider] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bdAvtoLider] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bdAvtoLider] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bdAvtoLider] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bdAvtoLider] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bdAvtoLider] SET RECOVERY FULL 
GO
ALTER DATABASE [bdAvtoLider] SET  MULTI_USER 
GO
ALTER DATABASE [bdAvtoLider] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bdAvtoLider] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bdAvtoLider] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bdAvtoLider] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bdAvtoLider] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [bdAvtoLider] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'bdAvtoLider', N'ON'
GO
ALTER DATABASE [bdAvtoLider] SET QUERY_STORE = OFF
GO
USE [bdAvtoLider]
GO
/****** Object:  Table [dbo].[Cars]    Script Date: 06.06.2021 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Brand] [nvarchar](50) NOT NULL,
	[Model] [nvarchar](50) NOT NULL,
	[Price] [money] NOT NULL,
	[Amount] [int] NOT NULL,
 CONSTRAINT [PK_Cars] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 06.06.2021 12:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](20) NOT NULL,
	[Birthday] [date] NOT NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration]    Script Date: 06.06.2021 12:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[CarId] [int] NOT NULL,
	[RimId] [int] NOT NULL,
	[CoverId] [int] NOT NULL,
	[TireId] [int] NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Configuration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginHistory]    Script Date: 06.06.2021 12:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[DateAndTime] [datetime] NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_LoginHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypesOfCover]    Script Date: 06.06.2021 12:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypesOfCover](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_TypesOfCover] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypesOfRims]    Script Date: 06.06.2021 12:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypesOfRims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_TypesOfBody] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypesOfTires]    Script Date: 06.06.2021 12:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypesOfTires](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_TypesOfTires] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 06.06.2021 12:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 06.06.2021 12:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cars] ON 

INSERT [dbo].[Cars] ([Id], [Brand], [Model], [Price], [Amount]) VALUES (1, N'BMW', N'x5', 6000000.0000, 9)
INSERT [dbo].[Cars] ([Id], [Brand], [Model], [Price], [Amount]) VALUES (2, N'Hyundai', N'Genesis', 1500000.0000, 12)
INSERT [dbo].[Cars] ([Id], [Brand], [Model], [Price], [Amount]) VALUES (3, N'Audi', N'A8', 7500000.0000, 6)
INSERT [dbo].[Cars] ([Id], [Brand], [Model], [Price], [Amount]) VALUES (4, N'Lexus', N'GX', 5800000.0000, 9)
INSERT [dbo].[Cars] ([Id], [Brand], [Model], [Price], [Amount]) VALUES (5, N'LADA', N'XRAY', 800000.0000, 15)
INSERT [dbo].[Cars] ([Id], [Brand], [Model], [Price], [Amount]) VALUES (6, N'VAZ', N'Patriot', 900000.0000, 10)
INSERT [dbo].[Cars] ([Id], [Brand], [Model], [Price], [Amount]) VALUES (7, N'Haval', N'Jolion', 1189000.0000, 10)
SET IDENTITY_INSERT [dbo].[Cars] OFF
GO
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([Id], [FirstName], [LastName], [Email], [PhoneNumber], [Birthday]) VALUES (1, N'Artem', N'Lebedev', N'artemll22@gmail.com', N'+7 (564)-454-35-34', CAST(N'1991-03-22' AS Date))
INSERT [dbo].[Clients] ([Id], [FirstName], [LastName], [Email], [PhoneNumber], [Birthday]) VALUES (2, N'Alexandr', N'Nesterov', N'nstrv@mail.ru', N'+7 (575)-787-64-44', CAST(N'1999-05-01' AS Date))
INSERT [dbo].[Clients] ([Id], [FirstName], [LastName], [Email], [PhoneNumber], [Birthday]) VALUES (3, N'Anatoliy', N'Letov', N'ltv@gmail.com', N'+7 (435)-345-45-45', CAST(N'1995-12-23' AS Date))
INSERT [dbo].[Clients] ([Id], [FirstName], [LastName], [Email], [PhoneNumber], [Birthday]) VALUES (4, N'Mikhail', N'Glebov', N'glm@mail.ru', N'+7 (322)-342-32-23', CAST(N'1980-12-12' AS Date))
INSERT [dbo].[Clients] ([Id], [FirstName], [LastName], [Email], [PhoneNumber], [Birthday]) VALUES (5, N'Nail', N'Zebrikov', N'zebr@gmail.com', N'+7 (234)-232-42-42', CAST(N'1994-04-29' AS Date))
INSERT [dbo].[Clients] ([Id], [FirstName], [LastName], [Email], [PhoneNumber], [Birthday]) VALUES (6, N'Fedor', N'Lenov', N'len@mail.ru', N'+7 (232)-247-24-24', CAST(N'2000-01-27' AS Date))
INSERT [dbo].[Clients] ([Id], [FirstName], [LastName], [Email], [PhoneNumber], [Birthday]) VALUES (7, N'Sergey', N'Ruchkin', N'serr@gmail.com', N'+7 (838)-383-83-33', CAST(N'2000-01-17' AS Date))
SET IDENTITY_INSERT [dbo].[Clients] OFF
GO
SET IDENTITY_INSERT [dbo].[Configuration] ON 

INSERT [dbo].[Configuration] ([Id], [ClientId], [CarId], [RimId], [CoverId], [TireId], [Color]) VALUES (1, 1, 2, 3, 4, 5, N'Blue')
INSERT [dbo].[Configuration] ([Id], [ClientId], [CarId], [RimId], [CoverId], [TireId], [Color]) VALUES (2, 3, 4, 1, 2, 2, N'Green')
INSERT [dbo].[Configuration] ([Id], [ClientId], [CarId], [RimId], [CoverId], [TireId], [Color]) VALUES (3, 4, 1, 2, 3, 1, N'White')
INSERT [dbo].[Configuration] ([Id], [ClientId], [CarId], [RimId], [CoverId], [TireId], [Color]) VALUES (4, 5, 3, 5, 1, 3, N'Black')
INSERT [dbo].[Configuration] ([Id], [ClientId], [CarId], [RimId], [CoverId], [TireId], [Color]) VALUES (5, 2, 5, 4, 5, 4, N'Grey')
INSERT [dbo].[Configuration] ([Id], [ClientId], [CarId], [RimId], [CoverId], [TireId], [Color]) VALUES (6, 6, 2, 3, 2, 1, N'Yellow')
SET IDENTITY_INSERT [dbo].[Configuration] OFF
GO
SET IDENTITY_INSERT [dbo].[LoginHistory] ON 

INSERT [dbo].[LoginHistory] ([Id], [UserId], [DateAndTime], [Status]) VALUES (95, 1, CAST(N'2021-06-05T22:53:40.100' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([Id], [UserId], [DateAndTime], [Status]) VALUES (96, 4, CAST(N'2021-06-05T22:55:04.513' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([Id], [UserId], [DateAndTime], [Status]) VALUES (97, 4, CAST(N'2021-06-05T22:56:56.197' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([Id], [UserId], [DateAndTime], [Status]) VALUES (98, 4, CAST(N'2021-06-05T23:13:49.327' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([Id], [UserId], [DateAndTime], [Status]) VALUES (99, 1, CAST(N'2021-06-05T23:14:16.153' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([Id], [UserId], [DateAndTime], [Status]) VALUES (100, 1, CAST(N'2021-06-05T23:24:10.813' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([Id], [UserId], [DateAndTime], [Status]) VALUES (101, 4, CAST(N'2021-06-05T23:24:25.207' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([Id], [UserId], [DateAndTime], [Status]) VALUES (102, 4, CAST(N'2021-06-06T12:42:21.277' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([Id], [UserId], [DateAndTime], [Status]) VALUES (103, 4, CAST(N'2021-06-06T12:45:25.160' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[LoginHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[TypesOfCover] ON 

INSERT [dbo].[TypesOfCover] ([Id], [Title], [Price]) VALUES (1, N'Carbon', 50000.0000)
INSERT [dbo].[TypesOfCover] ([Id], [Title], [Price]) VALUES (2, N'Ceramic', 15000.0000)
INSERT [dbo].[TypesOfCover] ([Id], [Title], [Price]) VALUES (3, N'Liquid glass', 6000.0000)
INSERT [dbo].[TypesOfCover] ([Id], [Title], [Price]) VALUES (4, N'Normal', 0.0000)
INSERT [dbo].[TypesOfCover] ([Id], [Title], [Price]) VALUES (5, N'Vinyl wrap', 90000.0000)
SET IDENTITY_INSERT [dbo].[TypesOfCover] OFF
GO
SET IDENTITY_INSERT [dbo].[TypesOfRims] ON 

INSERT [dbo].[TypesOfRims] ([Id], [Title], [Price]) VALUES (1, N'Alcasta M55', 4870.0000)
INSERT [dbo].[TypesOfRims] ([Id], [Title], [Price]) VALUES (2, N'CrossStreet CR19', 6200.0000)
INSERT [dbo].[TypesOfRims] ([Id], [Title], [Price]) VALUES (3, N'LS LS 793', 5300.0000)
INSERT [dbo].[TypesOfRims] ([Id], [Title], [Price]) VALUES (4, N'Replay MR249', 14000.0000)
INSERT [dbo].[TypesOfRims] ([Id], [Title], [Price]) VALUES (5, N'СКАД KL-307', 6750.0000)
INSERT [dbo].[TypesOfRims] ([Id], [Title], [Price]) VALUES (6, N'Alcasta A2', 5000.0000)
SET IDENTITY_INSERT [dbo].[TypesOfRims] OFF
GO
SET IDENTITY_INSERT [dbo].[TypesOfTires] ON 

INSERT [dbo].[TypesOfTires] ([Id], [Title], [Price]) VALUES (1, N'Hankook Ventus Prime3 K125', 5430.0000)
INSERT [dbo].[TypesOfTires] ([Id], [Title], [Price]) VALUES (2, N'Kumho ECSTA PS91', 11740.0000)
INSERT [dbo].[TypesOfTires] ([Id], [Title], [Price]) VALUES (3, N'Maxxis HP-M3', 4850.0000)
INSERT [dbo].[TypesOfTires] ([Id], [Title], [Price]) VALUES (4, N'Michelin Pilot Sport 4 S', 19940.0000)
INSERT [dbo].[TypesOfTires] ([Id], [Title], [Price]) VALUES (5, N'Pirelli P Zero Gen-2', 17760.0000)
INSERT [dbo].[TypesOfTires] ([Id], [Title], [Price]) VALUES (6, N'Grizly F20', 10000.0000)
SET IDENTITY_INSERT [dbo].[TypesOfTires] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRoles] ON 

INSERT [dbo].[UserRoles] ([Id], [Title]) VALUES (1, N'Admin')
INSERT [dbo].[UserRoles] ([Id], [Title]) VALUES (2, N'Manager')
SET IDENTITY_INSERT [dbo].[UserRoles] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Name], [Login], [Password], [RoleId]) VALUES (1, N'Alexandr Petrov', N'Admin', N'Admin', 1)
INSERT [dbo].[Users] ([Id], [Name], [Login], [Password], [RoleId]) VALUES (2, N'Viktor Sukhov', N'Svsvsrerew', N'grerwe13434', 2)
INSERT [dbo].[Users] ([Id], [Name], [Login], [Password], [RoleId]) VALUES (3, N'Arkadiy Norov', N'Adsdsds', N'y67tyhgf', 2)
INSERT [dbo].[Users] ([Id], [Name], [Login], [Password], [RoleId]) VALUES (4, N'Stepan Nikitov', N'Gered', N'Manager', 2)
INSERT [dbo].[Users] ([Id], [Name], [Login], [Password], [RoleId]) VALUES (5, N'Nikolay Zhirov', N'Zhderea', N'fdht98hj', 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_PhoneNumber]  DEFAULT (((((7)-(0))-(0))-(0))-(0)) FOR [PhoneNumber]
GO
ALTER TABLE [dbo].[Configuration]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Cars] FOREIGN KEY([CarId])
REFERENCES [dbo].[Cars] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Configuration] CHECK CONSTRAINT [FK_Configuration_Cars]
GO
ALTER TABLE [dbo].[Configuration]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Configuration] CHECK CONSTRAINT [FK_Configuration_Clients]
GO
ALTER TABLE [dbo].[Configuration]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_TypesOfCover] FOREIGN KEY([CoverId])
REFERENCES [dbo].[TypesOfCover] ([Id])
GO
ALTER TABLE [dbo].[Configuration] CHECK CONSTRAINT [FK_Configuration_TypesOfCover]
GO
ALTER TABLE [dbo].[Configuration]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_TypesOfRims] FOREIGN KEY([RimId])
REFERENCES [dbo].[TypesOfRims] ([Id])
GO
ALTER TABLE [dbo].[Configuration] CHECK CONSTRAINT [FK_Configuration_TypesOfRims]
GO
ALTER TABLE [dbo].[Configuration]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_TypesOfTires] FOREIGN KEY([TireId])
REFERENCES [dbo].[TypesOfTires] ([Id])
GO
ALTER TABLE [dbo].[Configuration] CHECK CONSTRAINT [FK_Configuration_TypesOfTires]
GO
ALTER TABLE [dbo].[LoginHistory]  WITH CHECK ADD  CONSTRAINT [FK_LoginHistory_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[LoginHistory] CHECK CONSTRAINT [FK_LoginHistory_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserRoles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[UserRoles] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_UserRoles]
GO
USE [master]
GO
ALTER DATABASE [bdAvtoLider] SET  READ_WRITE 
GO
