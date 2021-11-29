-- 서브쿼리 : 다중행 서브쿼리(MULTI-ROW SUBQUERY)
-- 서브쿼리의 실행 결과가 여러 개 나오는 경우
-- 다중행 연산자 : IN, ANY, SOME, ALL, EXISTS

--[ANY, SOME]
-- 서브쿼리가 반환한 여러 결과 중에서
-- 메인쿼리의 조건식과 하나라도 같으면
-- 메인쿼리 조건식을 TRUE로 반환

-- 각 부서별 최고 급여액
SELECT DEPTNO, MAX(SAL) FROM EMP GROUP BY DEPTNO;

--[ANY]
--각 부서별 최고 급여와 동일한 급여를 받는 사원 정보
SELECT * FROM EMP
    WHERE SAL = ANY(SELECT MAX(SAL) FROM EMP GROUP BY DEPTNO);
    
--[SOME]
--각 부서별 최고 급여와 동일한 급여를 받는 사원 정보
SELECT * FROM EMP
    WHERE SAL = SOME(SELECT MAX(SAL) FROM EMP GROUP BY DEPTNO);
    
-- 부서코드(30)의 최대급여를 받는 사원보다 적은 급여를 받는 모든 사원정보
-- 30부서 최고급여 : 2850 보다 적은 급여를 받는 사원
SELECT * FROM EMP 
    WHERE SAL < ANY(SELECT SAL FROM EMP WHERE DEPTNO = 30)
    ORDER BY SAL DESC, EMPNO;
    
SELECT * FROM EMP 
    WHERE SAL < SOME(SELECT SAL FROM EMP WHERE DEPTNO = 30)
    ORDER BY SAL DESC, EMPNO;
--그룹함수
-- MAX(SAL)보다 적은 급여를 받는 사원
SELECT * FROM EMP
    WHERE SAL < (SELECT MAX(SAL) FROM EMP WHERE DEPTNO = 30)
    ORDER BY SAL DESC, EMPNO;
--------------------------------------------------------------------
-- 부서코드(30)의 최저급여를 받는 사원보다 많은 급여를 받는 모든 사원정보
-- 30부서 최고급여 : 950 보다 많은 급여를 받는 사원
SELECT MIN(SAL) FROM EMP WHERE DEPTNO = 30; -- 950
SELECT * FROM EMP
    WHERE SAL > (SELECT MIN(SAL) FROM EMP WHERE DEPTNO = 30)
    ORDER BY SAL DESC, EMPNO;