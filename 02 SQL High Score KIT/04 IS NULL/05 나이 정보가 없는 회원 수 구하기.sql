/*
□ 참고 : https://school.programmers.co.kr/learn/challenges?tab=sql_practice_kit
□ 목적 : IS NULL 복습(학습)
*/

-- MySQL
SELECT SUM(AGE IS NULL) AS USERS
FROM USER_INFO;

-- Oracle
SELECT COUNT(USER_ID) AS USERS
FROM USER_INFO
WHERE AGE IS NULL;

SELECT COUNT(*) AS USERS
FROM USER_INFO
WHERE AGE IS NULL;

-- COUNT(*) : NULL 값도 포함하여 계산

SELECT COUNT(*) AS USERS
FROM USER_INFO;

SELECT COUNT(AGE) AS USERS
FROM USER_INFO;