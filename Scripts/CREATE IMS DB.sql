USE [master]
GO

/****** Object:  Database [IMS]    Script Date: 19/08/2017 22:25:25 ******/
CREATE DATABASE [IMS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'IMS_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\IMS_data.ddf' , SIZE = 5696KB , MAXSIZE = 204800KB , FILEGROWTH = 10%)
 LOG ON 
( NAME = N'IMS_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\IMS_log.ldf' , SIZE = 5184KB , MAXSIZE = 40960KB , FILEGROWTH = 10%)
GO

ALTER DATABASE [IMS] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [IMS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [IMS] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [IMS] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [IMS] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [IMS] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [IMS] SET ARITHABORT OFF 
GO

ALTER DATABASE [IMS] SET AUTO_CLOSE ON 
GO

ALTER DATABASE [IMS] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [IMS] SET AUTO_UPDATE_STATISTICS OFF 
GO

ALTER DATABASE [IMS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [IMS] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [IMS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [IMS] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [IMS] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [IMS] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [IMS] SET  DISABLE_BROKER 
GO

ALTER DATABASE [IMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [IMS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [IMS] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [IMS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [IMS] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [IMS] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [IMS] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [IMS] SET RECOVERY FULL 
GO

ALTER DATABASE [IMS] SET  MULTI_USER 
GO

ALTER DATABASE [IMS] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [IMS] SET DB_CHAINING OFF 
GO

ALTER DATABASE [IMS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [IMS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [IMS] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [IMS] SET  READ_WRITE 
GO

