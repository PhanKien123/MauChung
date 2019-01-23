USE [master]
GO
/****** Object:  Database [JWProject]    Script Date: 1/16/2019 4:09:17 AM ******/
CREATE DATABASE [JWProject] ON  PRIMARY 
( NAME = N'JWProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\JWProject.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'JWProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\JWProject_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [JWProject] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JWProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JWProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JWProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JWProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JWProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JWProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [JWProject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [JWProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JWProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JWProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JWProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JWProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JWProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JWProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JWProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JWProject] SET  ENABLE_BROKER 
GO
ALTER DATABASE [JWProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JWProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JWProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JWProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JWProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JWProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JWProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JWProject] SET RECOVERY FULL 
GO
ALTER DATABASE [JWProject] SET  MULTI_USER 
GO
ALTER DATABASE [JWProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JWProject] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'JWProject', N'ON'
GO
USE [JWProject]
GO
/****** Object:  Table [dbo].[JobCategory]    Script Date: 1/16/2019 4:09:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodeJob] [int] NOT NULL,
	[JapanName] [nvarchar](200) NULL,
	[EnglishName] [nvarchar](200) NULL,
	[CreateDate] [date] NOT NULL,
	[IsActive] [int] NOT NULL,
 CONSTRAINT [PK_JobCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 1/16/2019 4:09:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [nvarchar](200) NULL,
	[JapanGender] [nvarchar](100) NULL,
	[EngLishGender] [nvarchar](100) NULL,
	[VNGender] [nvarchar](100) NULL,
	[BirthDay] [datetime] NULL,
	[CompanyVnName] [nvarchar](200) NULL,
	[CompanyJapanName] [nvarchar](200) NULL,
	[CompanyEngLishName] [nvarchar](200) NULL,
	[CompanyJapanAddress] [nvarchar](200) NULL,
	[CompanyEnglishAddress] [nvarchar](200) NULL,
	[CompanyVNAddress] [nvarchar](200) NULL,
	[CompanyJapanPhone] [char](20) NULL,
	[CompanyEngLishPhone] [char](20) NULL,
	[CompanyVNPhone] [char](20) NULL,
	[JapanRepresentName] [nvarchar](200) NULL,
	[EnglishRepresentName] [nvarchar](200) NULL,
	[VnRepresentName] [nvarchar](200) NULL,
	[DayStartDate] [int] NULL,
	[MonthStartDate] [int] NULL,
	[YearStartDate] [int] NULL,
	[DayEndDate] [int] NULL,
	[MonthEndDate] [int] NULL,
	[YearEndDate] [int] NULL,
	[DayEntyDate] [int] NULL,
	[MonthEntyDate] [int] NULL,
	[YearEntyDate] [int] NULL,
	[EnglishSyndication] [nvarchar](200) NULL,
	[JapanSyndication] [nvarchar](200) NULL,
	[VnNameSyndication] [nvarchar](200) NULL,
	[EngLishAddresSyndication] [nvarchar](200) NULL,
	[JapanAddresSyndication] [nvarchar](200) NULL,
	[VNAddresSyndication] [nvarchar](200) NULL,
	[EngRepresentOfSyndicationName] [nvarchar](200) NULL,
	[JaRepresentOfSyndicationName] [nvarchar](200) NULL,
	[VNRepresentOfSyndicationName] [nvarchar](200) NULL,
	[EngSyndicationPhone] [nvarchar](200) NULL,
	[JapSyndicationPhone] [nvarchar](200) NULL,
	[VNSyndicationPhone] [nvarchar](200) NULL,
	[JobCategotyId] [int] NULL,
	[HoursStarting] [int] NULL,
	[MinuteStarting] [int] NULL,
	[HoursClosingtime] [int] NULL,
	[MinuteClosingtime] [int] NULL,
	[HoursOverTime] [int] NULL,
	[MinuteOverTime] [int] NULL,
	[YesDeformedWorking] [int] NULL,
	[UnitDeformedWorking] [nvarchar](100) NULL,
	[HoursWorkTimeDay] [int] NULL,
	[MinuteWorkTimeDay] [int] NULL,
	[BeackTime] [int] NULL,
	[HoursWorkedByMonth] [int] NULL,
	[HoursWorkByYear] [float] NULL,
	[FirstWorkDay] [int] NULL,
	[SecondWorkDay] [int] NULL,
	[ThridWorkDay] [int] NULL,
	[Agress] [int] NULL,
	[DayOff] [nvarchar](200) NULL,
	[Other] [nvarchar](max) NULL,
	[NumberDayOff] [int] NULL,
	[Dormitory] [nvarchar](200) NULL,
	[PostOffice] [nvarchar](200) NULL,
	[Acreage] [float] NULL,
	[Roommates] [int] NULL,
	[AreaOnePerson] [float] NULL,
	[CreateDate] [date] NULL,
	[IsActive] [int] NULL,
	[DayStartcourse] [int] NULL,
	[MonthStartcourse] [int] NULL,
	[YearStartcourse] [int] NULL,
	[DayEndcourse] [int] NULL,
	[MonthEndcourse] [int] NULL,
	[YearEndcourse] [int] NULL,
	[DayCreateStudent] [int] NULL,
	[MonthCreateStudent] [int] NULL,
	[YearCreateStudent] [int] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 1/16/2019 4:09:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](200) NULL,
	[Password] [nvarchar](1000) NULL,
	[FullName] [nvarchar](200) NULL,
	[CreateDate] [date] NOT NULL,
	[IsActive] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_JobCategory] FOREIGN KEY([JobCategotyId])
REFERENCES [dbo].[JobCategory] ([Id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_JobCategory]
GO
USE [master]
GO
ALTER DATABASE [JWProject] SET  READ_WRITE 
GO
