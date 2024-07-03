-- Aggregation 

select round(sum(lat_n), 2), round(sum(LONG_W), 2)
from station;

-- rounded to a scale of decimal places.
