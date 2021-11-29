-- TOP-N
-- 순위를 지정
-- 서브쿼리, INLINE VIEW, ROWNUM 활용해서 처리 가능

-- 사원중에서 급여를 가장 많이 받는 순서
SELECT EMPNO, ENAME, SAL FROM EMP ORDER BY SAL DESC;

-- 사원중에서 급여를 가장 많이 받는 사원 최상위 5명
-- 오라클 12C 이상(11G는 지원하지 않음)
SELECT EMPNO, ENAME, SAL 
    FROM EMP ORDER BY SAL DESC
    FETCH FIRST 5 ROWS ONLY;
-- 사원중에서 급여를 가장 적게 받는 사원 최상위 5명
SELECT EMPNO, ENAME, SAL 
    FROM EMP ORDER BY SAL ASC
    FETCH FIRST 5 ROWS ONLY;    

-- 중간 상위 5개를 건너뛰고 상위 5개의 레코드를 선택
SELECT EMPNO, ENAME, SAL 
    FROM EMP ORDER BY SAL DESC
    OFFSET 5 ROWS            -- 상위 5개의 레코드를 건너뜀
    FETCH FIRST 5 ROWS ONLY; -- 5개의 레코드를 선택
    
SELECT EMPNO, ENAME, SAL 
    FROM EMP ORDER BY SAL --(ASC)
    OFFSET 5 ROWS            -- 상위 5개의 레코드를 건너뜀
    FETCH FIRST 5 ROWS ONLY; -- 5개의 레코드를 선택