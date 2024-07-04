create table sales(
    product_id int, -- can have multiples
    amount int
);

insert into sales values(1, 10);
insert into sales values(2, 5);
insert into sales values(3, 15);

insert into sales values(1, 30);
insert into sales values(2, 10);
insert into sales values(3, 20);

insert into sales values(1, 50);
insert into sales values(2, 15);
insert into sales values(3, 25);

drop table sales;

select * from sales;

-- you want to know the total sales amount for each product
-- 1: 10 + 30 + 50 = 90
-- 2: 5 + 10 + 15 = 30
-- 3: 15 + 20 + 25 = 60

select product_id, sum(amount)
from sales
group by product_id;

-- ***
-- You need to use 'group by' when you are using an aggregate function like sum with an non-aggregated column like 'product_id'
-- 'group by product_id'
-- here group by will group rows that have same values 
-- For example for 1 whereever there is 1 in the table the sum() function will work for those values and show 1, sum(all those values in row with 1) like that
