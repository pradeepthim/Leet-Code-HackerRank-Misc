select *, 
case when people >=100 then 1 else 0 end as "flag"
 from Stadium;