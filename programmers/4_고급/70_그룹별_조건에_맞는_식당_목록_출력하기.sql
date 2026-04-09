-- 그룹별 조건에 맞는 식당 목록 출력하기
-- 프로그래머스 고급 (⭐⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131124
-- 작성자: 김수인
-- 작성일: 2026. 04. 10. 01:10:01

SELECT
    M.MEMBER_NAME,
    R.REVIEW_TEXT,
    DATE_FORMAT(R.REVIEW_DATE, '%Y-%m-%d') AS REVIEW_DATE
FROM MEMBER_PROFILE AS M
JOIN REST_REVIEW AS R
    ON M.MEMBER_ID = R.MEMBER_ID
WHERE M.MEMBER_ID = (
    SELECT MEMBER_ID
    FROM REST_REVIEW 
    GROUP BY MEMBER_ID
    ORDER BY COUNT(*) DESC
    LIMIT 1
)
ORDER BY R.REVIEW_DATE ASC, R.REVIEW_TEXT ASC;
-- 화면에 나와야 하는 것: 리뷰를 가장 많이 작성한 회원의 리뷰들을 조회 (회원 이름, 리뷰 텍스트, 리뷰 작성일이 출력)
-- 