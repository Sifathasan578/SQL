-- Topic: Aggregation

select salary * months, count(*)
from employee
group by salary * months
order by salary * months desc
limit 1;

-- Pending: 
SELECT 
    MAX(total_earnings) AS max_earnings, 
    COUNT(*) AS count_of_max_earners
FROM (
    SELECT salary * months AS total_earnings
    FROM employeee
) AS earnings
WHERE total_earnings = (
    SELECT MAX(salary * months) 
    FROM employeee
);
