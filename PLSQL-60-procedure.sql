-- ���� ���ν���(Stored Procedure)
-- �̸��� ���� PL/SQL �̴�

CREATE OR REPLACE PROCEDURE PROC_EMP_NAME
IS
    V_EMPNO NUMBER := 7900;
    V_ENAME VARCHAR2(10);
BEGIN
    V_ENAME := 'EZEN';
    
    DBMS_OUTPUT.PUT_LINE('EMPNO : ' || V_EMPNO);
    DBMS_OUTPUT.PUT_LINE('EMPNO : ' || V_ENAME);
    
END;
/