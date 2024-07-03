--#1. Introduction
------------------

--SQL is a language which is used to interact with Relational Database Management System (RDBMS).

--RDBMS is just a software application which we can use to create and manage different databases.

--#2. What is a Database (DB)?
-----------------------------

--Any collection of related information. e.g.:
--    Phonebook
--    Shopping List
--    Todo List
--    Your 5 best friends
--    Facebook's User Base

-- Databases can be stored in different ways. e.g.:
--     On paper
--     In your mind
--     On a computer (Most common use cases)
--     This powerpoint
--     Comments Section

-- DB is a collection of related information that can be stored in different ways. 

-- Computer + Databases = <3

-- Amazon.com (DB)
--     Keeps track of Products, Reviews, Purchase Orders, Credit Cards, Users, Media, etc
	
-- 	Trillions of pieces of information need to be stored and readily available
	
-- 	Information is extremely valuable and critical to Amazon.com's functioning 
	
-- 	Security is essential, Amazon stores peoples personal information 
-- 	    Credit card #, SSN, Address, phone
-- 	Information is stored on a computer
	
-- vs

-- Shopping List (DB)
-- 	Keeps track of consumer products that need to be purchased
	
-- 	10-20 pieces of information need to be stored and  readily available
	
-- 	Information is for convenience sake only and not necessary for shopping
	
-- 	Security is not important
	
-- 	Information is stored on a piece of paper, even just in someone's memory
	
-- P.S. Computers are great at keeping track of large amounts of information.



-- Database Management Systems (DBMS)
    
-- Defination: A special software program that helps users create and maintain a database.

-- 	Makes it easy to manage large amounts of information 

-- 	Handles Security

-- 	Backups

-- 	Importing/ Exporting data

-- 	Concurrency

-- 	Interacts with software applications
		
-- 		Programming Languages
			
			
-- Amazon.com Database Diagram

-- ... Picture ... 

-- Amazon.com will interact with the DBMS in order to create read update and delete information. (CRUD - later)

	    
-- Amazon is not doing CRUD by their own. Its asking the DBMS to do it for them. 


-- CRUD:
-- 	C = Create, Create information in the database
	
-- 	R = Read / Retrieve, Reading information from the database
	
-- 	U = Update, Updating the existing information
	
-- 	D = Delete, deleting information that is already in there
	

-- 4 main operations we are going to be do with Database. 


-- Two types of Databases:

-- 1. Relational Databases (SQL)
	
-- 	Organize data into one or more tables
		
-- 		-> Each table has columns and rows
		
-- 		-> A unique key identifies each row


-- 2. Non-Relational (noSQL / not just SQL)
	
-- 	Organize data is anything but a traditional table
	
-- 		-> Key-value stores
		
-- 		-> Documents (JSON, XML, etc)
		
-- 		-> Graphs
		
-- 		-> Flexible Tables


-- Relational Databases (SQL) examples:

-- 	Student Table
	
-- 		columns: *ID, Name, Major
	
-- 	Users Table
		
-- 		columns: *Username, Password, Email

-- To create a Relational Database we need RDBMS. RDBMS help users create and maintain a relational database. Examples of RDBMS: mySQL, Oracle, postgreSQL, mariaDB, etc.

-- RDBMS uses Structured Query Language (SQL)
	
-- 	SQL is a standardized language for interacting with RDBMS
	
-- 	Uses to perform CRUD operations, as well as other administrative tasks (user management, security, backup, etc).
	
-- 	Used to define tables and structures
	
-- 	SQL code used on one RDBMS is not always portable to another without modification 
	

-- Non-Relational Databases (noSQL / not just SQL)

-- 	stores data in anything but a static table. Examples: document, graph, key-value hash, ...

-- We can have Non-Relational Database Management Systems (NDBMS) which helps users to create and maintain a non-relational database. 

-- Examples: mongoDB, dynamoDB, apache cassandra, firebase, etc.

