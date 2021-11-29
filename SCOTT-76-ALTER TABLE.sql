-- 테이블 변경: ALTER TABLE 
--  1. 테이블의 구조 변경
--  2. 기존의 자료를 보존가능하다
-----------------------------------------------------------------
-- 명령 
--  1. ADD      : 테이블의 칼럼을 추가
--      ALTER TABLE 테이블명 ADD 칼럼명 자료형;
--  2. RENAME   : 테이블의 칼럼 이름을 변경
--      ALTER TABLE 테이블명 RENAME COLUMN 기존칼럼명 TO 새칼럼명;
--  3. MODIFY   : 테이블의 칼럼 자료형을 변경
--      ALTER TABLE 테이블명 MODIFY 칼럼명 자료형
--  4. DROP     : 테이블의 칼럼을 삭제
--      ALTER TABLE 테이블명 DROP DROP COLUMN 칼럼명

DESC HELLOX;
SELECT * FROM HELLOX;

-- 칼럼추가 : 주소
ALTER TABLE HELLOX ADD ADDR VARCHAR2(50);
-- 칼럼이름 변경 : ADDR -> LOC로 이름 변경
ALTER TABLE HELLOX RENAME COLUMN ADDR TO LOC;
-- 칼럼의 자료형 변경 : LOC(50) -> LOC(100)
ALTER TABLE HELLOX MODIFY LOC VARCHAR2(100);
ALTER TABLE HELLOX MODIFY LOC VARCHAR2(50);  

-- 크기를 줄일 때 데이터가 NULL이거나
-- 이미 저장돼있는 데이터의 크기보다 커야 한다.
INSERT INTO HELLOX VALUES ( '20000', 2000, 'HELLO', NULL, NULL, NULL); 
ALTER TABLE HELLOX MODIFY NAME VARCHAR2(10);

-- 칼럼 삭제 : LOC
ALTER TABLE HELLOX DROP COLUMN LOC;