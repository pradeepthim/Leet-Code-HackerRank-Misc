select s.name as Department, s.salary as Salary from
(
select * ,
rank() over (partition by e.departmentID order by e.salary desc) as 'rank'
from Employee e 
join Department d on e.departmentId = d.id
) as s
where s.rank=1