-- There isn't any standard language for interacting with the non-relational database. So, NRDBMS will implement its own language to perform the CRUD and  administrative operations on the database. 


-- Database Queries: 
	
-- 	Queries are requests made to the database management system for specific information
	
-- 	As the database's structure become more and more complex, it becomes more difficult to get the specific pieces of information we want.
	
-- 	A google search is a query 
	
-- Wrap-up:

-- 	DB is any collection of related information
	
-- 	Computers are great for storing databases
	
-- 	Database Management Systems (DBMS) make it easy to create, maintain and secure a database
	
-- 	DBMS allow you to perform the CRUD operations and other administrative tasks
	
-- 	Two types of databases: Relational & Non-Relational
	
-- 	Relational databases use SQL and store data in tables with rows and columns
	
-- 	Non-Relational data store data using other data structures

-- #3. Tables & Keys
-- -------------------

-- Student Table

-- 	student_id (PK),
-- 	name,
-- 	major
	

-- All tables in RDBMS have columns. 
	
-- 	columns will define a single attribute
	
-- 	row is an individual entry
	

-- Primary Key (PK) is basically an attribute which uniquely defines the row in the database. 

-- User Table 
	
-- 	email (PK),
-- 	password,
-- 	date_created
-- 	type
	
-- Employee Table
	
-- 	emp_id (PK / SK), random number, surrogate key, this key has no mapping in the real world
	
-- 	or emp_ssn (PK / NK), SSN = Social Security Number, Natural key, has a mapping or real purpose in the real world. 
	
-- 	first_name
-- 	last_name
-- 	birth_date
-- 	sex
-- 	salary

-- Foreign Key: An attribute we can store on a database table that will link us to another database table. 

-- Employee Table

-- 	emp_id (PK)
-- 	first_name
-- 	last_name
-- 	birth_date
-- 	sex
-- 	salary
-- 	branch_id (FK), Foreign key, primary key of a different table 
-- 	super_id (FK), Supervisor ID, Who is the supervisor of a particular employee

-- Employee belongs to a different branches. Two or more employee can be from a same branch. 

-- Branch Table

-- 	branch_id (PK)
-- 	branch_name 
-- 	mgr_id (FK), manager id, Branch + Employee Relation
	
-- FK is just a way we can define relationship between two tables
	
	
-- Branch Supplier Table
	
-- 	branch_id (PK)
-- 	supplier_name (PK)
-- 	supply_type

-- When primary key consists of two or more columns then it is called composite key. When one column is not enough to uniquely identify rows only then we need composite key. 

-- Works_With: (How much papers an employee sales to a specific client)

-- 	emp_id (FK)
-- 	client_id (FK), both of these FK together make the PK for this table
-- 	total_sales
	
-- Client

-- 	client_id (PK)
-- 	client_name
-- 	branch_id

-- #4. SQL Basics

-- Standard Query Language (SQL)

-- SQL is a language used for interacting with RDBMS.

-- You can use SQL to get the RDBMS to do things for you:

-- 	Create, retrieve, update, delete data
	
-- 	Create & manage database tables
	
-- 	Design & create database tasks (security, 
-- 	user management, import/ export, etc)
	
-- RDBMS speaks Structured Query Language.


-- SQL implementations vary between systems
	
-- 	Not all RDBMS follow the SQL standard to a 'T'
	
-- 	The concepts are the same but the implementation may vary
	

-- SQL is actually a hybrid language, it's basically 4 types of languages in one

-- 	DQL (Data Query Language)
	
-- 	DDL (Data Defination Language)
	
-- 	DCL (Data Control Language)
	
-- 	DML (Data Manipulation Language)
	
-- Queries

-- 	A query is a set of instructions given to the RDBMS (written in SQL) that tell the RDBMS what information you want it to retrieve for you
	
-- 		TONS of data in a DB
		
-- 		Often hidden in a complex schema
		
-- 		Goal is to get the data you need
		
