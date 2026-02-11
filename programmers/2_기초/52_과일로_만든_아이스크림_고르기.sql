-- 과일로 만든 아이스크림 고르기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/133025
-- 작성자: 김수인
-- 작성일: 2026. 02. 11. 19:51:17

SELECT
    F.FLAVOR
FROM FIRST_HALF AS F
JOIN ICECREAM_INFO AS I
    ON F.FLAVOR = I.FLAVOR
WHERE F.TOTAL_ORDER > 3000 AND INGREDIENT_TYPE = 'fruit_based'
ORDER BY F.TOTAL_ORDER DESC;