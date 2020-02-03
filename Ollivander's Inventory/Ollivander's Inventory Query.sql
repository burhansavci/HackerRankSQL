SELECT W.id,MIN_COIN.age,MIN_COIN.coins_needed,MIN_COIN.power
FROM (SELECT W.power,WP.age,MIN(W.coins_needed) coins_needed 
      FROM Wands W,Wands_Property WP
      WHERE W.code=WP.code
      GROUP BY W.power,WP.age) MIN_COIN ,Wands W,Wands_Property WP
WHERE W.code= WP.code
AND W.coins_needed=MIN_COIN.coins_needed
AND WP.age=MIN_COIN.age
AND W.power=MIN_COIN.power
AND WP.is_evil=0
ORDER BY MIN_COIN.power DESC,MIN_COIN.age DESC
