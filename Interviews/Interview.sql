SELECT Con.contest_id,
       hacker_id,
       name,
       SUM(sum_total_submissions),
       SUM(sum_total_accepted_submissions),
       SUM(sum_total_views),
       SUM(sum_total_unique_views)
FROM Contests AS Con
         INNER JOIN Colleges Col ON Con.contest_id = Col.contest_id
         INNER JOIN Challenges Cha ON Col.college_id = Cha.college_id
         LEFT JOIN (SELECT challenge_id,
                           SUM(total_submissions)          sum_total_submissions,
                           SUM(total_accepted_submissions) sum_total_accepted_submissions
                    FROM Submission_Stats
                    GROUP BY challenge_id) AS Sub ON Cha.challenge_id = Sub.challenge_id
         LEFT JOIN (SELECT challenge_id,
                           SUM(total_views)        sum_total_views,
                           SUM(total_unique_views) sum_total_unique_views
                    FROM View_Stats
                    GROUP BY challenge_id) AS Vie ON Cha.challenge_id = Vie.challenge_id
GROUP BY Con.contest_id, hacker_id, name
ORDER BY Con.contest_id