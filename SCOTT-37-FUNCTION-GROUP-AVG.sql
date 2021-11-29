-- 그룹함수: 다중행 함수
-- 평균값을 구하는 함수
-- AVG(column)

-- 전체 사원의 평균 급여
SELECT AVG(SAL) FROM EMP;
SELECT TRUNC(AVG(SAL)) FROM EMP; --소수점 생략

-- 부서가 30인 사원들의 평균 급여
SELECT AVG(SAL) FROM EMP WHERE DEPTNO = 30;
SELECT TRUNC(AVG(SAL)) FROM EMP WHERE DEPTNO = 30;    -- 소수점 이하 버림
SELECT TRUNC(AVG(SAL), 2) FROM EMP WHERE DEPTNO = 30; -- 소수점 두자리이후 버리고 출력
SELECT ROUND(AVG(SAL), 2) FROM EMP WHERE DEPTNO = 30; -- 소수점 세자리에서 반올림

-- 옵션: DISTINCT, ALL
SELECT ENAME, SAL FROM EMP WHERE DEPTNO = 30;
SELECT AVG(SAL) FROM EMP WHERE DEPTNO = 30;
SELECT AVG(SAL), AVG(DISTINCT SAL) FROM EMP WHERE DEPTNO = 30;
SELECT AVG(DISTINCT SAL) FROM EMP WHERE DEPTNO = 30;