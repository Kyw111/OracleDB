-- 테이블에서 데이터 수정
/*
    UPDATE 테이블명
        SET 칼럼1 = 데이터1,
            칼럼2 = 데이터2,
            칼럼3 = 데이터3,
            ...
            칼럼N = 데이터N
        [ WHERE 조건식 ]
*/

SELECT * FROM EMPX;
SELECT * FROM DEPTX;
-- 부서 테이블에서 모든 부서위치를 'SEOUL'로 변경
-- WHERE문을 주지 않으면 테이블의 모든 데이터가 변경
UPDATE DEPTX SET LOC = 'SEOUL';

-- 부서이름이 '무역부'인 부서 위치를 'SEONGNAM'으로 변경
UPDATE DEPTX SET LOC = 'SEONGNAM' 
    WHERE DNAME LIKE '무역부%';
-- 부서이름이 없는 부서의 이름을 '지원부'로 변경하고
-- 부서위치는 '독도'로 변경
UPDATE DEPTX 
    SET DNAME = '지원부',
        LOC = '독도'
    --WHERE DNAME = NULL; 이렇게하면 오라클이 못찾음.
    WHERE DNAME IS NULL;
    
--[문제] 
-- 임시 사원 테이블(EMPX)에서 급여가 2000이하인 사원의
-- 수당을 500 추가하라.

INSERT INTO EMPX SELECT * FROM EMP;
SELECT * FROM EMPX ORDER BY COMM;
SELECT * FROM EMPX WHERE SAL <= 2000;

UPDATE EMPX SET COMM = COMM + 500
    WHERE SAL <= 2000;

-- COMM이 NULL이면 500을 지정하고
-- COMM이 NULL이 아니면 COMM + 500을 지정
-- NVL2(COL, COL이 NULL이 아니면, COL이 NULL이면)
UPDATE EMPX
    SET COMM = NVL2(COMM, COMM + 500, 500)
    WHERE SAL <= 2000;
    
-- 확인
SELECT E1.EMPNO, E1.ENAME, E1.SAL, E1.COMM, E2.COMM
    FROM EMP E1, EMPX E2
    WHERE E1.SAL <= 2000
    AND E1.EMPNO = E2.EMPNO;
    
--[문제] 검증?
-- EMPX.COMM - EMP.COMM -> 500보다 큰 값을 가지는 데이터 잘못된 데이터
SELECT E1.EMPNO, E1.ENAME, E1.SAL, E1.COMM, E2.COMM, NVL2(E2.COMM, E2.COMM, 0) - NVL2(E1.COMM, E1.COMM, 0) AS COMMX
    FROM EMP E1, EMPX E2
    WHERE E1.SAL <= 2000
    AND E1.EMPNO = E2.EMPNO
    AND (NVL2(E2.COMM, E2.COMM, 0) - NVL2(E1.COMM, E1.COMM, 0)) > 500;
