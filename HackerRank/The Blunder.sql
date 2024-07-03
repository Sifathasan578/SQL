select ceil(avg(salary) - avg(cast(replace(salary, '0', '') as decimal)))
from employees;

-- replace(): returns string
-- cast(value as data_type)
-- or 

select ceil(avg(salary) - avg(replace(salary, '0', '')))
from employees;
