-- 자동차 평균 대여 기간 구하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/157342
-- 작성자: 김수인
-- 작성일: 2026. 04. 01. 17:03:54

SELECT
    CAR_ID,
    ROUND(AVG(DATEDIFF(END_DATE,START_DATE) + 1), 1) AS AVERAGE_DURATION
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
HAVING AVG(DATEDIFF(END_DATE, START_DATE) + 1) >= 7
ORDER BY AVERAGE_DURATION DESC, CAR_ID DESC;
