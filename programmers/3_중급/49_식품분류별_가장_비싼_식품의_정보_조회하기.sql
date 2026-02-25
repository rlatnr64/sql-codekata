-- 식품분류별 가장 비싼 식품의 정보 조회하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131116
-- 작성자: 김수인
-- 작성일: 2026. 02. 25. 14:30:10

SELECT
    CATEGORY,
    PRICE AS MAX_PRICE,
    PRODUCT_NAME
FROM FOOD_PRODUCT
-- 식품분류별 -> CATEGORY 가장 비싼거
-- => CATEGORY가 과자 국 김치 식용유만
WHERE (CATEGORY, PRICE) IN (
    SELECT
        CATEGORY,
        MAX(PRICE)
    FROM FOOD_PRODUCT
    GROUP BY CATEGORY
    HAVING CATEGORY IN ('과자', '국', '김치', '식용유')
)
ORDER BY PRICE DESC;

