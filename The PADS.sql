select CONCAT(Name,'(',left(Occupation,1),')')
from OCCUPATIONS
order by name asc;


SELECT CONCAT ("There are a total of ",count(*)," ",lower(Occupation),"s.") 
FROM OCCUPATIONS 
GROUP BY Occupation
ORDER BY count(*),Occupation;
