-- 아픈 동물 찾기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59036
-- 작성자: 김수인
-- 작성일: 2026. 01. 20. 11:21:26

SELECT
    ANIMAL_ID,
    NAME
FROM ANIMAL_INS
WHERE INTAKE_CONDITION = 'Sick'
ORDER BY ANIMAL_ID;