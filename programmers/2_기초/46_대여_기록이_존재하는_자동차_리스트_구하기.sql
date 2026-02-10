-- 대여 기록이 존재하는 자동차 리스트 구하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/157341
-- 작성자: 김수인
-- 작성일: 2026. 02. 10. 15:51:49

SELECT
    DISTINCT C.CAR_ID
FROM CAR_RENTAL_COMPANY_CAR AS C
JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY AS H
    ON C.CAR_ID = H.CAR_ID
WHERE C.CAR_TYPE = '세단' AND H.START_DATE LIKE '%-10-%'
ORDER BY C.CAR_ID DESC;