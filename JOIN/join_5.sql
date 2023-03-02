SELECT a.PRODUCT_ID, a.PRODUCT_NAME, SUM(a.PRICE * b.AMOUNT) `TOTAL_SALES`
FROM FOOD_PRODUCT a
JOIN FOOD_ORDER b
ON a.PRODUCT_ID = b.PRODUCT_ID
WHERE b.PRODUCE_DATE LIKE '2022-05%'
GROUP BY a.PRODUCT_ID
ORDER BY `TOTAL_SALES` DESC, a.PRODUCT_ID ASC; 
