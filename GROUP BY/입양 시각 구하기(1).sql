-- 코드를 입력하세요
SELECT HOUR(DATETIME) as "HOUR", count(ANIMAL_ID) as "COUNT"
FROM ANIMAL_OUTS
GROUP BY HOUR(DATETIME)
HAVING HOUR>8 and HOUR< 20
ORDER BY HOUR