/*
참조형:
    1. %TYPE    : 열참조(칼럼)
    2. %ROWTYPE : 행참조(레코드)
    3. 예 : 변수이름 테이블이름.열이름%TYPE
-----------------------------------------------------

*/

 SET SERVEROUTPUT ON;

DECLARE
    V_DEPTROW DEPT%ROWTYPE; -- 참조형 : %NOTYPE (레코드, 하나의 행)
BEGIN
    SELECT DEPTNO, DNAME, LOC INTO V_DEPTROW
    FROM DEPT
    WHERE DEPTNO = 30;

    DBMS_OUTPUT.PUT_LINE('[부서코드(30) 정보]');
    DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || V_DEPTROW.DEPTNO);
    DBMS_OUTPUT.PUT_LINE('DNAME : ' || V_DEPTROW.DNAME);
    DBMS_OUTPUT.PUT_LINE('LOC : ' || V_DEPTROW.LOC);
END;

/