-- 	e.g.:
	
-- 		SELECT employee.name, employee.age
-- 		FROM employee
-- 		WHERE employee.salary > 30000

-- #5. MySQL Windows Installation
 
-- ... 
-- Used PopSQL as interface to code. Very beautiful interface to code. 
-- ... 
 
-- #6. Creating Tables
-- -----------------------
 
-- Basic data types we will be using
	
	-- INT - Whole Numbers
	
	-- DECIMAL (M, N) - Decimal Numbers, M = total numbers of digits, N = numbers of digits you want to store after decimal point
	
	-- VARCHAR (x) - String of text of length x
	
	-- BLOB - Binary Large Object, Stores large binary data, images, files
	
	-- DATE - 'YYYY-MM-DD'
	
	-- TIMESTAMP - 'YYYY-MM-DD HH:MM:SS' Used for recording
	
-- // In order to create a table
create table student (
	student_id int primary key,
	name varchar(20), -- 20 characters are allocated
	major varchar(20), 
);


-- or mentioning primary key later


create table student (
	student_id int, 
	name varchar(20), 
	major varchar(20),
	primary key (student_id)	
);

-- // describes the table
-- // shows columns, their data types, other info...
-- describe student;



-- // Delete the table
drop table student;


-- // Modify the table
-- // add an extra column in the table

alter table student 
add gpa decimal(3, 2); 


-- // drop a specific column
alter table student 
drop column gpa;

-- #7. Inserting Data
-----------------------


-- // inserting data into the table
insert into student values (1, 'Jack', 'Biology');


-- // To see the table
select * from student;


-- insert into student values (2, 'Kate', 'Sociology');



-- // If we don't know data for a particular column then
-- // Have no major
-- // Inside the parenthesis mention the data you have

insert into student(student_id, name) values (3, 'Claire');

-- // Inside the major field it will show null

-- #8. Constraints
-------------------


-- NOT NULL

-- // a particular column of the table can not be null

create table student (
	student_id int, 
	name varchar(20) not null, 
	major varchar(20),
	primary key (student_id)	
);


-- UNIQUE

-- // the data in that field must be unique for each data

create table student (
	student_id int, 
	name varchar(20) not null, 
	major varchar(20) unique,
	primary key (student_id)	
);

-- DEFAULT
-- // If nothing inputted then this field will be the default value

create table student (
	student_id int, 
	name varchar(20), 
	major varchar(20) default 'undecided',
	primary key (student_id)	
);

-- AUTO_INCREMENT
-- // data inputted in this field will automatically incremented

-- #9. Update & Delete
--------------------

update student
set major = 'Bio'
where major = 'Biology';


update student
set major = "CS"
where major = "Computer Science";


update student 
set major = "Che"
where major = "Chemistry";

update student 
set major = "Socio"
where major = "Sociology";


-- // Other comparison operations
-- 	equals: =
-- 	*not equals: <>
-- 	greater than: >
-- 	less than: <
-- 	greater than or equal: >=
-- 	less than or equal: <= 
	

update student 
set major = "CS"
where student_id = 4;

select * from student;


update student
set major = "BioChemistry"
where major = "Bio" or major = "Che";

update student
set name = "Tom", major = "undecided"
where student_id = 1;


-- // Set undecided major for all
update student
set major = "undecided";


-- // delete a specific row
delete from student
where stdent_id = 5;

-- // delete all rows inside the table, table will exist
delete from student;


delete from student
where name = "Tom" and major = "undecided";

select * from student;

-- Temp Save:=================================

create table student (
    student_id int auto_increment,
    name varchar(20),
    major varchar(20),

    primary key(student_id)
);

describe student;
-- A 
drop table student;

alter table student
add gpa decimal(3, 2);

alter table student 
drop column gpa;

select * from student;

