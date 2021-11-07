select ceil(avg(Salary)-avg(replace(Salary,"0",""))) as actual
from EMPLOYEES;
