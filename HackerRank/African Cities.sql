select city.name
from city
where city.countrycode in (
    select country.code
    from country
    where country.continent = 'Africa'
);
