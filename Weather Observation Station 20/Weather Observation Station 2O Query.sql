SELECT DISTINCT CONVERT(DECIMAL(10,4),PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY LAT_N) OVER ()) FROM STATION