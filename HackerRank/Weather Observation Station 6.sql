select distinct city
from station
where left(city, 1) in ('a', 'e', 'i', 'o', 'u'); 
-- left(city, 1): extracts the first character from city 
