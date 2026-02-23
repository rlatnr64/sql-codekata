-- 조건에 부합하는 중고거래 댓글 조회하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164673
-- 작성자: 김수인
-- 작성일: 2026. 02. 23. 10:13:55

SELECT
    B.TITLE,
    B.BOARD_ID,
    R.REPLY_ID,
    R.WRITER_ID,
    R.CONTENTS,
    DATE_FORMAT(R.CREATED_DATE, '%Y-%m-%d') AS CREATED_DATE
FROM USED_GOODS_BOARD AS B
JOIN USED_GOODS_REPLY AS R
    ON B.BOARD_ID = R.BOARD_ID
WHERE YEAR(B.CREATED_DATE) = 2022
AND MONTH(B.CREATED_DATE) = 10
ORDER BY R.CREATED_DATE ASC, B.TITLE ASC;