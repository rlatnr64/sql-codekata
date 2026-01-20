-- DATETIME에서 DATE로 형 변환
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59414
-- 작성자: 김수인
-- 작성일: 2026. 01. 20. 11:25:26

SELECT
    ANIMAL_ID,
    NAME,
    DATE_FORMAT(DATETIME, "%Y-%m-%d") as "날짜"
FROM ANIMAL_INS
ORDER BY ANIMAL_ID ASC;