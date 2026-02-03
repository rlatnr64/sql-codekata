-- 보호소에서 중성화한 동물
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59045
-- 작성자: 김수인
-- 작성일: 2026. 02. 03. 22:29:47

SELECT
    AI.ANIMAL_ID,
    AI.ANIMAL_TYPE,
    AI.NAME
FROM ANIMAL_INS AS AI
JOIN ANIMAL_OUTS AS AO
    ON AI.ANIMAL_ID = AO.ANIMAL_ID
WHERE AI.SEX_UPON_INTAKE IN ("Intact Male", "Intact Female")
AND AO.SEX_UPON_OUTCOME IN ("Neutered Male", "Spayed Female")
ORDER BY ANIMAL_ID ASC;