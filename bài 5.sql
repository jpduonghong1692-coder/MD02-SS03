create database online_course;
use online_course;

create table teacher(
id int primary key not null auto_increment,
name char(255) not null,
email char(255) not null unique

);

create table course(
id int primary key not null auto_increment,
name char(100) not null unique,
description  text ,
price decimal(10,2) not null,
teacher_id int not null,
foreign key (teacher_id) references teacher(id)
);

create table student(
id int primary key not null auto_increment,
name char(255) not null,
email char(255) not null unique
);

create table student_course(
student_id int not null,
course_id int not null,

foreign key (student_id) references student(id),
foreign key (course_id)  references course(id)
);

ALTER TABLE course
ADD CONSTRAINT chk_course_price
CHECK (price > 0);

drop table student_course;




