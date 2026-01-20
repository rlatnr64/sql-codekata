-- NULL 처리하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59410
-- 작성자: 김수인
-- 작성일: 2026. 01. 20. 11:24:33

SELECT 
    ANIMAL_TYPE, 
    IFNULL(NAME, "No name") AS NAME,
    SEX_UPON_INTAKE 
FROM ANIMAL_INS 
ORDER BY ANIMAL_ID ASC;