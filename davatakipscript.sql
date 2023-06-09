USE [master]
GO
/****** Object:  Database [davatakipotomasayonu]    Script Date: 5.05.2023 00:22:38 ******/
CREATE DATABASE [davatakipotomasayonu]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'davatakipotomasyonu', FILENAME = N'C:\Users\onals\OneDrive\Masaüstü\MSSQL15.SQLEXPRESS\MSSQL\DATA\davatakipotomasyonu.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'davatakipotomasyonu_log', FILENAME = N'C:\Users\onals\OneDrive\Masaüstü\MSSQL15.SQLEXPRESS\MSSQL\DATA\davatakipotomasyonu_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [davatakipotomasayonu] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [davatakipotomasayonu].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [davatakipotomasayonu] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [davatakipotomasayonu] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [davatakipotomasayonu] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [davatakipotomasayonu] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [davatakipotomasayonu] SET ARITHABORT OFF 
GO
ALTER DATABASE [davatakipotomasayonu] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [davatakipotomasayonu] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [davatakipotomasayonu] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [davatakipotomasayonu] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [davatakipotomasayonu] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [davatakipotomasayonu] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [davatakipotomasayonu] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [davatakipotomasayonu] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [davatakipotomasayonu] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [davatakipotomasayonu] SET  DISABLE_BROKER 
GO
ALTER DATABASE [davatakipotomasayonu] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [davatakipotomasayonu] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [davatakipotomasayonu] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [davatakipotomasayonu] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [davatakipotomasayonu] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [davatakipotomasayonu] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [davatakipotomasayonu] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [davatakipotomasayonu] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [davatakipotomasayonu] SET  MULTI_USER 
GO
ALTER DATABASE [davatakipotomasayonu] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [davatakipotomasayonu] SET DB_CHAINING OFF 
GO
ALTER DATABASE [davatakipotomasayonu] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [davatakipotomasayonu] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [davatakipotomasayonu] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [davatakipotomasayonu] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [davatakipotomasayonu] SET QUERY_STORE = OFF
GO
USE [davatakipotomasayonu]
GO
/****** Object:  Table [dbo].[avukatbilgisi]    Script Date: 5.05.2023 00:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[avukatbilgisi](
	[avukatID] [int] IDENTITY(1,1) NOT NULL,
	[avukatadi] [nvarchar](50) NOT NULL,
	[avukatsoyadi] [nvarchar](50) NOT NULL,
	[avukatkullanıcıadi] [nvarchar](50) NOT NULL,
	[avukatsifresi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_avukatbilgisi] PRIMARY KEY CLUSTERED 
(
	[avukatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[davacıbilgisi]    Script Date: 5.05.2023 00:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[davacıbilgisi](
	[davacıID] [int] IDENTITY(1,1) NOT NULL,
	[davacıadi] [nvarchar](50) NOT NULL,
	[davacısoyadi] [nvarchar](50) NOT NULL,
	[davaID] [int] NULL,
 CONSTRAINT [PK_davacıbilgisi] PRIMARY KEY CLUSTERED 
(
	[davacıID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[davalıbilgisi]    Script Date: 5.05.2023 00:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[davalıbilgisi](
	[davalıID] [int] IDENTITY(1,1) NOT NULL,
	[davalıadi] [nvarchar](50) NOT NULL,
	[davalısoyadi] [nvarchar](50) NOT NULL,
	[davaID] [int] NULL,
 CONSTRAINT [PK_davalıbilgisi] PRIMARY KEY CLUSTERED 
(
	[davalıID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dosyabilgisi]    Script Date: 5.05.2023 00:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dosyabilgisi](
	[dosyaID] [int] IDENTITY(1,1) NOT NULL,
	[dosyano] [int] NOT NULL,
	[salonID] [int] NOT NULL,
	[davacıID] [int] NOT NULL,
	[davalıID] [int] NOT NULL,
	[hakimID] [int] NOT NULL,
	[avukatID] [int] NOT NULL,
 CONSTRAINT [PK_dosyabilgisi] PRIMARY KEY CLUSTERED 
(
	[dosyaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hakimbilgisi]    Script Date: 5.05.2023 00:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hakimbilgisi](
	[hakimID] [int] IDENTITY(1,1) NOT NULL,
	[hakimadi] [nvarchar](50) NOT NULL,
	[hakimsoyadi] [nvarchar](50) NOT NULL,
	[hakimkullaniciadi] [nvarchar](50) NOT NULL,
	[hakimsifresi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_hakimbilgisi] PRIMARY KEY CLUSTERED 
(
	[hakimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[konubilgisi]    Script Date: 5.05.2023 00:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[konubilgisi](
	[konuID] [int] IDENTITY(1,1) NOT NULL,
	[konuadi] [nvarchar](50) NOT NULL,
	[davaID] [int] NULL,
 CONSTRAINT [PK_konubilgisi_1] PRIMARY KEY CLUSTERED 
(
	[konuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nedenbilgisi]    Script Date: 5.05.2023 00:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nedenbilgisi](
	[nedenID] [int] IDENTITY(1,1) NOT NULL,
	[nedeni] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_nedenbilgisi] PRIMARY KEY CLUSTERED 
(
	[nedenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[salonbilgisi]    Script Date: 5.05.2023 00:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[salonbilgisi](
	[salonID] [int] IDENTITY(1,1) NOT NULL,
	[salonno] [int] NULL,
	[salonadi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_salonbilgisi] PRIMARY KEY CLUSTERED 
(
	[salonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[savcıbilgisi]    Script Date: 5.05.2023 00:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[savcıbilgisi](
	[savcıID] [int] IDENTITY(1,1) NOT NULL,
	[savcıadi] [nvarchar](50) NOT NULL,
	[savcısoyadi] [nvarchar](50) NOT NULL,
	[savcıkullaniciadi] [nvarchar](50) NOT NULL,
	[savcısifresi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_savcıbilgisi] PRIMARY KEY CLUSTERED 
(
	[savcıID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[turbilgisi]    Script Date: 5.05.2023 00:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[turbilgisi](
	[turadi] [nvarchar](50) NOT NULL,
	[dosyaID] [int] NULL,
 CONSTRAINT [PK_turbilgisi] PRIMARY KEY CLUSTERED 
(
	[turadi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[turbilgisii]    Script Date: 5.05.2023 00:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[turbilgisii](
	[avukatID] [varchar](50) NOT NULL,
	[avukatadi] [varchar](50) NOT NULL,
	[avukatsoyadi] [nvarchar](50) NOT NULL,
	[avukatkullaniciadi] [nvarchar](50) NOT NULL,
	[avukatsifre] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_turbilgisii] PRIMARY KEY CLUSTERED 
(
	[avukatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [davatakipotomasayonu] SET  READ_WRITE 
GO
