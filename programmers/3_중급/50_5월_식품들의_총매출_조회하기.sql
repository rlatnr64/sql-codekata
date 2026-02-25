-- 5월 식품들의 총매출 조회하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131117
-- 작성자: 김수인
-- 작성일: 2026. 02. 25. 17:44:45

SELECT
    P.PRODUCT_ID,
    P.PRODUCT_NAME,
    SUM(P.PRICE * O.AMOUNT) AS TOTAL_SALES
FROM FOOD_PRODUCT AS P
JOIN FOOD_ORDER AS O
    ON P.PRODUCT_ID = O.PRODUCT_ID
WHERE O.PRODUCE_DATE LIKE '2022-05-%'
GROUP BY P.PRODUCT_NAME
ORDER BY TOTAL_SALES DESC, PRODUCT_ID ASC;