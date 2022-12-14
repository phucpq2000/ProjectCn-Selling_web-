USE [master]
GO
/****** Object:  Database [Web2034]    Script Date: 13/08/2021 23:30:34 ******/
CREATE DATABASE [Web2034]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Web2034', FILENAME = N'D:\PHUCPQ\University HSU\2034\PTweb\sql\Web2034.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Web2034_log', FILENAME = N'D:\PHUCPQ\University HSU\2034\PTweb\sql\Web2034_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Web2034] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Web2034].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Web2034] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Web2034] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Web2034] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Web2034] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Web2034] SET ARITHABORT OFF 
GO
ALTER DATABASE [Web2034] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Web2034] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Web2034] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Web2034] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Web2034] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Web2034] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Web2034] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Web2034] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Web2034] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Web2034] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Web2034] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Web2034] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Web2034] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Web2034] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Web2034] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Web2034] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Web2034] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Web2034] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Web2034] SET  MULTI_USER 
GO
ALTER DATABASE [Web2034] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Web2034] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Web2034] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Web2034] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Web2034] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Web2034] SET QUERY_STORE = OFF
GO
USE [Web2034]
GO
/****** Object:  Table [dbo].[Cartoder]    Script Date: 13/08/2021 23:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cartoder](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[User_id] [int] NULL,
	[CreatedDate] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Payment] [nvarchar](50) NULL,
	[Total] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Cartoder] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 13/08/2021 23:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 13/08/2021 23:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [nvarchar](50) NULL,
	[Price] [int] NULL,
	[Card_Id] [int] NULL,
	[Product_id] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 13/08/2021 23:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Product_id] [int] IDENTITY(1,1) NOT NULL,
	[Product_name] [nvarchar](50) NULL,
	[Product_size] [nchar](10) NULL,
	[Product_money] [int] NULL,
	[Product_img] [nvarchar](50) NULL,
	[Product_company] [nvarchar](50) NULL,
	[Category_id] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 13/08/2021 23:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Product_id], [Product_name], [Product_size], [Product_money], [Product_img], [Product_company], [Category_id]) VALUES (1, N'Quần ngắn', N'M         ', 100000, N'adidas-hoyang.jpg', N'Adidas', NULL)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Product_size], [Product_money], [Product_img], [Product_company], [Category_id]) VALUES (2, N'Áo thể thao', N'L         ', 200000, N'AoTheThao.jpg', N'Adidas', NULL)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Product_size], [Product_money], [Product_img], [Product_company], [Category_id]) VALUES (3, N'ví', N'L         ', 150000, N'ví Tommy hilfiger.jpg', N'Tommy hilfige', NULL)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Product_size], [Product_money], [Product_img], [Product_company], [Category_id]) VALUES (4, N'Áo thể thao nữ', N'M L       ', 300000, N'Áo thể thao nữ đẹp.jpg', N'Puma', NULL)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Product_size], [Product_money], [Product_img], [Product_company], [Category_id]) VALUES (5, N'Giày nike air force', N'39, 12, 23', 450000, N'giày-nike-air-force-trắng.jpg', N'Adidas', NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([id], [Name], [Email], [Phone], [Password]) VALUES (1, N'Phúc', N'Phuc@gmail.com', N'0213213222', N'123456')
INSERT [dbo].[User] ([id], [Name], [Email], [Phone], [Password]) VALUES (2, N'Tuấn', N'Tuan@gmail.com', N'0111111111', N'78910')
INSERT [dbo].[User] ([id], [Name], [Email], [Phone], [Password]) VALUES (3, N'Quân', N'Quan', N'0190909090', N'987654')
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[Cartoder]  WITH CHECK ADD  CONSTRAINT [FK_Cartoder_User] FOREIGN KEY([User_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Cartoder] CHECK CONSTRAINT [FK_Cartoder_User]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Category] FOREIGN KEY([Card_Id])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Category]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Product] FOREIGN KEY([Product_id])
REFERENCES [dbo].[Product] ([Product_id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([Category_id])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
USE [master]
GO
ALTER DATABASE [Web2034] SET  READ_WRITE 
GO
