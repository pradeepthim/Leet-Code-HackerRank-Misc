select distinct(num) as "ConsecutiveNums"
from
(
select *, 
lead(num,1) over (order by id) as "lead1",
lead(num,2) over (order by id) as "lead2"
from Logs
) as sub
where 
sub.num=sub.lead1 and
sub.lead1=sub.lead2;