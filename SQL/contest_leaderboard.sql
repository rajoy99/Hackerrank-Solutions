select temp2.hacker_id,hackers.name,temp2.mak
from
(select t.hacker_id,sum(t.ma) as mak
from 
(select hacker_id,challenge_id,max(score) as ma from submissions group by hacker_id,challenge_id) as t 
group by t.hacker_id) as temp2 inner join hackers on hackers.hacker_id=temp2.hacker_id
where temp2.mak>0
order by temp2.mak desc, hacker_id;
