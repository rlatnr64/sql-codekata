-- 이름이 없는 동물의 아이디
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59039
-- 작성자: 김수인
-- 작성일: 2026. 01. 20. 11:26:58

SELECT
    ANIMAL_ID
FROM ANIMAL_INS
WHERE NAME IS NULL
ORDER BY ANIMAL_ID ASC;