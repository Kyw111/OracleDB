-- 그룹함수
-- GROUPING SETS : 각 칼럼별 그룹
-- 같은 수준의 그룹화 칼럼이 여러 개일 때
-- 각각 같은 수준으로 출력

-- 부서별 사원총수
SELECT DEPTNO, COUNT(DEPTNO) FROM EMP GROUP BY DEPTNO;

-- 직책별 사원총수
SELECT JOB, COUNT(JOB) FROM EMP GROUP BY JOB;

-- 단계별(부서별, 직책별)
SELECT DEPTNO, JOB, COUNT(*) FROM EMP GROUP BY DEPTNO, JOB;

-- 각 부서별 사원수, 직책별 사원수
SELECT DEPTNO, JOB, COUNT(*)
    FROM EMP
    GROUP BY GROUPING SETS(DEPTNO, JOB)
    ORDER BY DEPTNO, JOB;