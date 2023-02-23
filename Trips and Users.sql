with CTE1 as(
Select t1.request_at as "day1", 
count(t1.request_at) as "total_num"
 from Trips as t1
 group by t1.request_at),

CTE2 as(
Select t.request_at as "day", 
count(t.request_at) as "cancelled_num"
 from Trips as t1
 group by t.request_at where t.status!="completed")

 select * from CTE1 join CTE2 on
 CTE1.;