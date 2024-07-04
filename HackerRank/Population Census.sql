select sum(city.population)
from city
where city.countrycode in (
    select country.code
    from country
    where country.continent = 'Asia'
);
