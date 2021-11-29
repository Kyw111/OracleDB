-- 서브쿼리를 이용한 입력
-- 서브쿼리를 이용하여 INSERT를 하는 경우는 VALUES 구문을 생략
-- 조건:
--  > 1. 칼럼의 갯수가 일치
--  > 2. 칼럼의 자료형이 일치

-- 전체 사원의 급여등급
SELECT E.*, S.*
    FROM EMP E, SALGRADE S
    WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL;
    
-- 전체 사원의 급여등급이 1등급인 사원
SELECT E.*, S.*
    FROM EMP E, SALGRADE S
    WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL
    AND S.GRADE = 4;
    
-- 전체 사원중 급여등급이 4등급인 사원 테이블
CREATE TABLE EMP4 AS SELECT * FROM EMP WHERE 1 <> 1; -- 빈테이블
-- 전체 사원중 급여등급이 4등급인 사원 테이블에 입력
INSERT INTO EMP4 
    SELECT E.*
    FROM EMP E, SALGRADE S
    WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL
    AND S.GRADE = 4;
--전체 사원중 급여등급이 4등급인 사원 테이블에 입력
-- 제외 칼럼: COMM, DEPTNO
INSERT INTO EMP4 (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
    SELECT E.EMPNO, E.ENAME, E.JOB, E.MGR, SYSDATE, E.SAL, NULL
    FROM EMP E, SALGRADE S
    WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL
    AND S.GRADE = 2;
