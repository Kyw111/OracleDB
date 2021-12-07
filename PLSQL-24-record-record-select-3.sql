/*
레코드(record)형 안에 또 다른 레코드형
-----------------------------------------------------
레코드(RECORD) : 자료형이 다른 여러 자료형들의 모음
TYPE 레코드이름 IS RECORD (
    변수이름 자료형 NOT NULL := 값 또는 표현식
    변수이름 레코드형
)
-----------------------------------------------------
사원테이블(EMP)안에 부서정보를 가지는 관계
*/

SET SERVEROUTPUT ON;

DECLARE
    TYPE REC_DEPT IS RECORD(        -- 부서 테이블
        DEPTNO DEPT.DEPTNO%TYPE,    -- 부서코드
        DNAME DEPT.DNAME%TYPE,      -- 부서이름
        LOC DEPT.LOC%TYPE           -- 부서위치
    );
    TYPE REC_EMP IS RECORD(
    EMPNO EMP.EMPNO%TYPE,   --사원코드
    ENAME EMP.ENAME%TYPE,   --사원이름
    --DEPT REC_DEPT           --부서정보
    DEPT DEPT%ROWTYPE       -- 부서정보
    );
    
    EMP_REC REC_EMP;
BEGIN
    SELECT E.EMPNO, E.ENAME, D.DEPTNO, D.DNAME, D.LOC
        --INTO EMP_REC
        INTO EMP_REC.EMPNO, EMP_REC.ENAME, EMP_REC.DEPT.DEPTNO,
        EMP_REC.DEPT.DNAME, EMP_REC.DEPT.LOC
        FROM EMP E, DEPT D
        WHERE E.DEPTNO = D.DEPTNO
        AND E.EMPNO = 7900;
    
    DBMS_OUTPUT.PUT_LINE('레코드 안에 레코드 정의');
    
    DBMS_OUTPUT.PUT_LINE(EMP_REC.EMPNO);
    DBMS_OUTPUT.PUT_LINE(EMP_REC.ENAME);
    DBMS_OUTPUT.PUT_LINE(EMP_REC.DEPT.DEPTNO);
    DBMS_OUTPUT.PUT_LINE(EMP_REC.DEPT.DNAME);
    DBMS_OUTPUT.PUT_LINE(EMP_REC.DEPT.LOC);
    
END;
/