insert into student(name, major) values ('Jack', 'Biology');
insert into student(name, major) values ('Kate', 'Sociology');
insert into student(name, major) values ('Claire', 'Chemistry');
insert into student(name, major) values ('Jack', 'Biology');
insert into student(name, major) values ('Mike', 'Computer Science');

update student
set major = 'Bio'
where major = 'Biology';

update student
set major = "CS"
where major = "Computer Science";

update student 
set major = "Che"
where major = "Chemistry";

update student 
set major = "Socio"
where major = "Sociology";

update student 
set major = "CS"
where student_id = 4;

select * from student;

update student
set major = "BioChemistry"
where major = "Bio" or major = "Che";

update student
set name = "Tom", major = "undecided"
where student_id = 1;

update student
set major = "undecided";

delete from student
where student_id = 5;

delete from student
where name = "Tom" and major = "undecided";

select * from student;

delete from student;


select * from student;

-- Temp Save:===========================================

-- #10. Basic Queries
-----------------------------

select *
from student

-- // * means all information/ every column
-- // instead of that we can specify a particular column

-- // select all the names from student table

select name 
from student;

-- // select all the names and majors from student table
select name, major
from student;

-- // We can prepend this for better understanding. Will help when we will be working on big schema

select student.name, student.major
from student;

-- // We can order the information 
-- // will give by alphabetical order based on names 
-- // by default this will be in ascending order (asc) 
-- // but you can make them descending order (desc) 

select student.name, student.major
from student
order by student.name;

select student.name, student.major
from student
order by name asc; // by default

-- // will show in descending order based on names
select student.name, student.major
from student
order by student.name desc;

select student.name, student.major
from student
order by student_id desc; 

-- // Order them by major first, then if any of them have same major it will order them by student_id

select * 
from student
order by major, student_id;

select * 
from student
order by major, student_id desc;

-- // Limit the amount of result we are getting
-- // will get 2 number of rows

select * 
from student 
order by student_id desc
limit 2;

-- // We can use where in select also

select * 
from student
where major = "Biology";

-- // Returning specific columns
select name, major 
from student
where major = "Chemistry";

select name, major 
from student
where major = "Chemistry" or major = "Biology";

-- Comment in sql: --
-- <, >, <=, >=, =, <>, and, or

select name, major 
from student
where major <> "Chemistry";

select name, major 
from student
where student_id < 3;

-- // student id less than or equal to 3 and name not equal to "Jack"

select *
from student
where student_id <= 3 and name <> "Jack";

-- // 'in' keyword

Select all students where name is the following:
Claire, Kate, Mike and student_id > 2

select * 
from student
where name in ('Claire', 'Kate', 'Mike');


select * 
from student
where major in ('Biology', 'Chemistry') and student_id > 2;

-- // Till now we have only worked on 1 table, but there are more complex schemas which works on multiple tables

-- #11. Company Database Intro
-------------------------------

-- Till now you have pretty good fundamental knowledge of SQL.

-- Employee Table
	
-- 	emp_id (PK),
-- 	first_name,
-- 	last_name,
-- 	birth_date,
-- 	sex,
-- 	salary,
-- 	super_id (FK), -- supervisor id
-- 	branch_id (FK)
	

-- #12. Creating Company Database
----------------------------------

-- // Employee Table

create table employee (
    emp_id int primary key, -- employee id 
    first_name varchar(40),
    last_name varchar(40),
    birth_date date,
    sex varchar(1),
    salary int,
    super_id int,
    branch_id int
);

-- // we can't make super_id and branch_id as foreign key just yet because the employee table and branch table technically just exist yet. 

create table branch (
    branch_id int primary key,
    branch_name varchar(40),
    mgr_id int, -- points to the employee table
    mgr_start_date date,

    -- pointing towards emp_id of employee table
    -- "on delete set null" ?? Later 
	--  or on delete cascase
    -- whenever we are going to create foreign key we will put on delete set null
    foreign key(mgr_id) references employee(emp_id) on delete set null
);

describe branch



