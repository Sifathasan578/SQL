select distinct city
from station
where right(city, 1) in ('a', 'e', 'i', 'o', 'u'); 
-- right(city, 1): extracts the last character from city 
