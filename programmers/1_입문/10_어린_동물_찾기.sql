-- 어린 동물 찾기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59037
-- 작성자: 김수인
-- 작성일: 2026. 01. 20. 11:22:11

SELECT
    ANIMAL_ID,
    NAME
FROM ANIMAL_INS
WHERE INTAKE_CONDITION NOT LIKE "Aged"
ORDER BY ANIMAL_ID ASC;