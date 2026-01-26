-- 카테고리 별 상품 개수 구하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131529
-- 작성자: 김수인
-- 작성일: 2026. 01. 26. 23:11:24

SELECT
    SUBSTR(PRODUCT_CODE, 1, 2) AS CATEGORY,
    COUNT(*) AS PRODUCTS
FROM PRODUCT
GROUP BY CATEGORY
ORDER BY CATEGORY ASC;