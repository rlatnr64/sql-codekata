-- 상품 별 오프라인 매출 구하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131533
-- 작성자: 김수인
-- 작성일: 2026. 01. 30. 23:35:59

SELECT
    P.PRODUCT_CODE,
    SUM(P.PRICE * OS.SALES_AMOUNT) AS SALES
FROM PRODUCT AS P
    INNER JOIN OFFLINE_SALE AS OS
    ON P.PRODUCT_ID = OS.PRODUCT_ID
GROUP BY P.PRODUCT_CODE
ORDER BY SALES DESC, PRODUCT_CODE ASC;