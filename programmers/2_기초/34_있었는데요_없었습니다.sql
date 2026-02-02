-- 있었는데요 없었습니다
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59043
-- 작성자: 김수인
-- 작성일: 2026. 02. 02. 19:53:40

SELECT
    AI.ANIMAL_ID,
    AI.NAME
FROM ANIMAL_INS AS AI
JOIN ANIMAL_OUTS AS AO
    ON AI.ANIMAL_ID = AO.ANIMAL_ID
WHERE AI.DATETIME > AO.DATETIME
GROUP BY AI.ANIMAL_ID
ORDER BY AI.DATETIME ASC;