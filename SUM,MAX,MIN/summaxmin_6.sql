# Count 함수가 null값 제외한 결과를 출력함
# WHERE절을 통한 NAME IS NOT NULL 없어도 됨

SELECT COUNT(DISTINCT NAME) AS count
FROM ANIMAL_INS; 
