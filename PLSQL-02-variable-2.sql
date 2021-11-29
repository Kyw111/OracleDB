/*
참조형:
    1. %TYPE    : 열참조(칼럼)
    2. %ROWTYPE : 행참조(레코드)
    3. 예 : 변수이름 테이블이름.열이름%TYPE
-----------------------------------------------------*/

 SET SERVEROUTPUT ON;

DESC DEPT;
DECLARE
    V_DEPTNO DEPT.DEPTNO%TYPE := 30;  -- 테이블명.칼럼명%TYPE := 데이터값
    V_DEPTNO2 NUMBER(2) := 30;
BEGIN
    DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || V_DEPTNO);
    DBMS_OUTPUT.PUT_LINE('DEPTNO2 : ' || V_DEPTNO);
END;

/