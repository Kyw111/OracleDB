-- 서브쿼리
-- 스칼라 서브쿼리(SCALAR SUB-QUERY) : SELECT절에 SELECT를 기술
-- SELECT절 하나의 열 영역의 결과를 출력
-- 조건: 
--  > SELECT절 명시하는 서브쿼리의 결과는 하나의 열에 해당하는 값만 나와야한다.
--  > 다중행 결과가 나오면 안된다.

-- 급여등급
SELECT * FROM SALGRADE;
SELECT GRADE FROM SALGRADE;

-- 사원의 급여 등급
SELECT E.EMPNO, E.ENAME, E.SAL, S.GRADE
    FROM EMP E, SALGRADE S
    WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL
    ORDER BY 1;

SELECT E.EMPNO, E.ENAME, E.SAL, 
(SELECT GRADE FROM SALGRADE WHERE E.SAL BETWEEN LOSAL AND HISAL) AS SALGRADE
    FROM EMP E               -- E.SAL에서 LOSAL과 HISAL 사이
    ORDER BY 1;

--다중행 결과가 나오면 안된다
--오류: "single-row subquery returns more than one row"
--SELECT E.EMPNO, E.ENAME, E.SAL, (SELECT GRADE FROM SALGRADE) AS SALGRADE FROM EMP E ORDER BY 1;

-- 오류: 다중 칼럼이 나오면 안된다.
--SELECT E.EMPNO, E.ENAME, E.SAL, (SELECT GRADE, LOSAL, HISAL FROM SALGRADE
-- WHERE E.SAL BETWEEN LOSAL AND HISAL) AS SALGRADE FROM EMP E ORDER BY 1;

--부서코드, 부서이름
SELECT E.EMPNO, E.ENAME, E.SAL, E.DEPTNO,
(SELECT GRADE FROM SALGRADE WHERE E.SAL BETWEEN LOSAL AND HISAL) AS SALGRADE,
(SELECT DNAME FROM DEPT WHERE E.DEPTNO = DEPT.DEPTNO) AS DNAME
    FROM EMP E
    ORDER BY 1;