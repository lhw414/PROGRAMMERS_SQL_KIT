WITH cnt_review AS (
 SELECT
  MEMBER_ID, COUNT(*) AS cnt
 FROM
  REST_REVIEW
 GROUP BY
  MEMBER_ID
)

SELECT
 member.MEMBER_NAME, review.REVIEW_TEXT, DATE_FORMAT(review.REVIEW_DATE, '%Y-%m-%d') AS REVIEW_DATE
FROM
 REST_REVIEW review
JOIN MEMBER_PROFILE member ON review.MEMBER_ID = member.MEMBER_ID
JOIN cnt_review ON review.MEMBER_ID = cnt_review.MEMBER_ID
WHERE
 cnt_review.cnt = (SELECT MAX(cnt) FROM cnt_review)
ORDER BY
 review.REVIEW_DATE, review.REVIEW_TEXT;