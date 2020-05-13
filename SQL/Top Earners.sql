select *
from
    (
     select months*salary,count(*)
     from Employee
     group by (months*salary)
     order by months*salary desc
    )
where rownum=1;

//  Oracle solution. Does not work in Mysql 
