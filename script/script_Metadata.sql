use master
go
if DB_ID('DALT_MetaData') is not null
drop database DALT_MetaData
go
create database DALT_MetaData
go
use DALT_MetaData
go 

create table Metadata_Table
(
	ID int identity(1,1) not null,
	DataFlow varchar(50),
	LSET datetime,
	CET datetime
)

truncate table Metadata_Table;
insert into Metadata_Table(DataFlow, LSET, CET) values	
('KhachHang_Jade','1900-1-1', null),
('HoaDon_Jade','1900-1-1', null),
('ChiTietHoaDon_Jade','1900-1-1', null),
('KhachHang_Webtower9','1900-1-1', null),
('HoaDon_Webtower9','1900-1-1', null),
('ChiTietHoaDon_Webtower9','1900-1-1', null),
('CuaHang_Jupiter','1900-1-1', null),
('LoaiCuaHang_Jupiter','1900-1-1', null),
('LoaiSanPham_Jupiter','1900-1-1', null),
('Nuoc_Jupiter','1900-1-1', null),
('SanPham_Jupiter','1900-1-1', null);


select * from Metadata_Table