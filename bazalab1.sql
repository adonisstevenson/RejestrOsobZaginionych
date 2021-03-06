USE [master]
GO
/****** Object:  Database [RejestrOsobZaginionych]    Script Date: 22.06.2022 17:11:06 ******/
CREATE DATABASE [RejestrOsobZaginionych]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RejestrOsobZaginionych', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\RejestrOsobZaginionych.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RejestrOsobZaginionych_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\RejestrOsobZaginionych_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [RejestrOsobZaginionych] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RejestrOsobZaginionych].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RejestrOsobZaginionych] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RejestrOsobZaginionych] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RejestrOsobZaginionych] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RejestrOsobZaginionych] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RejestrOsobZaginionych] SET ARITHABORT OFF 
GO
ALTER DATABASE [RejestrOsobZaginionych] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RejestrOsobZaginionych] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RejestrOsobZaginionych] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RejestrOsobZaginionych] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RejestrOsobZaginionych] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RejestrOsobZaginionych] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RejestrOsobZaginionych] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RejestrOsobZaginionych] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RejestrOsobZaginionych] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RejestrOsobZaginionych] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RejestrOsobZaginionych] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RejestrOsobZaginionych] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RejestrOsobZaginionych] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RejestrOsobZaginionych] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RejestrOsobZaginionych] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RejestrOsobZaginionych] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RejestrOsobZaginionych] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RejestrOsobZaginionych] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RejestrOsobZaginionych] SET  MULTI_USER 
GO
ALTER DATABASE [RejestrOsobZaginionych] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RejestrOsobZaginionych] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RejestrOsobZaginionych] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RejestrOsobZaginionych] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RejestrOsobZaginionych] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RejestrOsobZaginionych] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [RejestrOsobZaginionych] SET QUERY_STORE = OFF
GO
USE [RejestrOsobZaginionych]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 22.06.2022 17:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 22.06.2022 17:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 22.06.2022 17:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 22.06.2022 17:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 22.06.2022 17:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 22.06.2022 17:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 22.06.2022 17:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 22.06.2022 17:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[People]    Script Date: 22.06.2022 17:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[People](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
	[Age] [int] NOT NULL,
	[Sex] [nvarchar](max) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[DateMissing] [datetime2](7) NOT NULL,
	[LastSeenPlace] [nvarchar](max) NOT NULL,
	[IsFound] [bit] NOT NULL,
 CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'6.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220529181851_Initial', N'6.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220531115427_Test', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220531121857_Test2', N'6.0.5')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1000916c-5c92-437b-a601-13fab8162c56', N'admin', N'Admin', N'a3c7c306-e94b-4d92-afe5-f6e5e4739ce6')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'474669f0-d76e-4537-93c2-858d9a6def2a', N'user', N'User', N'7163e786-67dc-4bd8-a29b-c7d487bce495')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7baf4808-c43d-4ee6-af83-30845fa1bbe0', N'1000916c-5c92-437b-a601-13fab8162c56')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6c3495b4-cf51-474f-91a3-5fab6c9b9f47', N'474669f0-d76e-4537-93c2-858d9a6def2a')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6c3495b4-cf51-474f-91a3-5fab6c9b9f47', N'user@test.com', N'USER@TEST.COM', N'user@test.com', N'USER@TEST.COM', 1, N'AQAAAAEAACcQAAAAEDct5oY+RPG3XDVN8k5yi+RorLgB67wfpWkI7cAwRFT+rkJpMPNy5m5chnaSh12WMw==', N'HKM27VLUJMGEPJL2NMWEXON5Q7OHGLZL', N'3c120265-fd1e-4930-ad0b-fc67f91978ad', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7baf4808-c43d-4ee6-af83-30845fa1bbe0', N'Admin', N'DANIEL.GROMAK2137@GMAIL.COM', N'daniel.gromak2137@gmail.com', N'DANIEL.GROMAK2137@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEDktpcho1mc7hqhF4vH+2ZVUD0Q35HtLpK6xxF2mvVovFz8Dy5PDR3B4+AhN2wT04g==', N'8273c1ae-e76a-48e8-88f1-ed577be5ed0c', N'2430e008-fc11-45cb-bc89-f2e4075084e2', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[People] ON 

INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (1, N'John', N'Dick', 23, N'Men', CAST(N'2022-05-29T21:47:56.4627578' AS DateTime2), CAST(N'2022-05-29T21:47:56.4664887' AS DateTime2), N'California', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2, N'Dawid', N'Nowak', 33, N'Men', CAST(N'2022-05-29T21:47:56.4665816' AS DateTime2), CAST(N'2022-05-29T21:47:56.4665829' AS DateTime2), N'Katowice', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (3, N'Melinda', N'Jackson', 41, N'Woman', CAST(N'2022-05-29T21:47:56.4665832' AS DateTime2), CAST(N'2022-05-29T21:47:56.4665835' AS DateTime2), N'Houston, Texas', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (4, N'Daniel', N'Gromak', 24, N'Men', CAST(N'2022-06-04T13:03:36.3440000' AS DateTime2), CAST(N'2022-05-29T21:47:56.4660000' AS DateTime2), N'Warszawa', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (1002, N'Denis', N'Jackson', 51, N'Men', CAST(N'2022-06-04T13:00:55.8961802' AS DateTime2), CAST(N'2022-06-01T12:22:00.0000000' AS DateTime2), N'Pruszków', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2002, N'John', N'Dick', 23, N'Men', CAST(N'2022-05-29T21:47:56.4627578' AS DateTime2), CAST(N'2022-05-29T21:47:56.4664887' AS DateTime2), N'California', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2003, N'Dawid', N'Nowak', 33, N'Men', CAST(N'2022-05-29T21:47:56.4665816' AS DateTime2), CAST(N'2022-05-29T21:47:56.4665829' AS DateTime2), N'Katowice', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2004, N'Melinda', N'Jackson', 41, N'Woman', CAST(N'2022-05-29T21:47:56.4665832' AS DateTime2), CAST(N'2022-05-29T21:47:56.4665835' AS DateTime2), N'Houston, Texas', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2005, N'Daniel', N'Gromak', 24, N'Men', CAST(N'2022-06-04T13:03:36.3440000' AS DateTime2), CAST(N'2022-05-29T21:47:56.4660000' AS DateTime2), N'Warszawa', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2006, N'Denis', N'Jackson', 51, N'Men', CAST(N'2022-06-04T13:00:55.8961802' AS DateTime2), CAST(N'2022-06-01T12:22:00.0000000' AS DateTime2), N'Pruszków', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2007, N'John', N'Dick', 23, N'Men', CAST(N'2022-05-29T21:47:56.4627578' AS DateTime2), CAST(N'2022-05-29T21:47:56.4664887' AS DateTime2), N'California', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2008, N'Dawid', N'Nowak', 33, N'Men', CAST(N'2022-05-29T21:47:56.4665816' AS DateTime2), CAST(N'2022-05-29T21:47:56.4665829' AS DateTime2), N'Katowice', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2009, N'Melinda', N'Jackson', 41, N'Woman', CAST(N'2022-05-29T21:47:56.4665832' AS DateTime2), CAST(N'2022-05-29T21:47:56.4665835' AS DateTime2), N'Houston, Texas', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2010, N'Daniel', N'Gromak', 24, N'Men', CAST(N'2022-06-04T13:03:36.3440000' AS DateTime2), CAST(N'2022-05-29T21:47:56.4660000' AS DateTime2), N'Warszawa', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2011, N'Denis', N'Jackson', 51, N'Men', CAST(N'2022-06-04T13:00:55.8961802' AS DateTime2), CAST(N'2022-06-01T12:22:00.0000000' AS DateTime2), N'Pruszków', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2012, N'John', N'Dick', 23, N'Men', CAST(N'2022-05-29T21:47:56.4627578' AS DateTime2), CAST(N'2022-05-29T21:47:56.4664887' AS DateTime2), N'California', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2013, N'Dawid', N'Nowak', 33, N'Men', CAST(N'2022-05-29T21:47:56.4665816' AS DateTime2), CAST(N'2022-05-29T21:47:56.4665829' AS DateTime2), N'Katowice', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2014, N'Melinda', N'Jackson', 41, N'Woman', CAST(N'2022-05-29T21:47:56.4665832' AS DateTime2), CAST(N'2022-05-29T21:47:56.4665835' AS DateTime2), N'Houston, Texas', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2015, N'Daniel', N'Gromak', 24, N'Men', CAST(N'2022-06-04T13:03:36.3440000' AS DateTime2), CAST(N'2022-05-29T21:47:56.4660000' AS DateTime2), N'Warszawa', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2016, N'Denis', N'Jackson', 51, N'Men', CAST(N'2022-06-04T13:00:55.8961802' AS DateTime2), CAST(N'2022-06-01T12:22:00.0000000' AS DateTime2), N'Pruszków', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2017, N'John', N'Dick', 23, N'Men', CAST(N'2022-05-29T21:47:56.4627578' AS DateTime2), CAST(N'2022-05-29T21:47:56.4664887' AS DateTime2), N'California', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2018, N'Dawid', N'Nowak', 33, N'Men', CAST(N'2022-05-29T21:47:56.4665816' AS DateTime2), CAST(N'2022-05-29T21:47:56.4665829' AS DateTime2), N'Katowice', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2019, N'Melinda', N'Jackson', 41, N'Woman', CAST(N'2022-05-29T21:47:56.4665832' AS DateTime2), CAST(N'2022-05-29T21:47:56.4665835' AS DateTime2), N'Houston, Texas', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2020, N'Daniel', N'Gromak', 24, N'Men', CAST(N'2022-06-04T13:03:36.3440000' AS DateTime2), CAST(N'2022-05-29T21:47:56.4660000' AS DateTime2), N'Warszawa', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2021, N'Denis', N'Jackson', 51, N'Men', CAST(N'2022-06-04T13:00:55.8961802' AS DateTime2), CAST(N'2022-06-01T12:22:00.0000000' AS DateTime2), N'Pruszków', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2022, N'John', N'Dick', 23, N'Men', CAST(N'2022-05-29T21:47:56.4627578' AS DateTime2), CAST(N'2022-05-29T21:47:56.4664887' AS DateTime2), N'California', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2023, N'Dawid', N'Nowak', 33, N'Men', CAST(N'2022-05-29T21:47:56.4665816' AS DateTime2), CAST(N'2022-05-29T21:47:56.4665829' AS DateTime2), N'Katowice', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2024, N'Melinda', N'Jackson', 41, N'Woman', CAST(N'2022-05-29T21:47:56.4665832' AS DateTime2), CAST(N'2022-05-29T21:47:56.4665835' AS DateTime2), N'Houston, Texas', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2025, N'Daniel', N'Gromak', 24, N'Men', CAST(N'2022-06-04T13:03:36.3440000' AS DateTime2), CAST(N'2022-05-29T21:47:56.4660000' AS DateTime2), N'Warszawa', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2026, N'Denis', N'Jackson', 51, N'Men', CAST(N'2022-06-04T13:00:55.8961802' AS DateTime2), CAST(N'2022-06-01T12:22:00.0000000' AS DateTime2), N'Pruszków', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2027, N'John', N'Dick', 23, N'Men', CAST(N'2022-05-29T21:47:56.4627578' AS DateTime2), CAST(N'2022-05-29T21:47:56.4664887' AS DateTime2), N'California', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2028, N'Dawid', N'Nowak', 33, N'Men', CAST(N'2022-05-29T21:47:56.4665816' AS DateTime2), CAST(N'2022-05-29T21:47:56.4665829' AS DateTime2), N'Katowice', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2029, N'Melinda', N'Jackson', 41, N'Woman', CAST(N'2022-05-29T21:47:56.4665832' AS DateTime2), CAST(N'2022-05-29T21:47:56.4665835' AS DateTime2), N'Houston, Texas', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2030, N'Daniel', N'Gromak', 24, N'Men', CAST(N'2022-06-04T13:03:36.3440000' AS DateTime2), CAST(N'2022-05-29T21:47:56.4660000' AS DateTime2), N'Warszawa', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2031, N'Denis', N'Jackson', 51, N'Men', CAST(N'2022-06-04T13:00:55.8961802' AS DateTime2), CAST(N'2022-06-01T12:22:00.0000000' AS DateTime2), N'Pruszków', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2032, N'John', N'Dick', 23, N'Men', CAST(N'2022-05-29T21:47:56.4627578' AS DateTime2), CAST(N'2022-05-29T21:47:56.4664887' AS DateTime2), N'California', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2033, N'Dawid', N'Nowak', 33, N'Men', CAST(N'2022-05-29T21:47:56.4665816' AS DateTime2), CAST(N'2022-05-29T21:47:56.4665829' AS DateTime2), N'Katowice', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2034, N'Melinda', N'Jackson', 41, N'Woman', CAST(N'2022-05-29T21:47:56.4665832' AS DateTime2), CAST(N'2022-05-29T21:47:56.4665835' AS DateTime2), N'Houston, Texas', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2035, N'Daniel', N'Gromak', 24, N'Men', CAST(N'2022-06-04T13:03:36.3440000' AS DateTime2), CAST(N'2022-05-29T21:47:56.4660000' AS DateTime2), N'Warszawa', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2036, N'Denis', N'Jackson', 51, N'Men', CAST(N'2022-06-04T13:00:55.8961802' AS DateTime2), CAST(N'2022-06-01T12:22:00.0000000' AS DateTime2), N'Pruszków', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2037, N'John', N'Dick', 23, N'Men', CAST(N'2022-05-29T21:47:56.4627578' AS DateTime2), CAST(N'2022-05-29T21:47:56.4664887' AS DateTime2), N'California', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2038, N'Dawid', N'Nowak', 33, N'Men', CAST(N'2022-05-29T21:47:56.4665816' AS DateTime2), CAST(N'2022-05-29T21:47:56.4665829' AS DateTime2), N'Katowice', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2039, N'Melinda', N'Jackson', 41, N'Woman', CAST(N'2022-05-29T21:47:56.4665832' AS DateTime2), CAST(N'2022-05-29T21:47:56.4665835' AS DateTime2), N'Houston, Texas', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2040, N'Daniel', N'Gromak', 24, N'Men', CAST(N'2022-06-04T13:03:36.3440000' AS DateTime2), CAST(N'2022-05-29T21:47:56.4660000' AS DateTime2), N'Warszawa', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2041, N'Denis', N'Jackson', 51, N'Men', CAST(N'2022-06-04T13:00:55.8961802' AS DateTime2), CAST(N'2022-06-01T12:22:00.0000000' AS DateTime2), N'Pruszków', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2042, N'John', N'Dick', 23, N'Men', CAST(N'2022-05-29T21:47:56.4627578' AS DateTime2), CAST(N'2022-05-29T21:47:56.4664887' AS DateTime2), N'California', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2043, N'Dawid', N'Nowak', 33, N'Men', CAST(N'2022-05-29T21:47:56.4665816' AS DateTime2), CAST(N'2022-05-29T21:47:56.4665829' AS DateTime2), N'Katowice', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2044, N'Melinda', N'Jackson', 41, N'Woman', CAST(N'2022-05-29T21:47:56.4665832' AS DateTime2), CAST(N'2022-05-29T21:47:56.4665835' AS DateTime2), N'Houston, Texas', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2045, N'Daniel', N'Gromak', 24, N'Men', CAST(N'2022-06-04T13:03:36.3440000' AS DateTime2), CAST(N'2022-05-29T21:47:56.4660000' AS DateTime2), N'Warszawa', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2046, N'Denis', N'Jackson', 51, N'Men', CAST(N'2022-06-04T13:00:55.8961802' AS DateTime2), CAST(N'2022-06-01T12:22:00.0000000' AS DateTime2), N'Pruszków', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2047, N'John', N'Dick', 23, N'Men', CAST(N'2022-05-29T21:47:56.4627578' AS DateTime2), CAST(N'2022-05-29T21:47:56.4664887' AS DateTime2), N'California', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2048, N'Dawid', N'Nowak', 33, N'Men', CAST(N'2022-05-29T21:47:56.4665816' AS DateTime2), CAST(N'2022-05-29T21:47:56.4665829' AS DateTime2), N'Katowice', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2049, N'Melinda', N'Jackson', 41, N'Woman', CAST(N'2022-05-29T21:47:56.4665832' AS DateTime2), CAST(N'2022-05-29T21:47:56.4665835' AS DateTime2), N'Houston, Texas', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2050, N'Daniel', N'Gromak', 24, N'Men', CAST(N'2022-06-04T13:03:36.3440000' AS DateTime2), CAST(N'2022-05-29T21:47:56.4660000' AS DateTime2), N'Warszawa', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2051, N'Denis', N'Jackson', 51, N'Men', CAST(N'2022-06-04T13:00:55.8961802' AS DateTime2), CAST(N'2022-06-01T12:22:00.0000000' AS DateTime2), N'Pruszków', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2052, N'John', N'Dick', 23, N'Men', CAST(N'2022-05-29T21:47:56.4627578' AS DateTime2), CAST(N'2022-05-29T21:47:56.4664887' AS DateTime2), N'California', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2053, N'Dawid', N'Nowak', 33, N'Men', CAST(N'2022-05-29T21:47:56.4665816' AS DateTime2), CAST(N'2022-05-29T21:47:56.4665829' AS DateTime2), N'Katowice', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2054, N'Melinda', N'Jackson', 41, N'Woman', CAST(N'2022-05-29T21:47:56.4665832' AS DateTime2), CAST(N'2022-05-29T21:47:56.4665835' AS DateTime2), N'Houston, Texas', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2055, N'Daniel', N'Gromak', 24, N'Men', CAST(N'2022-06-04T13:03:36.3440000' AS DateTime2), CAST(N'2022-05-29T21:47:56.4660000' AS DateTime2), N'Warszawa', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2056, N'Denis', N'Jackson', 51, N'Men', CAST(N'2022-06-04T13:00:55.8961802' AS DateTime2), CAST(N'2022-06-01T12:22:00.0000000' AS DateTime2), N'Pruszków', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2057, N'John', N'Dick', 23, N'Men', CAST(N'2022-05-29T21:47:56.4627578' AS DateTime2), CAST(N'2022-05-29T21:47:56.4664887' AS DateTime2), N'California', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2058, N'Dawid', N'Nowak', 33, N'Men', CAST(N'2022-05-29T21:47:56.4665816' AS DateTime2), CAST(N'2022-05-29T21:47:56.4665829' AS DateTime2), N'Katowice', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2059, N'Melinda', N'Jackson', 41, N'Woman', CAST(N'2022-05-29T21:47:56.4665832' AS DateTime2), CAST(N'2022-05-29T21:47:56.4665835' AS DateTime2), N'Houston, Texas', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2060, N'Daniel', N'Gromak', 24, N'Men', CAST(N'2022-06-04T13:03:36.3440000' AS DateTime2), CAST(N'2022-05-29T21:47:56.4660000' AS DateTime2), N'Warszawa', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2061, N'Denis', N'Jackson', 51, N'Men', CAST(N'2022-06-04T13:00:55.8961802' AS DateTime2), CAST(N'2022-06-01T12:22:00.0000000' AS DateTime2), N'Pruszków', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2062, N'John', N'Dick', 23, N'Men', CAST(N'2022-05-29T21:47:56.4627578' AS DateTime2), CAST(N'2022-05-29T21:47:56.4664887' AS DateTime2), N'California', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2063, N'Dawid', N'Nowak', 33, N'Men', CAST(N'2022-05-29T21:47:56.4665816' AS DateTime2), CAST(N'2022-05-29T21:47:56.4665829' AS DateTime2), N'Katowice', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2064, N'Melinda', N'Jackson', 41, N'Woman', CAST(N'2022-05-29T21:47:56.4665832' AS DateTime2), CAST(N'2022-05-29T21:47:56.4665835' AS DateTime2), N'Houston, Texas', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2065, N'Daniel', N'Gromak', 24, N'Men', CAST(N'2022-06-04T13:03:36.3440000' AS DateTime2), CAST(N'2022-05-29T21:47:56.4660000' AS DateTime2), N'Warszawa', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2066, N'Denis', N'Jackson', 51, N'Men', CAST(N'2022-06-04T13:00:55.8961802' AS DateTime2), CAST(N'2022-06-01T12:22:00.0000000' AS DateTime2), N'Pruszków', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2067, N'John', N'Dick', 23, N'Men', CAST(N'2022-05-29T21:47:56.4627578' AS DateTime2), CAST(N'2022-05-29T21:47:56.4664887' AS DateTime2), N'California', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2068, N'Dawid', N'Nowak', 33, N'Men', CAST(N'2022-05-29T21:47:56.4665816' AS DateTime2), CAST(N'2022-05-29T21:47:56.4665829' AS DateTime2), N'Katowice', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2069, N'Melinda', N'Jackson', 41, N'Woman', CAST(N'2022-05-29T21:47:56.4665832' AS DateTime2), CAST(N'2022-05-29T21:47:56.4665835' AS DateTime2), N'Houston, Texas', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2070, N'Daniel', N'Gromak', 24, N'Men', CAST(N'2022-06-04T13:03:36.3440000' AS DateTime2), CAST(N'2022-05-29T21:47:56.4660000' AS DateTime2), N'Warszawa', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2071, N'Denis', N'Jackson', 51, N'Men', CAST(N'2022-06-04T13:00:55.8961802' AS DateTime2), CAST(N'2022-06-01T12:22:00.0000000' AS DateTime2), N'Pruszków', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2072, N'John', N'Dick', 23, N'Men', CAST(N'2022-05-29T21:47:56.4627578' AS DateTime2), CAST(N'2022-05-29T21:47:56.4664887' AS DateTime2), N'California', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2073, N'Dawid', N'Nowak', 33, N'Men', CAST(N'2022-05-29T21:47:56.4665816' AS DateTime2), CAST(N'2022-05-29T21:47:56.4665829' AS DateTime2), N'Katowice', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2074, N'Melinda', N'Jackson', 41, N'Woman', CAST(N'2022-05-29T21:47:56.4665832' AS DateTime2), CAST(N'2022-05-29T21:47:56.4665835' AS DateTime2), N'Houston, Texas', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2075, N'Daniel', N'Gromak', 24, N'Men', CAST(N'2022-06-04T13:03:36.3440000' AS DateTime2), CAST(N'2022-05-29T21:47:56.4660000' AS DateTime2), N'Warszawa', 0)
INSERT [dbo].[People] ([ID], [Name], [Surname], [Age], [Sex], [Created], [DateMissing], [LastSeenPlace], [IsFound]) VALUES (2076, N'Denis', N'Jackson', 51, N'Men', CAST(N'2022-06-04T13:00:55.8961802' AS DateTime2), CAST(N'2022-06-01T12:22:00.0000000' AS DateTime2), N'Pruszków', 0)
SET IDENTITY_INSERT [dbo].[People] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 22.06.2022 17:11:06 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 22.06.2022 17:11:06 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 22.06.2022 17:11:06 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 22.06.2022 17:11:06 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 22.06.2022 17:11:06 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 22.06.2022 17:11:06 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 22.06.2022 17:11:06 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [RejestrOsobZaginionych] SET  READ_WRITE 
GO
