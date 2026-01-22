-- 최댓값 구하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59415
-- 작성자: 김수인
-- 작성일: 2026. 01. 22. 10:51:36

SELECT
    DATETIME as "시간"
FROM ANIMAL_INS
ORDER BY DATETIME DESC
LIMIT 1;