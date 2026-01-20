-- 평균 일일 대여 요금 구하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/151136
-- 작성자: 김수인
-- 작성일: 2026. 01. 20. 11:53:26

SELECT
    ROUND(AVG(DAILY_FEE),0) as AVERAGE_FEE
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = "SUV"