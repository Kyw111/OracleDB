-- DUAL : 오라클에서 제공하는 특수한 테이블
-- 더미(DUMMY) 테이블 : DUMMY    VARCHAR2(1)
DESC DUAL;
SELECT DUMMY FROM DUAL;

--character set
SELECT * FROM nls_database_parameters WHERE parameter = 'NLS_CHARACTERSET';

--  DUAL : 오라클에서 제공하는 특수한 테이블
SELECT '한글' AS HANGEUL, LENGTH('한글') HANLEN, LENGTHB('한글') AS HANLENB FROM DUAL;

-- 오늘날짜
SELECT SYSDATE FROM DUAL;

SELECT * FROM EMP;
SELECT UPPER('ABC') AS ABC FROM DUAL;

SELECT * FROM EMP WHERE ENAME = (SELECT UPPER('james') AS ABC FROM DUAL);