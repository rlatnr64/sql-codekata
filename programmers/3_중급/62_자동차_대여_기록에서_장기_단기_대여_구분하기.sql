-- 자동차 대여 기록에서 장기/단기 대여 구분하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/151138
-- 작성자: 김수인
-- 작성일: 2026. 04. 01. 16:26:09

SELECT
    HISTORY_ID,
    CAR_ID,
    DATE_FORMAT(START_DATE, '%Y-%m-%d') AS START_DATE,
    DATE_FORMAT(END_DATE, '%Y-%m-%d') AS END_DATE,
    CASE
        WHEN DATEDIFF(END_DATE, START_DATE) + 1 >= 30 THEN '장기 대여'
        ELSE '단기 대여'
    END AS RENT_TYPE
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE YEAR(START_DATE) = 2022
  AND MONTH(START_DATE) = 9
ORDER BY HISTORY_ID DESC;