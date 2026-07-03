create database quanlysinhvien;
use quanlysinhvien;
create table lop_hoc(
ma_lop int primary key not null auto_increment,
ten_lop char (100) not null,
chuyen_nganh char(100) not null
);



create table sinh_vien(
ma_sv  int primary key not null auto_increment,
ho_ten char(100) not null,
gioi_tinh enum("nam", "nữ") default "nữ",
ngay_sinh date not null,
lop_hoc int not null,
constraint fk_lophoc foreign key  (lop_hoc) references  lop_hoc(ma_lop)
);

