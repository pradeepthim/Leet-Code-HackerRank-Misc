# Write MYSQL query statement below to select distinct salary as SecondHighestSalary from Employee order by salary desc limit 1 offset 1;

select salary from (select salary from Employee order by salary desc limit 2) as t
order by salary asc limit 1;