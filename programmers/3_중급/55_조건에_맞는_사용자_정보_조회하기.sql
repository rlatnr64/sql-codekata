-- 조건에 맞는 사용자 정보 조회하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164670
-- 작성자: 김수인
-- 작성일: 2026. 02. 27. 15:15:40

SELECT
    U.USER_ID,
    U.NICKNAME,
    CONCAT(U.CITY, ' ', U.STREET_ADDRESS1, ' ', U.STREET_ADDRESS2) AS '전체주소',
    CONCAT(
        SUBSTRING(U.TLNO, 1, 3), '-', 
        SUBSTRING(U.TLNO, 4, 4), '-', 
        SUBSTRING(U.TLNO, 8)
    ) AS '전화번호'
FROM USED_GOODS_BOARD AS B
JOIN USED_GOODS_USER AS U
    ON B.WRITER_ID = U.USER_ID
GROUP BY U.USER_ID
HAVING COUNT(B.WRITER_ID) >= 3
ORDER BY U.USER_ID DESC;
-- 조인
-- 조건: 중고 거래 게시물 3건 이상 등록 사용자
-- 칼럼: 사용자 ID, 닉네임, 전체주소, 전화번호
-- => 전체 주소 시(CITY),도로명(STREET_ADDRESS1),주소,상세주소(STREET_ADDRESS2)
-- => 전화번호 -하이픈 문자 삽입

