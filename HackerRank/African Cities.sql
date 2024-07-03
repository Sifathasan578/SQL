-- Topic: Basic Join, Nested Queries 

select city.name
from city
where city.countrycode in (
    select country.code
    from country
    where country.continent = 'Africa'
);


-- Others: 

-- MySQL The first:

Select City.Name From City Inner Join Country 
On CountryCode = Code
Where Continent = 'Africa';

-- The second:

Select City.Name From City, Country
Where Code = CountryCode And Continent = 'Africa';

-- The third:

Select Name From City Where CountryCode In (
    Select Code From Country Where Continent = 'Africa'
);
