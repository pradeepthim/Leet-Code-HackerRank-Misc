
select 
case when b.Grade<8 THEN NULL ELSE a.Name end as Name,
b.Grade, a.Marks from Students as a
inner join Grades as b on
a.Marks between b.Min_Mark and b.Max_Mark
order by Grade desc, Name ;