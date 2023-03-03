SELECT YEAR(O.SALES_DATE) AS YEAR, 
        MONTH(O.SALES_DATE) AS MONTH, 
        COUNT(DISTINCT O.USER_ID) AS PUCHASED_USERS, 
        ROUND(COUNT(DISTINCT O.USER_ID) / (SELECT COUNT(*)
                                           FROM USER_INFO
                                           WHERE JOINED LIKE '2021%')
        , 1) AS PUCHASED_RATIO
FROM ONLINE_SALE O
JOIN USER_INFO U
ON U.USER_ID = O.USER_ID
WHERE YEAR(U.JOINED) = '2021'
GROUP BY YEAR(O.SALES_DATE), MONTH(O.SALES_DATE)
ORDER BY YEAR(O.SALES_DATE), MONTH(O.SALES_DATE); 
