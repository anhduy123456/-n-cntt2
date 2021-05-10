Create database QLGV
Go
Use QLGV

Create table Khoa
(
	MaKhoa char(20) primary key,
	TenKhoa nvarchar(200)
)
Go

Create table NoiDaoTao
(
	MaTruong char(20) primary key,
	TenTruong nvarchar(200),
	ThanhPho nvarchar(200),
	QuocGia nvarchar(200)
)
Go

Create table GiaoVien
(
	MaGV char(20) primary key,
	HoTen nvarchar(200),
	NgaySinh date,
	Phai nvarchar(20),
	QueQuan nvarchar(200),
	NgayBDLam date,
	HocVi nvarchar(200),
	NamDatHocVi int,
	HocHam nvarchar(200) default null,
	NamDatHocHam int default null,
	LoaiGV nvarchar(200),
	MaKhoa char(20),
	MaTruongDT char(20)
	constraint fk_GV_K foreign key (MaKhoa) references Khoa(MaKhoa),
	constraint fk_GV_NoiDT foreign key (MaTruongDT) references NoiDaoTao(MaTruong)
)

Create table HocPhan
(
	MaHP char(20) primary key,
	TenHP nvarchar(200),
	LoaiHP nvarchar(200),
	SoTC int,
	HocKy nvarchar(200)
)
Go

Create table GiangDay
(
	MaGD char(20) primary key,
	MaGV char(20),
	HPGiangDay char(20),
	NgayBD date,
	NgayKT date
	constraint fk_GV_GiangDay foreign key (MaGV) references GiaoVien(MaGV),
	constraint fk_HocPhan_GiangDay foreign key (HPGiangDay) references HocPhan(MaHP)
)
Go

insert into Khoa values ('CNTT',N'Công Nghệ Thông Tin')
insert into Khoa values ('CNTP',N'Công Nghệ Thực Phẩm')

insert into NoiDaoTao values ('VLU',N'ĐH Sư Phạm Kỹ Thuật Vĩnh long',N'Vĩnh Long',N'Việt Nam')
insert into NoiDaoTao values ('TCT',N'ĐH Cần Thơ',N'Cần Thơ',N'Việt Nam')

insert into GiaoVien values ('GV001',N'Lê Trung Hậu','10/28/1995',N'Nam',N'Vĩnh Long','4/22/2020',N'Kỹ Sư',2018,N'Chưa Đạt',null,N'Cơ Hữu','CNTT','VLU')
insert into GiaoVien values ('GV002',N'Trần Lê Anh Duy','10/10/1995',N'Nam',N'Vĩnh Long','4/8/2020',N'Kỹ Sư',2018,N'Chưa Đạt',null,N'Cơ Hữu','CNTP','TCT')

insert into HocPhan values ('TH1337',N'Lập trình dotNET',N'Lý Thuyết',2,N'Học kỳ 1,2020-2021')
insert into HocPhan values ('TH1337_(BT)',N'Lập trình dotNET (BT)',N'Thực Hành',2,N'Học kỳ 1,2020-2021')
insert into HocPhan values ('TH1307',N'Hệ QTCSDL',N'Lý Thuyết',2,N'Học kỳ 1,2020-2021')
insert into HocPhan values ('TH1307_(BT)',N'Hệ QTCSDL (BT)',N'Thực Hành',1,N'Học kỳ 1,2020-2021')

insert into GiangDay values ('GD001','GV001','TH1307','09/08/2020','12/15/2020')
insert into GiangDay values ('GD002','GV002','TH1337','09/08/2020','12/15/2020')
insert into GiangDay values('GD003','GV002','TH1307_(BT)','09/08/2020','12/15/2020')

select MaGD,GiaoVien.MaGV,HoTen,MaHP,TenHP,LoaiHP,SoTC
from GiangDay,GiaoVien,HocPhan
where GiangDay.HPGiangDay=HocPhan.MaHP
and GiaoVien.MaGV=GiangDay.MaGV

select * from HocPhan
CREATE PROC ID
AS
     IF NOT EXISTS(SELECT*FROM GiaoVien)
           SELECT GV ='GV000'
    ELSE
         SELECT MAX(MaGV)FROM GiaoVien
		 SELECT MAX(MaGV) FROM GiaoVien
		 select MaGV from GiaoVien
		 select * from GiaoVien where HocVi like N'%"+ cbb_hocvi.Text +"'
		 select MaGV as 'Mã Giáo Viên', HoTen as 'Họ Tên', Phai as ' Phái', HocVi as 'Học Vị', HocHam as 'Học Hàm', Khoa  from GiaoVien where HocVi like N'%"+ cbb_hocvi.Text +"' 
		 select * from GiaoVien
		 select MaGD,GiaoVien.MaGV,HoTen,MaHP,TenHP,LoaiHP,SoTC from GiangDay, GiaoVien, HocPhan where GiangDay.HPGiangDay = HocPhan.MaHP and GiaoVien.MaGV = GiangDay.MaGV
		 select HoTen,   sum(SoTC) from  HocPhan where SoTC>1
		 select HoTen,TenHP, LoaiHP, SoTC from GiangVien,HocPhan where 
		 select MaGV,TenHP from GiangDay,HocPhan 
		 