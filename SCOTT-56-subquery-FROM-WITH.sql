-- 서브쿼리 : FROM절에 사용하는 서브쿼리 
-- 인라인 뷰(INLINE VIEW)
-- 테이블 전체가 아니라 SELECT문을 통해 일부 데이터를 추출해서 사용
-- WITH: 서브쿼리를 미리 지정하여 SELECT문에 사용

SELECT E.EMPNO, E.ENAME, D.DEPTNO, D.DNAME
    FROM (SELECT * FROM EMP WHERE DEPTNO = 10) E,
         (SELECT * FROM DEPT WHERE DEPTNO = 10) D
    WHERE E.DEPTNO = D.DEPTNO;

-- WITH
-- 서브쿼리를 미리 지정하여 SELECT문에 사용
WITH
E AS (SELECT * FROM EMP WHERE DEPTNO = 10),
D AS (SELECT * FROM DEPT WHERE DEPTNO = 10)
SELECT E.EMPNO, E.ENAME, D.DEPTNO, D.DNAME 
    FROM E, D   --WITH에서 지정한 별칭을 사용
    WHERE E.DEPTNO = D.DEPTNO;