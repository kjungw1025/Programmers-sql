# 풀이 1
SELECT
    ITEM_ID,
    ITEM_NAME,
    RARITY
FROM ITEM_INFO
WHERE ITEM_ID NOT IN (
    SELECT IFNULL(PARENT_ITEM_ID, -1)
    FROM ITEM_TREE
)
ORDER BY ITEM_ID DESC;


# 풀이 2
SELECT 
    II.ITEM_ID, 
    II.ITEM_NAME, 
    II.RARITY
FROM ITEM_INFO II
LEFT JOIN ITEM_TREE IT 
ON II.ITEM_ID = IT.PARENT_ITEM_ID
WHERE IT.ITEM_ID IS NULL
ORDER BY II.ITEM_ID DESC;
