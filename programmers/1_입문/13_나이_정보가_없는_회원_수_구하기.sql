-- 나이 정보가 없는 회원 수 구하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131528
-- 작성자: 김수인
-- 작성일: 2026. 01. 20. 11:24:05

SELECT
    COUNT(USER_ID) AS USERS
FROM USER_INFO
WHERE AGE IS NULL;