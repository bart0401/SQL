/*
□ 참고 : https://school.programmers.co.kr/learn/challenges?tab=sql_practice_kit, https://jaehwaseo.tistory.com/8
□ 목적 : CONCAT_WS, CONCAT 복습(학습)
*/

-- MySQL
SELECT U.USER_ID, U.NICKNAME,
       CONCAT_WS(" ", U.CITY, U.STREET_ADDRESS1, U.STREET_ADDRESS2) AS "전체주소",
       CONCAT_WS("-", SUBSTRING(U.TLNO, 1, 3), SUBSTR(U.TLNO, 4, 4), RIGHT(U.TLNO, 4)) AS "전화번호"
FROM USED_GOODS_BOARD B
JOIN USED_GOODS_USER U ON B.WRITER_ID = U.USER_ID
GROUP BY B.WRITER_ID
HAVING COUNT(B.WRITER_ID) >= 3
ORDER BY B.WRITER_ID DESC;

-- Oracle
SELECT USER_ID, NICKNAME,
       CITY || ' ' || STREET_ADDRESS1 || ' ' || STREET_ADDRESS2 AS 전체주소,
       SUBSTR(TLNO,0,3) || '-' || SUBSTR(TLNO,4,4) || '-' || SUBSTR(TLNO,8,4) AS 전화번호
FROM USED_GOODS_USER
WHERE USER_ID IN(
                SELECT WRITER_ID
                FROM USED_GOODS_BOARD
                GROUP BY WRITER_ID
                HAVING COUNT(*) >= 3
                )
ORDER BY USER_ID DESC;
