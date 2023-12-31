USE [master]
GO
/****** Object:  Database [QLST]    Script Date: 12/20/2022 5:11:48 PM ******/
CREATE DATABASE [QLST]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLST', FILENAME = N'F:\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLST.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLST_log', FILENAME = N'F:\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLST_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLST].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLST] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLST] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLST] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLST] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLST] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLST] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLST] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLST] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLST] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLST] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLST] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLST] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLST] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLST] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLST] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLST] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLST] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLST] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLST] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLST] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLST] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLST] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLST] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLST] SET  MULTI_USER 
GO
ALTER DATABASE [QLST] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLST] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLST] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLST] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
USE [QLST]
GO
/****** Object:  Table [dbo].[chitietdonhang]    Script Date: 12/20/2022 5:11:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitietdonhang](
	[maphieuxuat] [int] IDENTITY(1,1) NOT NULL,
	[sanphamban] [nvarchar](500) NULL,
	[ngayban] [nvarchar](30) NULL,
	[thanhtien] [int] NULL,
	[nguoiban] [nvarchar](50) NULL,
 CONSTRAINT [PK_chitietdonhang] PRIMARY KEY CLUSTERED 
(
	[maphieuxuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhacungcap]    Script Date: 12/20/2022 5:11:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhacungcap](
	[mancc] [int] IDENTITY(1,1) NOT NULL,
	[tenncc] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[sdt] [nvarchar](50) NULL,
	[congno] [int] NULL,
 CONSTRAINT [PK_nhacungcap] PRIMARY KEY CLUSTERED 
(
	[mancc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sanpham]    Script Date: 12/20/2022 5:11:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanpham](
	[masp] [int] IDENTITY(1000,1) NOT NULL,
	[tensp] [nvarchar](50) NULL,
	[mancc] [int] NULL,
	[gianhap] [int] NULL,
	[giaban] [int] NULL,
	[solg] [int] NULL,
	[hsd] [date] NULL,
	[noisx] [nvarchar](50) NOT NULL,
	[donvitinh] [nvarchar](50) NULL,
	[nguoinhap] [nvarchar](50) NULL,
 CONSTRAINT [PK_sanpham] PRIMARY KEY CLUSTERED 
(
	[masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taikhoan]    Script Date: 12/20/2022 5:11:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taikhoan](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
	[fullname] [nvarchar](50) NULL,
	[datecreate] [nvarchar](25) NULL,
	[isAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[chitietdonhang] ON 

INSERT [dbo].[chitietdonhang] ([maphieuxuat], [sanphamban], [ngayban], [thanhtien], [nguoiban]) VALUES (22, N'sua : 1,  ', N'2022-12-20 03:57:02 PM', 30000, N'Nguyen Duc Anh (Quản trị)')
INSERT [dbo].[chitietdonhang] ([maphieuxuat], [sanphamban], [ngayban], [thanhtien], [nguoiban]) VALUES (23, N'Bot ngot : 1,  Dau an : 1,  Kem Danh Rang : 1,  ', N'2022-12-20 04:11:56 PM', 155000, N'Nguyen Duc Anh (Quản trị)')
INSERT [dbo].[chitietdonhang] ([maphieuxuat], [sanphamban], [ngayban], [thanhtien], [nguoiban]) VALUES (24, N'Nuoc Tuong : 1,  Cocacola : 1,  Tuong ot : 1,  ', N'2022-12-20 04:12:37 PM', 335000, N'Le Tran Trung Kien (Quản trị)')
INSERT [dbo].[chitietdonhang] ([maphieuxuat], [sanphamban], [ngayban], [thanhtien], [nguoiban]) VALUES (25, N'Nuoc Tuong : 1,  Cocacola : 1,  Tuong ot : 1,  ', N'2022-12-20 04:12:58 PM', 335000, N'Le Tran Trung Kien (Quản trị)')
INSERT [dbo].[chitietdonhang] ([maphieuxuat], [sanphamban], [ngayban], [thanhtien], [nguoiban]) VALUES (26, N'Kem Danh Rang : 1,  Cocacola : 1,  Nuoc Tuong : 1,  Tuong ot : 1,  ', N'2022-12-20 04:12:58 PM', 405000, N'Le Tran Trung Kien (Quản trị)')
SET IDENTITY_INSERT [dbo].[chitietdonhang] OFF
GO
SET IDENTITY_INSERT [dbo].[nhacungcap] ON 

INSERT [dbo].[nhacungcap] ([mancc], [tenncc], [diachi], [sdt], [congno]) VALUES (1, N'VinFast', N'Hà Nội', N'01655888622', 0)
INSERT [dbo].[nhacungcap] ([mancc], [tenncc], [diachi], [sdt], [congno]) VALUES (2, N'GoFood', N'Hà Nội', N'00001356565', 0)
INSERT [dbo].[nhacungcap] ([mancc], [tenncc], [diachi], [sdt], [congno]) VALUES (3, N'ThuanAn', N'Hải Phòng', N'05985231023', 0)
INSERT [dbo].[nhacungcap] ([mancc], [tenncc], [diachi], [sdt], [congno]) VALUES (4, N'Sun', N'hcm', N'123456789', 0)
INSERT [dbo].[nhacungcap] ([mancc], [tenncc], [diachi], [sdt], [congno]) VALUES (5, N'Now', N'HCM', N'093454555', 0)
INSERT [dbo].[nhacungcap] ([mancc], [tenncc], [diachi], [sdt], [congno]) VALUES (6, N'ShopeeFood', N'Hà Nội', N'0571923477', 0)
SET IDENTITY_INSERT [dbo].[nhacungcap] OFF
GO
SET IDENTITY_INSERT [dbo].[sanpham] ON 

INSERT [dbo].[sanpham] ([masp], [tensp], [mancc], [gianhap], [giaban], [solg], [hsd], [noisx], [donvitinh], [nguoinhap]) VALUES (1000, N'Quat Máy', 1, 300000, 400000, 30, CAST(N'2025-01-01' AS Date), N'Hải Phòng', N'Chiếc', N'Nguyen Duc Anh (Quản trị)')
INSERT [dbo].[sanpham] ([masp], [tensp], [mancc], [gianhap], [giaban], [solg], [hsd], [noisx], [donvitinh], [nguoinhap]) VALUES (1001, N'Bột giặt', 2, 150000, 20000, 26, CAST(N'2022-07-21' AS Date), N'Binh Phuoc', N'bịch', N'Nguyen Duc Anh (Quản trị)')
INSERT [dbo].[sanpham] ([masp], [tensp], [mancc], [gianhap], [giaban], [solg], [hsd], [noisx], [donvitinh], [nguoinhap]) VALUES (1002, N'Dau an', 2, 50000, 60000, 31, CAST(N'2022-08-20' AS Date), N'HCM', N'Chai', N'Nguyen Van Dung (Quản trị)')
INSERT [dbo].[sanpham] ([masp], [tensp], [mancc], [gianhap], [giaban], [solg], [hsd], [noisx], [donvitinh], [nguoinhap]) VALUES (1003, N'Bot ngot', 1, 20000, 25000, 40, CAST(N'2022-08-20' AS Date), N'HCM', N'bich', N'Dinh Tung Duong (Quản trị)')
INSERT [dbo].[sanpham] ([masp], [tensp], [mancc], [gianhap], [giaban], [solg], [hsd], [noisx], [donvitinh], [nguoinhap]) VALUES (1004, N'Tuong ot', 1, 35000, 45000, 54, CAST(N'2023-11-23' AS Date), N'Hai phong', N'Chai', N'Nguyen Van Dung (Quản trị)')
INSERT [dbo].[sanpham] ([masp], [tensp], [mancc], [gianhap], [giaban], [solg], [hsd], [noisx], [donvitinh], [nguoinhap]) VALUES (1005, N'Cocacola', 1, 170000, 250000, 100, CAST(N'2022-08-20' AS Date), N'HCM', N'Thung', N'Le Tran Trung Kien (Quản trị)')
INSERT [dbo].[sanpham] ([masp], [tensp], [mancc], [gianhap], [giaban], [solg], [hsd], [noisx], [donvitinh], [nguoinhap]) VALUES (1007, N'kim chi', 2, 50000, 70000, 94, CAST(N'2022-08-26' AS Date), N'Seoul', N'Bịch', N'Nguyen Duc Anh (Quản trị)')
INSERT [dbo].[sanpham] ([masp], [tensp], [mancc], [gianhap], [giaban], [solg], [hsd], [noisx], [donvitinh], [nguoinhap]) VALUES (1008, N'sua', 3, 20000, 30000, 35, CAST(N'2022-09-28' AS Date), N'hcm', N'hop', N'Le Tran Trung Kien (Quản trị)')
INSERT [dbo].[sanpham] ([masp], [tensp], [mancc], [gianhap], [giaban], [solg], [hsd], [noisx], [donvitinh], [nguoinhap]) VALUES (1009, N'Nuoc Tuong', 1, 30000, 40000, 83, CAST(N'2022-09-29' AS Date), N'HCM', N'Chai', N'Le Tran Trung Kien (Quản trị)')
INSERT [dbo].[sanpham] ([masp], [tensp], [mancc], [gianhap], [giaban], [solg], [hsd], [noisx], [donvitinh], [nguoinhap]) VALUES (1010, N'Kem Danh Rang', 5, 50000, 70000, 81, CAST(N'2022-08-30' AS Date), N'Binh Phuoc', N'Tip', N'Le Tran Trung Kien (Quản trị)')
SET IDENTITY_INSERT [dbo].[sanpham] OFF
GO
INSERT [dbo].[taikhoan] ([username], [password], [fullname], [datecreate], [isAdmin]) VALUES (N'admin', N'123', N'Nguyen Duc Anh', N'2022-08-21 20:16:04.51000', 0)
INSERT [dbo].[taikhoan] ([username], [password], [fullname], [datecreate], [isAdmin]) VALUES (N'duong', N'123', N'Dinh Tung Duong', N'2022-12-20 10:53:55 AM', 0)
INSERT [dbo].[taikhoan] ([username], [password], [fullname], [datecreate], [isAdmin]) VALUES (N'nv1', N'123ducanh', N'Hoang Linh', N'2022-12-20 10:53:55 AM', 1)
INSERT [dbo].[taikhoan] ([username], [password], [fullname], [datecreate], [isAdmin]) VALUES (N'staff', N'123', N'Le Tran Trung Kien', N'2022-08-21 20:16:36.94700', 0)
GO
USE [master]
GO
ALTER DATABASE [QLST] SET  READ_WRITE 
GO
