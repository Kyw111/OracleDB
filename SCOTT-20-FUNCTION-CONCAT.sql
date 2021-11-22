-- 문자열 함수 : 데이터를 결합(연결) 함수
-- CONCAT(문자열1, 문자열2) : 문자열1 + 문자열2, 두 개의 문자열을 하나로 결합

-- 이름과 사번을 결합
SELECT EMPNO, ENAME, CONCAT(ENAME, EMPNO) FROM EMP; -- 이름과 사번을 결합
SELECT EMPNO, ENAME, CONCAT(EMPNO, ENAME) FROM EMP; -- 사번과 이름을 결합

-- 사번 + '-' + 이름
SELECT EMPNO, ENAME, CONCAT(EMPNO, CONCAT('-', ENAME)) FROM EMP; 

-- 이름 + '(' + 사번 + ')'
SELECT EMPNO, ENAME, CONCAT(CONCAT(ENAME, CONCAT('(', EMPNO)), ')')FROM EMP;

SELECT CONCAT('[', EMPNO)FROM EMP;
SELECT CONCAT(ENAME,CONCAT('[', EMPNO)) FROM EMP;
SELECT CONCAT(CONCAT(ENAME,CONCAT('[', EMPNO)), ']') FROM EMP;