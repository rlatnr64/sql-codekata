-- 고양이와 개는 몇 마리 있을까
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59040
-- 작성자: 김수인
-- 작성일: 2026. 01. 26. 23:32:17

SELECT
    ANIMAL_TYPE,
    COUNT(ANIMAL_TYPE) AS count
FROM ANIMAL_INS
GROUP BY ANIMAL_TYPE
ORDER BY ANIMAL_TYPE ASC;