-- // Now, we will make branch_id and super_id as foreign keys which was pending.

-- // branch_id points to brranch_id of branch table
-- // super_id points to emp_id of employee table


alter table employee
add foreign key (branch_id)
references branch (branch_id)
on delete set null;

describe employee;

alter table employee
add foreign key (super_id)
references employee (emp_id)
on delete set null;
-- 
-- // Client Table

create table client (
    client_id int primary key,
    client_name varchar(100),
    branch_id int,

    foreign key(branch_id) 
    references branch (branch_id)
    on delete set null
);

-- // Works_With Table

-- Works_With table
-- it has composite primary key
-- both of them are also foreign key
create table works_with (
    emp_id int,
    client_id int, 
    total_sales int,

    primary key (emp_id, client_id),
    
    foreign key (emp_id)  
    references employee (emp_id) 
    on delete cascade,

    foreign key (client_id) 
    references client (client_id)
    on delete cascade 
);


describe works_with;



-- Branch Supplier Table

create table branch_supplier (
    branch_id int,
    supplier_name varchar(40),
    supply_type varchar(40),

    primary key (branch_id, supplier_name),
    
    foreign key (branch_id)
    references branch(branch_id)
    on delete cascade
);

describe branch_supplier;


select *
from branch_supplier;



-- Insering into client table

insert into client VALUES(400, 'Dunmore Highschool', 2);
insert into client VALUES(401, 'Lackawana Country', 2);
insert into client VALUES(402, 'FedEx', 3);
insert into client VALUES(403, 'John Daly Law, LLC', 3);
insert into client VALUES(404, 'Scranton Whitepages', 2);
insert into client VALUES(405, 'Times Newspaper', 3);
insert into client VALUES(406, 'FedEx', 2);

select * 
from client;

insert into works_with VALUES(105, 400, 55000);
insert into works_with VALUES(102, 401, 267000);
insert into works_with VALUES(108, 402, 22500);
insert into works_with VALUES(107, 403, 5000);
insert into works_with VALUES(108, 403, 12000);
insert into works_with VALUES(105, 404, 33000);
insert into works_with VALUES(107, 405, 26000);
insert into works_with VALUES(102, 406, 15000);
insert into works_with VALUES(105, 406, 130000);



select * from employee;
select * from branch;
select * from client;
select * from works_with;
select * from branch_supplier;

-- #13. More Basic Queries
------------------------------------------



-- Find all employees
select * 
from employee;


-- Find all clients
select * 
from client;

-- Find all employees order by salary 
select *
from employee
order by salary;

-- Highest to lowest salary
select *
from employee
order by salary desc;


-- Find all employees ordered by sex then name
select * 
from employee
order by sex, first_name, last_name;


-- Find the first 5 employees in the table
select * 
from employee
limit 5;


-- Find the first and last names of all employees
select first_name, last_name
from employee;


-- Find the forename and surname of all the employees
select first_name as forename, last_name as surname
from employee;

-- with 'as' it will show the changed name that is mentioned


-- Find out all the different genders
-- shows the catagories in sex column 
select distinct sex
from employee;


-- will show all the different branch_id that is stored in employee
select distinct branch_id
from employee;

-- #14. Functions
--------------------------------------

-- SQL Functions
-- prompts

select * 
from employee;

-- Find the number of employees

-- counts how many employee id's are
-- there in this column and return this number

select count(emp_id)
from employee;

-- how many employees have supervisor
select count(super_id)
from employee;

-- find the number of female employees born after 1970
select count(emp_id)
from employee
where sex = 'F' and birth_date >= '1971-01-01'; -- 1970, Jan 01

-- find the average of all employee salary 
select avg(salary)
from employee;

-- avg from all the employee who are male
select avg(salary)
from employee
where sex = 'M';

-- find the sum of all employee's salaries
select sum(salary)
from employee;


-- find how many males and females there are

