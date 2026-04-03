-- 주문량이 많은 아이스크림들 조회하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/133027
-- 작성자: 김수인
-- 작성일: 2026. 04. 03. 10:42:42

SELECT
    H.FLAVOR
FROM FIRST_HALF AS H
JOIN JULY AS J
    ON H.FLAVOR = J.FLAVOR
GROUP BY H.FLAVOR
ORDER BY SUM(H.TOTAL_ORDER) + SUM(J.TOTAL_ORDER) DESC
LIMIT 3;