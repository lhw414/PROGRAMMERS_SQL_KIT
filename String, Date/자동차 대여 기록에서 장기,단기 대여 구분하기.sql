-- 코드를 입력하세요
(SELECT HISTORY_ID,	CAR_ID,	DATE_FORMAT(START_DATE, "%Y-%m-%d") as START_DATE,	DATE_FORMAT(END_DATE, "%Y-%m-%d") as END_DATE,	"단기 대여" as RENT_TYPE
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE DATEDIFF(END_DATE, START_DATE) + 1 < 30 and MONTH(START_DATE) = 9 and YEAR(START_DATE)=2022
union
SELECT HISTORY_ID,	CAR_ID,	START_DATE,	END_DATE,	"장기 대여" as RENT_TYPE
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE DATEDIFF(END_DATE, START_DATE) + 1 >= 30 and MONTH(START_DATE) = 9 and YEAR(START_DATE)=2022)
ORDER BY HISTORY_ID DESC