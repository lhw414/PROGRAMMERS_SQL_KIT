-- 코드를 입력하세요
SELECT distinct(CH.CAR_ID)
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY CH left join CAR_RENTAL_COMPANY_CAR CC on CH.CAR_ID = CC.CAR_ID
WHERE CC.CAR_TYPE = "세단" and MONTH(START_DATE) = 10
ORDER BY CAR_ID desc