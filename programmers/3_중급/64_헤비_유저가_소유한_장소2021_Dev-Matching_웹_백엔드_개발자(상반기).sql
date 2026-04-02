-- 헤비 유저가 소유한 장소2021 Dev-Matching: 웹 백엔드 개발자(상반기)
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/77487
-- 작성자: 김수인
-- 작성일: 2026. 04. 02. 11:33:13

SELECT
    ID,
    NAME,
    HOST_ID
FROM PLACES
WHERE HOST_ID IN (
    SELECT HOST_ID
    FROM PLACES
    GROUP BY HOST_ID
    HAVING COUNT(HOST_ID) > 1)

