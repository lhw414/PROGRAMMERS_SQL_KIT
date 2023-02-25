-- 코드를 입력하세요
select      A.AUTHOR_ID, A.AUTHOR_NAME, B.CATEGORY, sum(B.PRICE * S.SALES) as TOTAL_SALES
from        AUTHOR A
inner join  BOOK B on A.AUTHOR_ID = B.AUTHOR_ID
inner join  BOOK_SALES S on B.BOOK_ID = S.BOOK_ID
where       year(S.SALES_DATE) = '2022' and month(S.SALES_DATE) = '1'
group by    A.AUTHOR_ID, A.AUTHOR_NAME, B.CATEGORY
order by    A.AUTHOR_ID asc, B.CATEGORY desc;