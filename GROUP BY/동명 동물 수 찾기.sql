-- 코드를 입력하세요
SELECT NAME, count(ANIMAL_ID) as "COUNT"
FROM ANIMAL_INS
GROUP BY NAME
HAVING count(ANIMAL_ID) > 1 and NAME is not null
ORDER BY NAME