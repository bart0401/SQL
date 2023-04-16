/*
□ 참고 : https://school.programmers.co.kr/learn/challenges?tab=sql_practice_kit
□ 목적 : SELECT 복습(학습)
*/

-- MySQL
SELECT I.REST_ID, I.REST_NAME, I.FOOD_TYPE, I.FAVORITES, I.ADDRESS,
       ROUND(AVG(R.REVIEW_SCORE), 2) AS SCORE
FROM REST_INFO I

JOIN REST_REVIEW R
ON R.REST_ID = I.REST_ID

WHERE I.ADDRESS LIKE "서울%"
GROUP BY I.REST_ID

ORDER BY SCORE DESC, I.FAVORITES DESC;

-- Oracle
SELECT DISTINCT A.REST_ID, REST_NAME, FOOD_TYPE, FAVORITES, ADDRESS,
                ROUND(AVG(REVIEW_SCORE) OVER(PARTITION BY A.REST_ID), 2) AS SCORE
FROM REST_INFO A

JOIN REST_REVIEW B
ON A.REST_ID = B.REST_ID

WHERE ADDRESS LIKE '서울%'
ORDER BY SCORE DESC, FAVORITES DESC;