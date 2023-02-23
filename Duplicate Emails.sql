select sub.email from
(
select *, count(email) as count from Person
group by email) as sub
where sub.count>1;