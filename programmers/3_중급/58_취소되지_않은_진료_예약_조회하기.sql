-- 취소되지 않은 진료 예약 조회하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/132204
-- 작성자: 김수인
-- 작성일: 2026. 03. 13. 10:20:28

SELECT
  A.APNT_NO,
  P.PT_NAME,
  A.PT_NO,
  A.MCDP_CD,
  D.DR_NAME,
  A.APNT_YMD
FROM APPOINTMENT AS A
JOIN PATIENT AS P ON P.PT_NO = A.PT_NO
JOIN DOCTOR AS D ON D.DR_ID = A.MDDR_ID
WHERE A.MCDP_CD = 'CS'
  AND A.APNT_CNCL_YN = 'N'
  AND DATE(A.APNT_YMD) = '2022-04-13'
ORDER BY A.APNT_YMD ASC;