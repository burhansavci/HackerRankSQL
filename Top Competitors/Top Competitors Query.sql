SELECT s.hacker_id,h.name FROM hackers h,difficulty d,submissions s,challenges c
WHERE s.hacker_id=h.hacker_id
AND s.challenge_id=c.challenge_id
AND c.difficulty_level=d.difficulty_level
AND s.score=d.score
GROUP BY s.hacker_id,h.name
HAVING COUNT(s.hacker_id)>1
ORDER BY COUNT(s.hacker_id) DESC,s.hacker_id