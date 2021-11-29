-- SYNONYM(동의어)
-- 테이블, 뷰, 시퀀스 객체에 별명을 부여
-- 사용법:
--      CREATE SYNONYM 동의어이름 FOR 객체이름;
-- 용도 : 
--  1. 이름이 긴 경우 줄이기 위해
--  2. 실수로 이름을 잘못 명명한 경우
--  3. DBLINK(다른DB, 원격)
---------------------------------------------------------------------------

-- 생성
CREATE SYNONYM SG FOR SALGRADE;

DESC SG;
DESC SALGRADE;

SELECT * FROM SG;
SELECT * FROM SALGRADE;

--삭제
DROP SYNONYM SG;