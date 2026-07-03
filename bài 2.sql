create database Product_information;
use Product_information;
create table product (
id int not null primary key  auto_increment,
name char(100) not null,
price float  not null,
quantity int not null 
);
select * from product;

