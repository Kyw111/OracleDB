-- 그룹함수
-- GROUP BY ROLLUP
-- 그룹함수에 지정된 칼럼 단계별 집계(중간단계, 전체)
-- 중간단계 : 지정된 칼럼의 수만큼 집계
-- 전체집계 : 맨 마지막 열에 출력

--(부서별, 직책별) 사원총수, 최고급여, 급여총액, 평균급여
SELECT DEPTNO, JOB, COUNT(*), MAX(SAL), SUM(SAL), TRUNC(AVG(SAL))
    FROM EMP
    GROUP BY DEPTNO, JOB
    ORDER BY DEPTNO, JOB;
--ROLLUP : 각 그룹별 집계
-- 1단계: DEPTNO 집계
-- 2단계: 전체 집계
SELECT DEPTNO, JOB, COUNT(*), MAX(SAL), SUM(SAL), TRUNC(AVG(SAL))
    FROM EMP
    GROUP BY ROLLUP(DEPTNO, JOB)
    ORDER BY DEPTNO, JOB;
    
-- GROUP BY DEPTNO, ROLLUP(JOB)
-- 부서코드로 그룹화를 한 후, 직책으로 병합
-- 직책(JOB) 단위로 병합
SELECT DEPTNO, JOB, COUNT(*), MAX(SAL), SUM(SAL), TRUNC(AVG(SAL))
    FROM EMP
    GROUP BY DEPTNO, ROLLUP(JOB)
    ORDER BY DEPTNO, JOB;