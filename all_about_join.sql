-- All About JOIN

create table transactions(
    transaction_id int,
    amount decimal(10, 2),
    customer_id int,

    foreign key(customer_id) 
    references customers(customer_id) 
    on delete set null
);

insert into transactions values(1000, 4.99, 3);
insert into transactions values(1001, 2.89, 2);
insert into transactions values(1002, 3.38, 3);
insert into transactions values(1003, 4.99, 1);
insert into transactions values(1004, 1.00, null);

insert into transactions(amount, customer_id) values(1.00, null);

create table customers(
    customer_id int primary key,
    first_name varchar(40),
    last_name varchar(40)
);

insert into customers values(1, 'Fred', 'Fist');
insert into customers values(2, 'Larry', 'Lobster');
insert into customers values(3, 'Bubble', 'Bass');
insert into customers values(4, 'Poppy', 'Puff');

select * from transactions;
select * from customers;

-- INNER JOIN 
select *
from transactions -- table on the left 
inner join customers -- table on the right 
on transactions.customer_id = customers.customer_id; -- we will join these two tables together by the foreign key from transactions 

-- we have created an inner join from these two tables based on what they have common 

-- By using join we can be selective about what we want to show 

select transaction_id, amount, first_name, last_name
from transactions 
inner join customers 
on transactions.customer_id = customers.customer_id;

-- join together any matching rows by a link 
-- LEFT JOIN: left all, right matchng
-- we are going to display everything from the table on the left and for right table we will only show matching row 

select *
from transactions 
left join customers
on transactions.customer_id = customers.customer_id;


-- RIGHT JOIN: Show everythin to right but matching for the left 
select *
from transactions
right join customers
on transactions.customer_id = customers.customer_id;
