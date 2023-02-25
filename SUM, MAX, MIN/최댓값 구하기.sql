-- 코드를 입력하세요
SELECT DATETIME as 시간
FROM ANIMAL_INS
where DATETIME = (select max(datetime) from ANIMAL_INS)