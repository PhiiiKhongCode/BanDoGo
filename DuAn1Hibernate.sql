USE [master]
GO
/****** Object:  Database [DuAn1Hibernate]    Script Date: 3/11/2022 21:34:08 ******/
CREATE DATABASE [DuAn1Hibernate2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DuAn1Hibernate', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DuAn1Hibernate.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DuAn1Hibernate_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DuAn1Hibernate_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DuAn1Hibernate] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DuAn1Hibernate].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DuAn1Hibernate] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DuAn1Hibernate] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DuAn1Hibernate] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DuAn1Hibernate] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DuAn1Hibernate] SET ARITHABORT OFF 
GO
ALTER DATABASE [DuAn1Hibernate] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DuAn1Hibernate] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DuAn1Hibernate] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DuAn1Hibernate] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DuAn1Hibernate] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DuAn1Hibernate] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DuAn1Hibernate] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DuAn1Hibernate] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DuAn1Hibernate] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DuAn1Hibernate] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DuAn1Hibernate] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DuAn1Hibernate] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DuAn1Hibernate] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DuAn1Hibernate] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DuAn1Hibernate] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DuAn1Hibernate] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DuAn1Hibernate] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DuAn1Hibernate] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DuAn1Hibernate] SET  MULTI_USER 
GO
ALTER DATABASE [DuAn1Hibernate] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DuAn1Hibernate] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DuAn1Hibernate] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DuAn1Hibernate] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DuAn1Hibernate] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DuAn1Hibernate] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DuAn1Hibernate] SET QUERY_STORE = OFF
GO
USE [DuAn1Hibernate]
GO
/****** Object:  Table [dbo].[BaoHanh]    Script Date: 3/11/2022 21:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoHanh](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [nvarchar](50) NULL,
	[IdSPBaoHanh] [uniqueidentifier] NULL,
	[IdKH] [uniqueidentifier] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_BaoHanh] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CuaHang]    Script Date: 3/11/2022 21:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuaHang](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [nvarchar](50) NULL,
	[TenCuaHang] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_CuaHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDoGo]    Script Date: 3/11/2022 21:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDoGo](
	[Id] [uniqueidentifier] NOT NULL,
	[IdSanPham] [uniqueidentifier] NULL,
	[IdLoaiSP] [uniqueidentifier] NULL,
	[IdDongGo] [uniqueidentifier] NULL,
	[IdNhaCungCap] [uniqueidentifier] NULL,
	[IdNguonGoc] [uniqueidentifier] NULL,
	[IdDonViTinh] [uniqueidentifier] NULL,
	[TenSP] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[GiaNhap] [decimal](18, 0) NULL,
	[GiaBan] [decimal](18, 0) NULL,
	[MoTa] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_ChiTietDoGo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 3/11/2022 21:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [nvarchar](50) NULL,
	[TenChucVu] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonViTinh]    Script Date: 3/11/2022 21:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonViTinh](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [nvarchar](50) NULL,
	[DonViTinh] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_DonViTinh] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DongGo]    Script Date: 3/11/2022 21:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DongGo](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [nvarchar](50) NULL,
	[TenLoaiGo] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_LoaiGo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 3/11/2022 21:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgayThanhToan] [date] NULL,
	[TrangThaiHoaDon] [int] NULL,
	[IdKhuyenMai] [uniqueidentifier] NULL,
	[IdKhachHang] [uniqueidentifier] NULL,
	[IdNhanVien] [uniqueidentifier] NULL,
	[NgayNhan] [date] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_Hoa_Don] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonChiTiet]    Script Date: 3/11/2022 21:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonChiTiet](
	[IdChiTietDoGo] [uniqueidentifier] NOT NULL,
	[IdHoaDon] [uniqueidentifier] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_HoaDonChiTiet] PRIMARY KEY CLUSTERED 
(
	[IdChiTietDoGo] ASC,
	[IdHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 3/11/2022 21:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [nvarchar](50) NULL,
	[TenKhachHang] [nvarchar](50) NULL,
	[Sdt] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[TrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 3/11/2022 21:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [nvarchar](50) NULL,
	[TenKhuyenMai] [nvarchar](50) NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuNhap]    Script Date: 3/11/2022 21:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuNhap](
	[IdNhap] [uniqueidentifier] NOT NULL,
	[IdSpNhap] [uniqueidentifier] NULL,
	[SoLongNhap] [int] NULL,
	[NgayNhap] [date] NULL,
	[TrangThai] [int] NULL,
	[TongTienNhap] [decimal](18, 0) NULL,
 CONSTRAINT [PK_LichSuNhap] PRIMARY KEY CLUSTERED 
(
	[IdNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 3/11/2022 21:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [nvarchar](50) NULL,
	[TenDongSP] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_DongSP] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguonGoc]    Script Date: 3/11/2022 21:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguonGoc](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [nvarchar](50) NULL,
	[QuocGia] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_QuocGia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 3/11/2022 21:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [nvarchar](50) NULL,
	[TenNCC] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Sdt] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 3/11/2022 21:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [nvarchar](50) NULL,
	[HoTen] [nvarchar](50) NULL,
	[Sdt] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[IdCuaHang] [uniqueidentifier] NULL,
	[IdChucVu] [uniqueidentifier] NULL,
	[MatKhau] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 3/11/2022 21:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [nvarchar](50) NULL,
	[Ten] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CuaHang] ([Id], [Ma], [TenCuaHang], [DiaChi], [TrangThai]) VALUES (N'940195f6-a746-4ba7-bbff-06687c6b533f', N'CH1', N'Do Go An Cuong', N'Doi 4 dong khe', 1)
GO
INSERT [dbo].[DongGo] ([Id], [Ma], [TenLoaiGo], [TrangThai]) VALUES (N'5e123722-efc5-4cbd-bbcb-b8ef019df8bd', N'D1', N'Lim', 1)
GO
INSERT [dbo].[LoaiSP] ([Id], [Ma], [TenDongSP], [TrangThai]) VALUES (N'8eaa5de2-23e1-4381-bd91-4edcac96cae0', N'L1', N'Vip', 1)
GO
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten], [TrangThai]) VALUES (N'b2709151-a03a-4470-9776-ccf15ab22e6c', N'SP1', N'Ghe', 1)
GO
ALTER TABLE [dbo].[BaoHanh] ADD  CONSTRAINT [DF_BaoHanh_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[CuaHang] ADD  CONSTRAINT [DF_CuaHang_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[ChiTietDoGo] ADD  CONSTRAINT [DF_ChiTietDoGo_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[ChucVu] ADD  CONSTRAINT [DF_ChucVu_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[DonViTinh] ADD  CONSTRAINT [DF_DonViTinh_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[DongGo] ADD  CONSTRAINT [DF_LoaiGo_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_Hoa_Don_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [DF_KhachHang_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[KhuyenMai] ADD  CONSTRAINT [DF_KhuyenMai_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[LichSuNhap] ADD  CONSTRAINT [DF_LichSuNhap_IdNhap]  DEFAULT (newid()) FOR [IdNhap]
GO
ALTER TABLE [dbo].[LoaiSP] ADD  CONSTRAINT [DF_DongSP_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[NguonGoc] ADD  CONSTRAINT [DF_QuocGia_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[NhaCungCap] ADD  CONSTRAINT [DF_NhaCungCap_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[NhanVien] ADD  CONSTRAINT [DF_NhanVien_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[BaoHanh]  WITH CHECK ADD  CONSTRAINT [FK_BaoHanh_KhachHang] FOREIGN KEY([IdKH])
REFERENCES [dbo].[KhachHang] ([Id])
GO
ALTER TABLE [dbo].[BaoHanh] CHECK CONSTRAINT [FK_BaoHanh_KhachHang]
GO
ALTER TABLE [dbo].[ChiTietDoGo]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDoGo_DonViTinh] FOREIGN KEY([IdDonViTinh])
REFERENCES [dbo].[DonViTinh] ([Id])
GO
ALTER TABLE [dbo].[ChiTietDoGo] CHECK CONSTRAINT [FK_ChiTietDoGo_DonViTinh]
GO
ALTER TABLE [dbo].[ChiTietDoGo]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDoGo_DongGo] FOREIGN KEY([IdDongGo])
REFERENCES [dbo].[DongGo] ([Id])
GO
ALTER TABLE [dbo].[ChiTietDoGo] CHECK CONSTRAINT [FK_ChiTietDoGo_DongGo]
GO
ALTER TABLE [dbo].[ChiTietDoGo]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDoGo_LoaiSP] FOREIGN KEY([IdLoaiSP])
REFERENCES [dbo].[LoaiSP] ([Id])
GO
ALTER TABLE [dbo].[ChiTietDoGo] CHECK CONSTRAINT [FK_ChiTietDoGo_LoaiSP]
GO
ALTER TABLE [dbo].[ChiTietDoGo]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDoGo_NguonGoc] FOREIGN KEY([IdNguonGoc])
REFERENCES [dbo].[NguonGoc] ([Id])
GO
ALTER TABLE [dbo].[ChiTietDoGo] CHECK CONSTRAINT [FK_ChiTietDoGo_NguonGoc]
GO
ALTER TABLE [dbo].[ChiTietDoGo]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDoGo_NhaCungCap] FOREIGN KEY([IdNhaCungCap])
REFERENCES [dbo].[NhaCungCap] ([Id])
GO
ALTER TABLE [dbo].[ChiTietDoGo] CHECK CONSTRAINT [FK_ChiTietDoGo_NhaCungCap]
GO
ALTER TABLE [dbo].[ChiTietDoGo]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDoGo_SanPham] FOREIGN KEY([IdSanPham])
REFERENCES [dbo].[SanPham] ([Id])
GO
ALTER TABLE [dbo].[ChiTietDoGo] CHECK CONSTRAINT [FK_ChiTietDoGo_SanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([IdKhachHang])
REFERENCES [dbo].[KhachHang] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhuyenMai] FOREIGN KEY([IdKhuyenMai])
REFERENCES [dbo].[KhuyenMai] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhuyenMai]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([IdNhanVien])
REFERENCES [dbo].[NhanVien] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonChiTiet_ChiTietDoGo] FOREIGN KEY([IdChiTietDoGo])
REFERENCES [dbo].[ChiTietDoGo] ([Id])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK_HoaDonChiTiet_ChiTietDoGo]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonChiTiet_HoaDon] FOREIGN KEY([IdHoaDon])
REFERENCES [dbo].[HoaDon] ([Id])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK_HoaDonChiTiet_HoaDon]
GO
ALTER TABLE [dbo].[LichSuNhap]  WITH CHECK ADD  CONSTRAINT [FK_LichSuNhap_ChiTietDoGo] FOREIGN KEY([IdSpNhap])
REFERENCES [dbo].[ChiTietDoGo] ([Id])
GO
ALTER TABLE [dbo].[LichSuNhap] CHECK CONSTRAINT [FK_LichSuNhap_ChiTietDoGo]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_CuaHang] FOREIGN KEY([IdCuaHang])
REFERENCES [dbo].[CuaHang] ([Id])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_CuaHang]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([IdChucVu])
REFERENCES [dbo].[ChucVu] ([Id])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
GO
USE [master]
GO
ALTER DATABASE [DuAn1Hibernate] SET  READ_WRITE 
GO
