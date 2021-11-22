--서브쿼리(Sub-Query)
-- SELECT문 안에 SELECT문 있는 경우
-- 메인쿼리: 서브쿼리의 결과를 가지고 쿼리
-- 서브쿼리: 메인쿼리의 대상
--  1. 메인쿼리의 대상
--  2. 서브쿼리는 메인쿼리의 자료형과 칼럼 갯수가 같아야 한다.
--  3. 결과의 행 수는 메인쿼리의 연산자 종류와 호환 가능해야 한다.
--      (결과가 단일행, 다중행)


SELECT * FROM emp;

SELECT ename, sal as "급여" FROM emp WHERE empno = 7782; --급여:2450

-- CLARK의 급여(2450)보다 더 많은 급여를 받는 사원
SELECT * FROM emp WHERE SAL > 2450; --비효율적임
--위아래 결과는 같음.
SELECT * FROM emp 
    WHERE sal > ( --메인쿼리
    SELECT sal FROM emp WHERE empno = 7782 --서브쿼리
    ); --서브쿼리의 결과 : 단일행과 단일 칼럼

--입사일자 순으로 정렬
SELECT * FROM EMP ORDER BY HIREDATE;
--[문제1] TURNER 보다 빨리 입사한 사원
SELECT * FROM EMP WHERE HIREDATE < '81/09/08'; --6명
SELECT * FROM emp WHERE to_date(HIREDATE, 'YY/MM/DD') < TO_DATE('81/09/08', 'YY/MM/DD');
SELECT * FROM EMP
    WHERE HIREDATE < (
    SELECT HIREDATE FROM EMP WHERE ENAME = 'TURNER');
--[문제2] TURNER를 포함해서 TURNER 보다 늦게 입사한 사원
SELECT * FROM EMP
    WHERE HIREDATE >= (
    SELECT HIREDATE FROM EMP WHERE ENAME = 'TURNER')
    ORDER BY HIREDATE;
--[문제3] 부서코드가 20에 속한 사원중에서
--       TURNER보다 높은 급여를 받는 사원정보와 소속 부서 정보를 출력
SELECT * FROM EMP E, DEPT D 
    WHERE E.DEPTNO = 20 --부서코드 20에 속한 사원
    AND E.DEPTNO = D.DEPTNO
    AND E.SAL > (SELECT SAL FROM EMP WHERE EMPNO = 7844) --터너보다 높은급여
    ORDER BY E.SAL;
    
--[문제4] 부서코드가 10,20에 속한 사원중에서
--       전체 사원의 평균 급여보다 높은 급여를 받는 사원정보와 소속 부서 정보를 출력
SELECT AVG(SAL) FROM EMP; --평균급여
SELECT * FROM EMP E, DEPT D 
    WHERE E.DEPTNO IN(10, 20) --부서코드 20에 속한 사원
    AND E.DEPTNO = D.DEPTNO
    AND E.SAL > (SELECT AVG(SAL) FROM EMP) --평균급여보다 높은 급여받는 사원
    ORDER BY E.SAL;
