SELECT * FROM NETFLIX n ;

--INSERT
INSERT INTO	NETFLIX VALUES ('나의 아저씨','드라마',50,SYSDATE);
COMMIT;

--ROLLBACK
INSERT INTO NETFLIX (VIDEO_NAME, VIEW_CNT) VALUES ('시그널', 42);
SELECT * FROM NETFLIX n ;
ROLLBACK;

--INSERT
INSERT INTO NETFLIX (VIDEO_NAME, VIEW_CNT) VALUES ('시그널', 42);
INSERT INTO	NETFLIX VALUES ('응답하라 1998','드라마',35,SYSDATE-30);
INSERT INTO	NETFLIX VALUES ('이태원 클라쓰','드라마',30,SYSDATE-40);
INSERT INTO	NETFLIX VALUES ('미스터 쎤사인','드라마',22,SYSDATE-300);
COMMIT;

SELECT * FROM NETFLIX n ;