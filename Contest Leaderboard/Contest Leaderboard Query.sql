SELECT h.hacker_id,h.name,SUM(s.max_score)
FROM (SELECT m.max_score,s.hacker_id FROM
       (SELECT s.challenge_id,s.hacker_id,MAX(s.score) max_score 
        FROM Submissions s 
        GROUP BY s.hacker_id,s.challenge_id) m, Submissions s
      WHERE m.hacker_id=s.hacker_id AND m.challenge_id=s.challenge_id
      GROUP BY s.hacker_id,s.challenge_id,m.max_score) s ,Hackers h
WHERE h.hacker_id=s.hacker_id
GROUP BY h.hacker_id,h.name
HAVING SUM(s.max_score)>0
ORDER BY SUM(s.max_score) DESC, h.hacker_id ASC