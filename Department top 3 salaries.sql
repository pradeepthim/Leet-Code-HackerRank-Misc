select sub.Department, sub.Employee, sub.Salary
from
(select e.id , e.name as Employee, e.salary as Salary, d.name as Department,
dense_rank() over (partition by e.departmentId order by e.salary desc) as test
from Employee as e
join Department as d on e.departmentId=d.id) as sub
where sub.test<4;