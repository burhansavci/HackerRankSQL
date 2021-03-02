SELECT Name
FROM Students S
         INNER JOIN Friends F ON F.ID = S.ID
         INNER JOIN Packages P1 ON P1.ID = S.ID
         INNER JOIN Packages P2 ON P2.ID = F.Friend_ID
WHERE P2.Salary > P1.Salary
ORDER BY P2.Salary