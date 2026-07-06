create database Product_management ;
use Product_management;


create table orders (
id int primary key not null auto_increment,
order_date date not null,
customer_name char(100) not null 
);

create table product(
id int primary key not null auto_increment,
name char(255) not null,
price DECIMAL(10,2) not null
);

create table orders_items(
id int primary key not null auto_increment,
orders_id int not null,
product_id int not null,
FOREIGN KEY (orders_id)REFERENCES orders(id),
FOREIGN KEY (product_id)REFERENCES product(id) 

);


