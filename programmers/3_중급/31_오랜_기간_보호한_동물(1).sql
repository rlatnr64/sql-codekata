-- 오랜 기간 보호한 동물(1)
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59044
-- 작성자: 김수인
-- 작성일: 2026. 02. 06. 14:44:57

SELECT
    AI.NAME,
    AI.DATETIME
FROM ANIMAL_INS AS AI
LEFT JOIN ANIMAL_OUTS AS AO
    ON AI.ANIMAL_ID = AO.ANIMAL_ID
WHERE AO.DATETIME IS NULL
ORDER BY AI.DATETIME ASC
LIMIT 3;