select round(LAT_N,4) from
(select *,
rank() over (order by LAT_N) as "rank"
from STATION ) as sub2
where sub2.rank=
(select case when
mod(count(*),2)=0 then round(count(*)/2) else
(count(*)+1)/2 end as "rank1" from STATION);