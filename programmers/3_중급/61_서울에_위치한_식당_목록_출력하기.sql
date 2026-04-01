-- 서울에 위치한 식당 목록 출력하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131118
-- 작성자: 김수인
-- 작성일: 2026. 04. 01. 15:29:26

SELECT
    I.REST_ID,
    I.REST_NAME,
    I.FOOD_TYPE,
    I.FAVORITES,
    I.ADDRESS,
    ROUND(AVG(R.REVIEW_SCORE), 2) AS SCORE
FROM REST_INFO AS I
JOIN REST_REVIEW AS R
    ON I.REST_ID = R.REST_ID
GROUP BY I.REST_ID
HAVING I.ADDRESS LIKE "서울%"
ORDER BY SCORE DESC, I.FAVORITES DESC;