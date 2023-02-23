select sub1.hacker_id, sub1.name

from

(select s.submission_id, s.score, c.difficulty_level, d.score as "tot_score", h.name, h.hacker_id
 from Submissions s join 
Challenges c on s.challenge_id=c.challenge_id
join Difficulty d on c.difficulty_level=d.difficulty_level
join Hackers h on s.hacker_id=h.hacker_id
where d.score=s.score) as sub1
group by sub1.hacker_id, sub1.name
having count(sub1.hacker_id)>1
order by count(sub1.hacker_id) desc, sub1.hacker_id asc ;