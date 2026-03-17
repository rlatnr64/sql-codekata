-- 년, 월, 성별 별 상품 구매 회원 수 구하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131532
-- 작성자: 김수인
-- 작성일: 2026. 03. 17. 12:57:58

SELECT
    YEAR(O.SALES_DATE) AS YEAR,
    MONTH(O.SALES_DATE) AS MONTH,
    U.GENDER,
    COUNT(DISTINCT O.USER_ID) AS USERS
FROM USER_INFO AS U
JOIN ONLINE_SALE AS O
    ON U.USER_ID = O.USER_ID
WHERE U.GENDER IS NOT NULL
GROUP BY YEAR(O.SALES_DATE), MONTH(O.SALES_DATE), U.GENDER
ORDER BY YEAR, MONTH,  U.GENDER ASC;