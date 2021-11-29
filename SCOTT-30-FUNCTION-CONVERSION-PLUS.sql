-- 자료형 변환
-- TO_CHAR : 숫자, 날짜데이터를 문자로 변환
-- TO_NUMBER : 문자 데이터를 숫자 데이터로 변환
-- TO_DATE : 문자 데이터를 날짜 데이터로 변환

-- NUMBER + 문자열(숫자) : 자동형변환, 숫자로 변환
-- 암시적 형 변환(IMPLICIT TYPE CONVERSION)
SELECT EMPNO, ENAME, EMPNO + '11' FROM EMP;
SELECT ENAME, EMPNO, EMPNO + '11', EMPNO + 11 FROM EMP;
-- NUMBER + 문자열(문자) : "invalid number" 오류
SELECT ENAME, EMPNO, EMPNO + 'JX' FROM EMP;
-- NUMBER + 문자열(문자) : "invalid number" 오류
SELECT EMAME, EMPNO, ENAME + 'JX' FROM EMP;
-- 문자열R + 문자열 : ||를 사용해주어야만 문자열+문자열이 가능함(자바와 차이점)
SELECT ENAME, EMPNO, ENAME || '-JX' FROM EMP;

