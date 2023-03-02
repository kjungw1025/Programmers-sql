SELECT a.MEMBER_NAME, b.REVIEW_TEXT, DATE_FORMAT(b.REVIEW_DATE, '%Y-%m-%d') `REVIEW_DATE`
FROM MEMBER_PROFILE a
JOIN REST_REVIEW b
ON a.MEMBER_ID = b.MEMBER_ID
WHERE a.MEMBER_ID = (SELECT member_id
                     FROM REST_REVIEW
                     GROUP BY member_id
                     ORDER BY COUNT(*) DESC
                     LIMIT 1)
ORDER BY `REVIEW_DATE` ASC, b.REVIEW_TEXT ASC; 
