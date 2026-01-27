-- 입양 시각 구하기(1)
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59412
-- 작성자: 김수인
-- 작성일: 2026. 01. 27. 22:51:11

SELECT
    DATE_FORMAT(DATETIME, "%H") AS HOUR,
    COUNT(*) AS COUNT
FROM ANIMAL_OUTS
WHERE DATE_FORMAT(DATETIME, "%H") BETWEEN 9 AND 19
GROUP BY HOUR
ORDER BY HOUR;