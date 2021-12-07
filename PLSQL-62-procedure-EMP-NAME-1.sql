-- 저장 프로시저(Stored Procedure)
-- 이름을 가진 PL/SQL 이다
-- 호출 : PL/SQL에서 호출

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