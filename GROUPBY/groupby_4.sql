SELECT R.FOOD_TYPE, R.REST_ID, R.REST_NAME, R.FAVORITES
FROM REST_INFO R, (SELECT FOOD_TYPE, MAX(FAVORITES) AS MAXF
                   FROM REST_INFO
                   GROUP BY FOOD_TYPE) AS TEMP
WHERE R.FOOD_TYPE = TEMP.FOOD_TYPE AND R.FAVORITES = TEMP.MAXF
ORDER BY R.FOOD_TYPE DESC; 