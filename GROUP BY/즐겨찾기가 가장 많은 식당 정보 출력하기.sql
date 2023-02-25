-- 코드를 입력하세요
SELECT food_type, rest_id, rest_name, favorites 
from rest_info a 
where favorites = (select max(favorites) from rest_info b where a.food_type = b.food_type)
group by food_type
order by food_type desc