-- how many employee are there who have entry in the sex field
-- 9
select count(sex)
from employee;


-- shows count of sex for each gender
-- group by will group them group wise
-- This is called aggregation 

select count(sex), sex 
from employee
group by sex;



-- find the total sales of each salesman

select sum(total_sales), emp_id 
from works_with
group by emp_id;



-- find the total sales each client spends 

select sum(total_sales), client_id 
from works_with
group by client_id;

-- #15. Wildcards
---------------------------------


-- wildcards and like keywords  
-- % = any # characters, _ = one character
-- find any client's who are an LLC
-- like is a special sql keyword which we will use with wildcards
select *
from client
where client_name like '%LLC';

select client_name
from client
where client_name like '%LLC';

-- %LLC: any characters before LLC
-- find any branch suppliers who are in the label business
select * 
from branch_supplier
where supplier_name like '%Label%';

-- find any employee born in october
select first_name, last_name
from employee
where birth_date like '____-10-__';

-- '____-10-__': any 4 characters + -10- + any 2 characters
-- find any client who are schools

select * 
from client
where client_name like '%school%';

-- #16. Union
--------------------------------------


-- find a list of employee and branch names
select first_name
from employee
union 
select branch_name
from branch;

-- how can we combine these together with one single statement
-- union here will return first_name and branch_name in a single column
-- rules: you have to have a same number of columns in each select statement 
-- rules: must be same data type

select first_name as company_names
from employee
union 
select branch_name
from branch
union 
select client_name
from client;

-- find a list of all clients &  branch suppliers names

select client.client_name, client.branch_id
from client
union
select branch_supplier.supplier_name, branch_supplier.branch_id
from branch_supplier;

-- find a list of all money spent or earned by the company

select salary as total_spent_and_total_earned
from employee
union
select total_sales
from works_with;

select sum(salary) as total_spent_and_total_earned
from employee
union
select sum(total_sales)
from works_with;


-- #17. Joins
----------------------------------------

-- join is used to combine rows from two or more tables based on a related column between them

-- doesn't have mgr_id, mgr_start_date
insert into branch values(4, 'Buffalo', null, null);

select * 
from branch;

-- find all branches and the names of their managers 
select employee.emp_id, employee.first_name, branch.branch_name 
from employee
join branch -- join employee and branch table together on a specific column  
on employee.emp_id = branch.mgr_id; -- 'emp_id' the column they will be joining on 

-- by joining we can select column from multiple table
-- those name will come up who has branches 
-- not all employee have their id in the mgr_id column, only who have their id there will be joined together 

select employee.emp_id, employee.first_name, branch.branch_name 
from employee
left join branch -- we will get all the information of the left table
on employee.emp_id = branch.mgr_id;

-- with the left join we include all of the rows from the left table 

select employee.emp_id, employee.first_name, branch.branch_name 
from employee
right join branch -- we will get all the information of the right table
on employee.emp_id = branch.mgr_id;

-- another join: full outer join: basically a left and right join combined 
-- 
-- #18. Nested Queries
----------------------------------------

-- is basically a query where we are going to be using multiple select statements in order to get the information 


-- find names of all employees who have sold over 30000 to a single client 

select employee.first_name, employee.last_name 
from employee 
where employee.emp_id in (
    select works_with.emp_id 
    from works_with 
    where works_with.total_sales > 30000
);

select distinct works_with.emp_id 
from works_with 
where works_with.total_sales > 30000;

-- find all clients who are handled by the branch that michael scott manages. assume you know michael's id = 102

select client.client_name
from client 
where client.branch_id in (
    select branch.branch_id 
    from branch
    where branch.mgr_id = 102
);

-- OR  

select client.client_name
from client 
where client.branch_id = (
    select branch.branch_id 
    from branch
    where branch.mgr_id = 102 -- this might return multiple values
    limit 1 -- so must return 1
);

-- sql will execute the inner commands first then the outer commands 
-- why equal ? why not in ?
-- nested query can be more complex, only need practice 


