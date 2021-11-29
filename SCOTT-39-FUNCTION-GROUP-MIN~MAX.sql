-- 그룹함수: 다중행 함수
-- 최대값, 최소값
-- MAX(COLUMN):최대값
-- MIN(COLUMN):최소값

-- 가장 급여를 많이 받는 사원의 급여
SELECT MAX(SAL) FROM EMP;
-- 가장 급여를 적게 받는 사원의 급여
SELECT MIN(SAL) FROM EMP;
-- 가장 급여를 적게 받는 사원과 가장 많이 받는 사원의 급여
SELECT MIN(SAL), MAX(SAL) FROM EMP;
-- 입사일이 가장 오래된 사원과 가장 최근인 사원의 입사일자
SELECT MIN(HIREDATE), MAX(HIREDATE) FROM EMP WHERE DEPTNO = 20;