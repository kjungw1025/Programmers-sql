SELECT ID, NAME, HOST_ID
FROM (
    SELECT *, COUNT(*) OVER (PARTITION BY HOST_ID) HOST_COUNT
    FROM PLACES
) P
WHERE HOST_COUNT >= 2
ORDER BY ID;

# SELECT ID, NAME, HOST_ID
# FROM PLACES
# WHERE HOST_ID IN (SELECT HOST_ID
#                   FROM PLACES
#                   GROUP BY HOST_ID
#                   HAVING COUNT(HOST_ID) >= 2)
# ORDER BY ID;

# PARTITION BY 공부 참고
# https://jie0025.tistory.com/298
# https://school.programmers.co.kr/questions/89159