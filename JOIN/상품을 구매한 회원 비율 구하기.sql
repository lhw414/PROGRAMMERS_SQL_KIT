select year(A.SALES_DATE), month(A.SALES_DATE), count(distinct A.USER_ID) as PUCHASED_USERS, round(count(distinct A.USER_ID) / C.users, 1) as PUCHASED_RATIO from (
    ONLINE_SALE A, (select count(*) as users from USER_INFO B where year(B.JOINED) = 2021) C
)
left join USER_INFO D on A.USER_ID = D.USER_ID
    where year(D.JOINED) = 2021
    group by year(A.SALES_DATE), month(A.SALES_DATE)
    order by year(A.SALES_DATE), month(A.SALES_DATE)