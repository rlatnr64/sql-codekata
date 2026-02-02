-- 오랜 기간 보호한 동물(2)
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59411
-- 작성자: 김수인
-- 작성일: 2026. 02. 02. 20:12:03

SELECT
    AI.ANIMAL_ID,
    AI.NAME
FROM ANIMAL_INS AS AI
JOIN ANIMAL_OUTS AS AO
    ON AI.ANIMAL_ID = AO.ANIMAL_ID
WHERE AO.DATETIME - AI.DATETIME
GROUP BY AI.ANIMAL_ID
ORDER BY AO.DATETIME - AI.DATETIME DESC
LIMIT 2;