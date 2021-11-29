-- 서브쿼리 : 다중행 서브쿼리(MULTI-ROW SUBQUERY)
-- 서브쿼리의 실행 결과가 여러 개 나오는 경우
-- 다중행 연산자 : IN, ANY, SOME, ALL, EXISTS

--[IN]
-- 서브쿼리가 반환한 여러 결과 중에서
-- 메인쿼리의 조건식과 하나라도 같으면
-- 메인쿼리 조건식을 TRUE로 반환

-- 사원중에서 부서코드가 10 이거나(OR) 20인 사원
SELECT * FROM EMP WHERE DEPTNO IN(10,20) ORDER BY DEPTNO;
-- 부서별 최고 급여액
SELECT DEPTNO, MAX(SAL) FROM EMP GROUP BY DEPTNO;
-- 부서별 최고 급여액을 받는 사원정보
SELECT * FROM EMP WHERE SAL IN (SELECT MAX(SAL) FROM EMP GROUP BY DEPTNO);
-- 부서별 최저 급여액을 받는 사원정보
SELECT DEPTNO, MIN(SAL) FROM EMP GROUP BY DEPTNO;
SELECT * FROM EMP WHERE SAL IN (SELECT MIN(SAL) FROM EMP GROUP BY DEPTNO)
ORDER BY DEPTNO;
----------------------------------------------------------------------------
-- 사원들이 소속된 부서
SELECT * FROM DEPT
    WHERE DEPTNO IN (SELECT DISTINCT DEPTNO FROM EMP);
-- 사원을 가지고 있지 않은 부서
SELECT * FROM DEPT
    WHERE DEPTNO NOT IN (SELECT DISTINCT DEPTNO FROM EMP);
    
SELECT * FROM dept 
    WHERE deptno NOT IN(SELECT deptno FROM emp GROUP by deptno);