go
create database NDS_DALT
go
use NDS_DALT

go
create table Nuoc
(
	NuocID int identity(1,1) not null,
	MaNuoc varchar(4) null,
	TenNuoc varchar(50) null,
	Nguon int null,
	NgayTao datetime null,
	NgayCapNhat datetime null,
PRIMARY KEY CLUSTERED 
(
	[NuocID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

go
create table KhachHang
(
	KHID int identity(1,1) not null,
	MaKH varchar(4) null,
	TenKH varchar(50) null,
	DiaChi varchar(50) null,
	TenNuoc varchar(50) null,
	Nguon int null,
	NgayTao datetime null,
	NgayCapNhat datetime null,
	TrangThai int null,
	GioiTinh varchar(1) null,
	SoThich varchar(30) null,
	NgheNghiep varchar(30) null,
	PRIMARY KEY CLUSTERED (
	[KHID] ASC)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

go
create table SanPham
(
	SPID int identity(1,1) not null,
	MaSP varchar(4) null,
	TenSP varchar(50) null,
	GiaSP int null,
	LoaiSP int null,
	Nguon int null,
	NgayTao datetime null,
	NgayCapNhat datetime null,
	PRIMARY KEY CLUSTERED ([SPID] ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

go
create table LoaiSanPham
(
	LoaiSPID int identity(1,1) not null,
	MaLoaiSP varchar(4) null,
	TenLoaiSP varchar(50) null,
	Nguon int null,
	NgayTao datetime null,
	NgayCapNhat datetime null,
	TrangThai int null,
	PRIMARY KEY CLUSTERED ([LoaiSPID] ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

create table Nguon
(
	NguonID int not null,
	TenNguon varchar(50) null,
	NgayTao datetime null,
	NgayCapNhat datetime null,
	PRIMARY KEY CLUSTERED ([NguonID] ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

go
create table CuaHang
(
	CHID int identity(1,1) not null,
	MaCH varchar(4) null,
	TenCH varchar(50) null,
	Nguon int null,
	LoaiCH int null,
	Nuoc int null,
	NgayTao datetime null,
	NgayCapNhat datetime null,
	TrangThai int null,
	PRIMARY KEY CLUSTERED ([CHID] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

go
create table LoaiCuaHang
(
	LoaiCHID int identity(1,1) not null,
	MaLoaiCH varchar(4) null,
	TenLoaiCH varchar(50) null,
	Nguon int null,
	NgayTao datetime null,
	NgayCapNhat datetime null,
	TrangThai int null,
	PRIMARY KEY CLUSTERED ([LoaiCHID] ASC )
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

go
create table HoaDon
(
	HDID int identity(1,1) not null,
	MaHD varchar(4) null,
	MaKH int null,
	MaCH int null,
	Nguon int null,
	TrangThai int null,
	NgayTao datetime null,
	NgayCapNhat datetime null,
	NgayBan datetime null
	PRIMARY KEY CLUSTERED ([HDID] ASC )
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

go
create table ChiTietHoaDon
(
	ChiTietID int identity(1,1) not null,
	MaChiTiet int null,
	MaHD int null,
	MaSP int null,
	Nguon int null,
	TrangThai int null,
	NgayTao datetime null,
	NgayCapNhat datetime null
	PRIMARY KEY CLUSTERED ([ChiTietID] ASC )
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

go
create table TrangThai
(
	TrangThaiID int identity(1,1) not null,
	TenTrangThai varchar(30) null,
	NgayTao datetime null,
	NgayCapNhat datetime null
	PRIMARY KEY CLUSTERED ([TrangThaiID] ASC )
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[Nuoc]  WITH CHECK ADD  CONSTRAINT [FK_C_S] FOREIGN KEY([Nguon])
REFERENCES [dbo].[Nguon] ([NguonID])
GO
ALTER TABLE [dbo].[Nuoc] CHECK CONSTRAINT [FK_C_S]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_Cus_S] FOREIGN KEY([Nguon])
REFERENCES [dbo].[Nguon] ([NguonID])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_Cus_S]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_Cus_Status] FOREIGN KEY([TrangThai])
REFERENCES [dbo].[TrangThai] ([TrangThaiID])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_Cus_Status]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_P_ProductType] FOREIGN KEY([LoaiSP])
REFERENCES [dbo].[LoaiSanPham] ([LoaiSPID])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_P_ProductType]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_P_S] FOREIGN KEY([Nguon])
REFERENCES [dbo].[Nguon] ([NguonID])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_P_S]
GO
ALTER TABLE [dbo].[LoaiSanPham]  WITH CHECK ADD  CONSTRAINT [FK_PT_S] FOREIGN KEY([Nguon])
REFERENCES [dbo].[Nguon] ([NguonID])
GO
ALTER TABLE [dbo].[LoaiSanPham] CHECK CONSTRAINT [FK_PT_S]
GO
ALTER TABLE [dbo].[LoaiSanPham]  WITH CHECK ADD  CONSTRAINT [FK_PT_Status] FOREIGN KEY([TrangThai])
REFERENCES [dbo].[TrangThai] ([TrangThaiID])
GO
ALTER TABLE [dbo].[LoaiSanPham] CHECK CONSTRAINT [FK_PT_Status]
GO
ALTER TABLE [dbo].[CuaHang]  WITH CHECK ADD  CONSTRAINT [FK_S_Country] FOREIGN KEY([Nuoc])
REFERENCES [dbo].[Nuoc] ([NuocID])
GO
ALTER TABLE [dbo].[CuaHang] CHECK CONSTRAINT [FK_S_Country]
GO
ALTER TABLE [dbo].[CuaHang]  WITH CHECK ADD  CONSTRAINT [FK_S_Status] FOREIGN KEY([TrangThai])
REFERENCES [dbo].[TrangThai] ([TrangThaiID])
GO
ALTER TABLE [dbo].[CuaHang] CHECK CONSTRAINT [FK_S_Status]
GO
ALTER TABLE [dbo].[CuaHang]  WITH CHECK ADD  CONSTRAINT [FK_S_Source] FOREIGN KEY([Nguon])
REFERENCES [dbo].[Nguon] ([NguonID])
GO
ALTER TABLE [dbo].[CuaHang] CHECK CONSTRAINT [FK_S_Source]
GO
ALTER TABLE [dbo].[CuaHang]  WITH CHECK ADD  CONSTRAINT [FK_S_StoreType] FOREIGN KEY([LoaiCH])
REFERENCES [dbo].[LoaiCuaHang] ([LoaiCHID])
GO
ALTER TABLE [dbo].[CuaHang] CHECK CONSTRAINT [FK_S_StoreType]
GO
ALTER TABLE [dbo].[LoaiCuaHang]  WITH CHECK ADD  CONSTRAINT [FK_ST_S] FOREIGN KEY([Nguon])
REFERENCES [dbo].[Nguon] ([NguonID])
GO
ALTER TABLE [dbo].[LoaiCuaHang] CHECK CONSTRAINT [FK_ST_S]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_I_C] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([KHID])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_I_C]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_I_Store] FOREIGN KEY([MaCH])
REFERENCES [dbo].[CuaHang] ([CHID])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_I_Store]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_I_Source] FOREIGN KEY([Nguon])
REFERENCES [dbo].[Nguon] ([NguonID])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_I_Source]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_I_Status] FOREIGN KEY([TrangThai])
REFERENCES [dbo].[TrangThai] ([TrangThaiID])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_I_Status]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_HD] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([HDID])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_CTHD_HD]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_P] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([SPID])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_CTHD_P]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_Source] FOREIGN KEY([Nguon])
REFERENCES [dbo].[Nguon] ([NguonID])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_CTHD_Source]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_Status] FOREIGN KEY([TrangThai])
REFERENCES [dbo].[TrangThai] ([TrangThaiID])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_CTHD_Status]
GO

 use master 
 go
 alter database NDS_DALT set single_user with rollback immediate
 drop database NDS_DALT

