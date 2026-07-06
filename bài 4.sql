use csdl_msql;
create table users(
id INT  PRIMARY KEY not null,
nickname char(100)  unique, 
password char (25) not null,
status enum("active", "inactive") default "active"
);