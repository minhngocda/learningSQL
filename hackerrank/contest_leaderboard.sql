select h.hacker_id, h.name, sum(score)
from hackers h
join
(select hacker_id,challenge_id, max(score) as score from submissions group by hacker_id, challenge_id) max_score
on h.hacker_id = max_score.hacker_id
group by h.hacker_id, h.name
having sum(score)>0
order by sum(score) desc, h.hacker_id;