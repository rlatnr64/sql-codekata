-- 조건에 맞는 회원수 구하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131535
-- 작성자: 김수인
-- 작성일: 2026. 01. 20. 11:27:14

SELECT
    COUNT(USER_ID) as USERS
FROM USER_INFO
WHERE JOINED LIKE "2021%" AND (AGE BETWEEN 20 AND 29);