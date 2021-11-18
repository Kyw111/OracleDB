DESC emp;

SELECT * FROM emp;
--[문제3]
-- sal : 월급여
-- comm : 년수당
-- 사원 연간 총 급여
-- 사원 연간 총 소득
SELECT ename, job, sal, comm, sal * 12 as sal2, sal * 12 + nvl(comm, 0) as annual
FROM emp
ORDER BY sal2;

-- 월 평균 수입
SELECT ename, job, sal, comm, sal * 12 as sal2, sal * 12 + nvl(comm, 0) as annual,
(sal*12 + nvl(comm, 0)) / 12 as avg
FROM emp
ORDER BY avg;