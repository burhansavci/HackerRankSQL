SELECT h.hacker_id,h.name,t1.challenges_created
FROM (SELECT c.challenges_created,COUNT(c.challenges_created) total
      FROM (SELECT c.hacker_id,COUNT(c.challenge_id) challenges_created            
            FROM Challenges c 
            GROUP BY c.hacker_id) c, Hackers h
      WHERE h.hacker_id=c.hacker_id
      GROUP BY c.challenges_created) t1,
      (SELECT c.hacker_id,COUNT(c.challenge_id) challenges_created            
       FROM Challenges c 
      GROUP BY c.hacker_id) t2,Hackers h
WHERE t1.challenges_created=t2.challenges_created AND t2.hacker_id=h.hacker_id
GROUP BY h.hacker_id,h.name,t1.challenges_created,total
HAVING total=1 OR t1.challenges_created=(SELECT TOP 1 COUNT(c.challenge_id) challenges_created     
                                         FROM Challenges c 
                                         GROUP BY c.hacker_id
                                         ORDER BY challenges_created DESC)
ORDER BY t1.challenges_created DESC,h.hacker_id
