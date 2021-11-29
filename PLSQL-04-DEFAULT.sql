/*
상수 선언 : 지정한 값이 종료 될 때까지 변하지 않음
변수이름 CONSTANT 자료형 := 값이나 표현식
*/
SET SERVEROUTPUT ON;
DECLARE
    V_DEPTNO NUMBER(2) DEFAULT 10;      -- 기본값(DEFAULT)
    V_EMPNO CONSTANT NUMBER(4) := 7900; -- 상수, 초기값('JAMES')
    V_ENAME VARCHAR2(10);
BEGIN
    V_ENAME := 'JAMES';
    
    DBMS_OUTPUT.PUT_LINE('EMPNO : ' || V_EMPNO);
    DBMS_OUTPUT.PUT_LINE('NAME : ' || V_ENAME);
    DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || V_DEPTNO);
END;

/