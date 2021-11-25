use master
go
--Drop DB
if DB_ID('DALT_Stage') is not null
	drop database DALT_Stage
go
-----------
create database DALT_Stage
go
use DALT_Stage
go

--set ansi_nulls on
--go
--set quoted_identifier on
--go

--if NOT EXISTS (select * from sys.objects where object_id = OBJECT_ID(N'[dbo].[KhachHang_Stage]') and type in (N'U'))
--begin
--create table [dbo].[KhachHang_Stage](
--	[MaKH] [varchar](4) NOT NULL,
--	[TenKH] [varchar](50) NULL,
--	[DiaChi] [varchar](50) NULL,
--	[NgayTao] [datetime] NULL,
--	[NgayCapNhat] [datetime] NULL,
--	[TrangThai] [int] NULL,
-- constraint [PK_KhachHang] primary key clustered 
--(
--	[MaKH] asc
--)with (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
--) ON [PRIMARY]
--end

--set ansi_nulls on
--go
--set quoted_identifier on
--go

--if NOT EXISTS (select * from sys.objects where object_id = OBJECT_ID(N'[dbo].[HoaDon_Stage]') and type in (N'U'))
--begin
--create table [dbo].HoaDon_Stage(
--	[MaHD] [varchar](4) NOT NULL,
--	[MaKH] [varchar](4) NULL,
--	[MaCH] [varchar](4) NULL,
--	[NgayBan] [datetime] NULL,
--	[NgayCapNhat] [datetime] NULL,
--	[TrangThai] [int] NULL,
-- constraint [PK_HoaDon] primary key clustered 
--(
--	[MaHD] asc
--)with (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
--) ON [PRIMARY]
--end

--set ansi_nulls on
--go
--set quoted_identifier on
--go

--if NOT EXISTS (select * from sys.objects where object_id = OBJECT_ID(N'[dbo].[CHiTietHoaDon_Stage]') and type in (N'U'))
--begin
--create table [dbo].CHiTietHoaDon_Stage(
--	[MaChiTiet] [int] NOT NULL,
--	[MaHD] [varchar](4) NULL,
--	[MaSP] [varchar](4) NULL,
--	[NgayTao] [datetime] NULL,
--	[NgayCapNhat] [datetime] NULL,
--	[TrangThai] [int] NULL,
-- constraint [PK_ChiTietHoaDon] primary key clustered 
--(
--	[MaChiTiet] asc
--)with (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
--) ON [PRIMARY]
--end


