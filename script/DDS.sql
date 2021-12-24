use master
go
create database DDS_DALT
use DDS_DALT
go

create table Dim_KhachHang
(
	Ma int ,
	MaKH varchar(4) null,
	TenKH varchar(50) null,
	DiaChi varchar(50) null,
	Nuoc varchar(50) null,
	GioiTinh varchar(1) null,
	SoThich varchar(30) null,
	NgheNghiep varchar(30) null,
	Nguon int null,
	TrangThai int null,
	NgayTao datetime null,
	NgayCapNhat datetime null,
	constraint FK_KhachHang primary key (Ma)
)
go

create table Dim_CuaHang
(
	Ma int,
	MaCH varchar(4) null,
	TenCH varchar(50) null,
	LoaiCH int null,
	TenLoaiCH varchar(50) null,
	Nuoc int null,
	NguonDuLieu int null,
	NgayTao datetime null,
	NgayCapNhat datetime null,
	constraint PK_CuaHang primary key (Ma)
)
go

create table Dim_SanPham
(
	Ma int,
	MaSP varchar(4) null,
	TenSP varchar(50) null,
	GiaSP int null,
	LoaiSP int null,
	TenLoaiSP varchar(50) null,
	Nguon int null,
	TrangThai int null,
	NgayTao datetime,
	NgayCapNhat datetime,
	constraint PK_SanPham primary key (Ma)
)
go

create table Fact_DoanhThu
(
	Ma int identity(1,1) not null,
	MaCTHD int,
	MaSP int,
	MaKH int ,
	MaCH int,
	MaHD int,
	GiaSP int null,
	TrangThai int null,
	NgayBan datetime,
	NgayTao datetime null,
	NgayCapNhat datetime null 
	constraint PK_Fact primary key (Ma)
)
go

alter table [dbo].[Fact_DoanhThu] with check add constraint [FK_F_Cus] foreign key ([MaKH])
references [dbo].[Dim_KhachHang] ([Ma])	
go
alter table [Fact_DoanhThu] check  constraint [FK_F_Cus]

alter table [dbo].[Fact_DoanhThu] with check add constraint [FK_F_Product] foreign key ([MaSP])
references [dbo].[Dim_SanPham] ([Ma])	
go
alter table [Fact_DoanhThu] check  constraint [FK_F_Product]

alter table [dbo].[Fact_DoanhThu] with check add constraint [FK_F_Store] foreign key (MaCH)
references [dbo].[Dim_CuaHang] ([Ma])	
go
alter table [Fact_DoanhThu] check  constraint [FK_F_Store]

alter table [dbo].[Fact_DoanhThu] with check add constraint [FK_F_Date] foreign key (NgayBan)
references [dbo].[Dim_Date] ([PK_Date])	
go
alter table [Fact_DoanhThu] check  constraint [FK_F_Date]


drop table Fact_DoanhThu
drop table Dim_CuaHang
drop table Dim_SanPham