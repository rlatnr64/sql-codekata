-- 여러 기준으로 정렬하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59404
-- 작성자: 김수인
-- 작성일: 2026. 01. 20. 11:22:26

SELECT
    ANIMAL_ID,
    NAME,
    DATETIME
FROM ANIMAL_INS
ORDER BY NAME ASC, DATETIME DESC;