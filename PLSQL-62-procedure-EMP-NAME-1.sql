-- ���� ���ν���(Stored Procedure)
-- �̸��� ���� PL/SQL �̴�
-- ȣ�� : PL/SQL���� ȣ��

DECLARE
    V_ENAME EMP.ENAME%TYPE;
BEGIN
    PROC_EMP_NAME_IN_OUT(7900, V_ENAME);
    DBMS_OUTPUT.PUT_LINE('ENAME : ' || 7900);
    DBMS_OUTPUT.PUT_LINE('ENAME : ' || V_ENAME);
    
    PROC_EMP_NAME_IN_OUT(7566, V_ENAME);
    DBMS_OUTPUT.PUT_LINE('ENAME : ' || 7566);
    DBMS_OUTPUT.PUT_LINE('ENAME : ' || V_ENAME);
    
END;
/