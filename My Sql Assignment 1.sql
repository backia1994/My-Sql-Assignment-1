drop database if exists employee_db;
create database if not exists employee_db;
use employee_db;
create table if not exists departments(
department_id int primary key auto_increment,
department_name varchar(100)
);
create table if not exists location(
location_id int primary key auto_increment,
location_name varchar(100)
);
create table if not exists employees(
employee_id int primary key auto_increment,
employee_name varchar(100),
gender enum ('male','female','others'),
age int check (age between 20 and 60),
hire_date date,
designation varchar(100),
salary int,department_id int,
location_id int,
foreign key (department_id) references departments(department_id),
foreign key (location_id) references location(location_id));
desc employees;
desc location;
insert into departments(department_name)
values('marketing'),('sales'),('finance'),('tele calling');
select * from departments;
insert into location(location_name)
values('chennai'),('kochin'),('pandicherry'),('mumbai');
select * from location;
insert into employees(employee_name,gender,age,hire_date,designation,salary,department_id,location_id)
values('backia','female',30,'2024-05-06','data analyst','50000',1,1),('theerthana','female',20,'2025-06-18','hr','80000',2,2),
('aditya','male',25,'2020-08-11','manager','90000',3,3),('karthik','male',35,'2020-04-08','sales manager','50000',4,4);


desc employees;
select * from employees;


# * Alter Table * #
alter table employees add column email varchar(100) unique;
alter table employees drop column age;
alter table employees modify column designation varchar(200);
alter table employees rename column hire_date to date_of_joining;


 rename table departments to department_info;
 rename table location to locations;
 
 desc employees;
 desc department_info;
 desc locations;
 

 truncate table employees;
 
 drop table employees;
 drop database employee_db;
 
 drop database if exists employee;
 create database employee;
 use employee;
 select database();
 create table deprtments(department_id int primary key auto_increment,
department_name varchar(100) not null unique);

create table  location(
location_id int primary key auto_increment,
location_name varchar(100) not null unique);

create table employees(employee_id int primary key auto_increment,
employee_name varchar(100) not null,
gender enum ('male','female'),
age int check (age >= 20),
hire_date date default (current date),
designation varchar(200),
salary int,
department_id int,
location_id int,
foreign key (department_id) references departments(department_id),
foreign key (location_id) references location(location_id)
);
 show tables;
 insert into departments(department_name)
values('marketing'),('sales'),('finance'),('tele calling');
insert into employees(employee_name,gender,age,hire_date,designation,salary,department_id,location_id)
values('backia','female',30,'2024-05-06','data analyst','50000',1,1),('theerthana','female',20,'2025-06-18','hr','80000',2,2),
('aditya','male',25,'2020-08-11','manager','90000',3,3),('karthik','male',35,'2020-04-08','sales manager','50000',4,4);
select * from employees;





 