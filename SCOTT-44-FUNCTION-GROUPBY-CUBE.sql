-- 그룹함수
-- GROUP BY CUBE
-- 그룹함수에 지정된 칼럼 단계별 집계(중간단계, 전체)
-- 중간단계 : 지정된 칼럼의 수만큼 집계
-- 전체집계 : 맨 마지막 열에 출력

--(부서별, 직책별) 사원총수, 최고급여, 급여총액, 평균급여
SELECT DEPTNO, JOB, COUNT(*), MAX(SAL), SUM(SAL), TRUNC(AVG(SAL))
    FROM EMP
    GROUP BY DEPTNO, JOB
    ORDER BY DEPTNO, JOB;
--CUBE : 각 그룹별 집계
-- 1단계: DEPTNO 집계
-- 2단계: JOB별 집계(ROLLUP과 차이)
-- 3단계: 전체 집계
SELECT DEPTNO, JOB, COUNT(*), MAX(SAL), SUM(SAL), TRUNC(AVG(SAL))
    FROM EMP
    GROUP BY CUBE(DEPTNO, JOB)
    ORDER BY DEPTNO, JOB;
    
-- GROUP BY DEPTNO, ROLLUP(JOB)
-- GROUP BY DEPTNO, CUBE(JOB)
-- 부서코드로 그룹화를 한 후, 직책으로 병합
-- ROLLUP, CUBE는 동일한 결과
-- 직책(JOB) 단위로 병합
SELECT DEPTNO, JOB, COUNT(*), MAX(SAL), SUM(SAL), TRUNC(AVG(SAL))
    FROM EMP
    --GROUP BY DEPTNO, ROLLUP(JOB)
    GROUP BY DEPTNO, CUBE(JOB)
    ORDER BY DEPTNO, JOB;