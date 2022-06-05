#https://www.hackerrank.com/challenges/challenges/problem
WITH data AS 
(SELECT h.hacker_id as hacker_id, h.name as name, count(c.hacker_id) as total
FROM hackers h 
JOIN challenges c ON h.hacker_id = c.hacker_id
GROUP BY h.hacker_id, h.name)
SELECT * FROM data
WHERE total = (SELECT MAX(total) FROM data)
OR
total IN (SELECT total FROM data GROUP BY total HAVING count(total)=1)
ORDER BY total desc, hacker_id;