-- #19. On Delete
----------------------------------------

-- deleting entries in the database when they have foreign keys associated to them 

-- Imagine I deleted M.Scott and his branch id is 2, Scranton Branch, but what happens to the mgr_id?!, 102 shouldn't mean anything right?! 

-- Two situations can be done here
-- on delete set null
-- on delete cascade

-- on delete set null: if we delete one of the employees then on the other tables that value will be set to null 

-- on delete cascade: if we delete one of the employees then on the other tables those row related to that employee will get completely deleted. 

delete from employee
where emp_id = 102; 

select * 
from employee; -- super id 102 will also be null 

select * 
from branch; -- mgr_id set to null  

delete from branch
where branch_id = 2;

-- here primary key can't be null as branch_id is a primary key 
select * from branch_supplier; -- no branch_id = 2 left here 

-- #20. Triggers (Need more work to be done)
---------------------------------------

-- trigger is basically a block of sql code which we can write which will define a certain action that should happen when a certain operation gets performed on a database

-- we could write a trigger which would basically tell mySQL to do something when like a entry was added into a particular table in the database or when something is deleted from the database 

create table trigger_test (
    message varchar(100)
);

-- we have to define the triggers on the cmd

-- to change the SQL delimiter 

-- ON CMD
create database giraffe
use giraffe

-- delimiter is define on CMD

SELECT DATABASE(); -- to know the database I am in 
 
use girrafe


-- trigger 01
-- on cmd 

delimiter $$
create 
    trigger my_trigger before insert 
    on employee
    for each row begin 
        insert into trigger_test values('added new employee');
    end$$
delimiter;


delimiter $$
create -- created a trigger named my_trigger
    trigger my_trigger before insert -- before inserting in employee
    on employee
    for each row begin 
        insert into trigger_test values('added new employee'); -- this will be performed before inserting something in the table 
    end$$
delimiter; -- finally change the delimiter back to semicolon

-- i am defining a trigger named my_trigger and i am saying that before something gets inserted on the employee table add the value in the 

-- this will automate things

-- delimiter: special keyword in mysql. because I am using ; to do the function, so we are using $$ instead of ;




insert into employee values(109, 'Oscar', 'Martinez', '1968-02-19', 'M', 69000, 106, 3);

select * from trigger_test;


-- trigger 02
delimiter $$
create 
    trigger my_trigger_2 before insert 
    on employee
    for each row begin 
        insert into trigger_test values(new.first_name); -- access a particular attribute, will give me the first_name of the employee that is being inserted 
    end$$
delimiter;


insert into employee values(110, 'Kevin', 'Malone', '1978-02-19', 'M', 69000, 106, 3);

select * from trigger_test;

-- trigger 03
delimiter $$
create 
    trigger my_trigger_3 before insert -- we can also create trigger for update, delete, ... 
    on employee
    for each row begin 
        if new.sex = 'M' then 
            insert into trigger_test values('added male employee');
        elseif new.sex = 'F' then 
            insert into trigger_test values('added female');
        else 
            insert into trigger_test values('added other employee');
        end if;
    end$$
delimiter;


insert into employee values(111, 'Pam', 'Beesly', '1998-02-19', 'F', 69000, 106, 3);


select * from trigger_test;


-- #21. ER Diagram Intro
----------------------------------------


-- ER: Entity Relationship 
-- Entity: An object we want to model & store information about 

-- when you are designing a database one of the most important things is designing a database schema 

-- database schema is basically just all the different tables and the different attributes that are gonna be on this table 

-- Er diagram can act as a middleman between database or storage requirements and the actual database schema 

-- ... 
-- ... 
-- video watching
-- ...
--
-- #22. Designing an ER Diagram
-----------------------------------------

-- Learning how to make an ER diagram 

-- Need multiple watch 


-- #23. Converting ER Diagrams to Schemas

--------------------------------------

-- Later 