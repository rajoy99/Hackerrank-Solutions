select  CONTINENT, floor(avg(CITY.POPULATION))
from COUNTRY
inner join CITY
on CITY.COUNTRYCODE=COUNTRY.CODE
group by CONTINENT;
