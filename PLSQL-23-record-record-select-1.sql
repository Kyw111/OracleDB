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
    
    DEPT_REC REC_DEPT;
BEGIN
    SELECT *
        INTO DEPT_REC
        FROM DEPT
        WHERE DEPTNO = 30;
    
    DBMS_OUTPUT.PUT_LINE(EMP_REC.DEPTNO);
    DBMS_OUTPUT.PUT_LINE(EMP_REC.DNAME);
    DBMS_OUTPUT.PUT_LINE(DEPT_REC.LOC);
END;
/