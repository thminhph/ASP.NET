USE [master]
GO
/****** Object:  Database [DKTQDN]    Script Date: 11/18/2024 10:40:46 AM ******/
CREATE DATABASE [DKTQDN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DangKyThamQuanDoanhNghiep', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DangKyThamQuanDoanhNghiep.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DangKyThamQuanDoanhNghiep_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DangKyThamQuanDoanhNghiep_log.ldf' , SIZE = 4288KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DKTQDN] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DKTQDN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DKTQDN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DKTQDN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DKTQDN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DKTQDN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DKTQDN] SET ARITHABORT OFF 
GO
ALTER DATABASE [DKTQDN] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DKTQDN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DKTQDN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DKTQDN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DKTQDN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DKTQDN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DKTQDN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DKTQDN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DKTQDN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DKTQDN] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DKTQDN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DKTQDN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DKTQDN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DKTQDN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DKTQDN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DKTQDN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DKTQDN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DKTQDN] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DKTQDN] SET  MULTI_USER 
GO
ALTER DATABASE [DKTQDN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DKTQDN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DKTQDN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DKTQDN] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DKTQDN] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DKTQDN] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DKTQDN] SET QUERY_STORE = OFF
GO
USE [DKTQDN]
GO
/****** Object:  Table [dbo].[ChiTietDangKy]    Script Date: 11/18/2024 10:40:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDangKy](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NgayDangKy] [datetime] NULL,
	[idSinhVien] [int] NOT NULL,
	[idChuyenDi] [int] NOT NULL,
	[is_deleted] [int] NULL,
	[created_by] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_by] [int] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_ChiTietDangKy] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuyenDi]    Script Date: 11/18/2024 10:40:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenDi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaChuyenDi] [varchar](30) NULL,
	[Slot] [int] NULL,
	[NgayThamQuan] [datetime] NULL,
	[TrangThai] [int] NULL,
	[HocKi] [int] NULL,
	[NamHoc] [int] NULL,
	[idGiangVien] [int] NOT NULL,
	[idDoanhNghiep] [int] NOT NULL,
	[idKhoa] [int] NOT NULL,
	[idKhoaHoc] [int] NOT NULL,
	[is_deleted] [int] NULL,
	[created_by] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_by] [int] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_DangKy] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoanhNghiep]    Script Date: 11/18/2024 10:40:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoanhNghiep](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaDoanhNghiep] [varchar](30) NULL,
	[TenDoanhNghiep] [nvarchar](100) NULL,
	[SoDienThoai] [varchar](10) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[is_deleted] [int] NULL,
	[created_by] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_by] [int] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_tblDoanhNghiep] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiangVien]    Script Date: 11/18/2024 10:40:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiangVien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaGiangVien] [varchar](30) NULL,
	[TenGiangVien] [nvarchar](100) NULL,
	[SoDienThoai] [varchar](10) NULL,
	[idKhoa] [int] NOT NULL,
	[is_deleted] [int] NULL,
	[created_by] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_by] [int] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_GiangVien] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 11/18/2024 10:40:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaKhoa] [varchar](30) NULL,
	[TenKhoa] [nvarchar](100) NULL,
	[SoDienThoai] [varchar](10) NULL,
	[Email] [varchar](100) NULL,
	[is_deleted] [int] NULL,
	[created_by] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_by] [int] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_Khoa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhoaHoc]    Script Date: 11/18/2024 10:40:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoaHoc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaKhoaHoc] [varchar](30) NULL,
	[NamBatDau] [int] NULL,
	[NamKetThuc] [int] NULL,
	[is_deleted] [int] NULL,
	[created_by] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_by] [int] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_KhoaHoc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 11/18/2024 10:40:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaSinhVien] [varchar](30) NULL,
	[TenSinhVien] [nvarchar](100) NULL,
	[SoDienThoai] [varchar](10) NULL,
	[Email] [varchar](100) NULL,
	[idKhoa] [int] NULL,
	[idTaiKhoan] [int] NOT NULL,
	[idKhoaHoc] [int] NOT NULL,
	[is_deleted] [int] NOT NULL,
	[created_by] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_by] [int] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 11/18/2024 10:40:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenTaiKhoan] [varchar](100) NULL,
	[MatKhau] [varchar](30) NULL,
	[Quyen] [int] NULL,
	[is_deleted] [int] NULL,
	[created_by] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_by] [int] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietDangKy]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDangKy_ChuyenDi] FOREIGN KEY([idChuyenDi])
REFERENCES [dbo].[ChuyenDi] ([id])
GO
ALTER TABLE [dbo].[ChiTietDangKy] CHECK CONSTRAINT [FK_ChiTietDangKy_ChuyenDi]
GO
ALTER TABLE [dbo].[ChiTietDangKy]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDangKy_SinhVien] FOREIGN KEY([idSinhVien])
REFERENCES [dbo].[SinhVien] ([id])
GO
ALTER TABLE [dbo].[ChiTietDangKy] CHECK CONSTRAINT [FK_ChiTietDangKy_SinhVien]
GO
ALTER TABLE [dbo].[ChuyenDi]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenDi_DoanhNghiep] FOREIGN KEY([idDoanhNghiep])
REFERENCES [dbo].[DoanhNghiep] ([id])
GO
ALTER TABLE [dbo].[ChuyenDi] CHECK CONSTRAINT [FK_ChuyenDi_DoanhNghiep]
GO
ALTER TABLE [dbo].[ChuyenDi]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenDi_GiangVien] FOREIGN KEY([idGiangVien])
REFERENCES [dbo].[GiangVien] ([id])
GO
ALTER TABLE [dbo].[ChuyenDi] CHECK CONSTRAINT [FK_ChuyenDi_GiangVien]
GO
ALTER TABLE [dbo].[ChuyenDi]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenDi_Khoa] FOREIGN KEY([idKhoa])
REFERENCES [dbo].[Khoa] ([id])
GO
ALTER TABLE [dbo].[ChuyenDi] CHECK CONSTRAINT [FK_ChuyenDi_Khoa]
GO
ALTER TABLE [dbo].[ChuyenDi]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenDi_KhoaHoc] FOREIGN KEY([idKhoaHoc])
REFERENCES [dbo].[KhoaHoc] ([id])
GO
ALTER TABLE [dbo].[ChuyenDi] CHECK CONSTRAINT [FK_ChuyenDi_KhoaHoc]
GO
ALTER TABLE [dbo].[GiangVien]  WITH CHECK ADD  CONSTRAINT [FK_GiangVien_Khoa] FOREIGN KEY([idKhoa])
REFERENCES [dbo].[Khoa] ([id])
GO
ALTER TABLE [dbo].[GiangVien] CHECK CONSTRAINT [FK_GiangVien_Khoa]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_Khoa] FOREIGN KEY([idKhoa])
REFERENCES [dbo].[Khoa] ([id])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_SinhVien_Khoa]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_KhoaHoc] FOREIGN KEY([idKhoaHoc])
REFERENCES [dbo].[KhoaHoc] ([id])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_SinhVien_KhoaHoc]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_TaiKhoan] FOREIGN KEY([idTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([id])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_SinhVien_TaiKhoan]
GO
USE [master]
GO
ALTER DATABASE [DKTQDN] SET  READ_WRITE 
GO
