/*
NOT NULL : 변수에 NULL이 저장되지 않게 막음, 선언할 때 값을 지정해야 한다.
변수이름 자료형 NOT NULL := 값이나 표현식
*/
SET SERVEROUTPUT ON;
DECLARE
    --V_DEPTNO NUMBER(2) NOT NULL; NOT NULL로 정의된 변수는 초기치를 할당하여야 합니다 
    V_DEPTNO NUMBER(2) NOT NULL := 10;
    V_EMPNO CONSTANT NUMBER(4) := 7900; -- 상수, 초기값('JAMES')
    V_ENAME VARCHAR2(10);
BEGIN
    V_ENAME := 'JAMES';
    
    DBMS_OUTPUT.PUT_LINE('EMPNO : ' || V_EMPNO);
    DBMS_OUTPUT.PUT_LINE('NAME : ' || V_ENAME);
    DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || V_DEPTNO);
END;

/