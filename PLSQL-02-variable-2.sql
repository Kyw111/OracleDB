/*
������:
    1. %TYPE    : ������(Į��)
    2. %ROWTYPE : ������(���ڵ�)
    3. �� : �����̸� ���̺��̸�.���̸�%TYPE
-----------------------------------------------------*/

 SET SERVEROUTPUT ON;

DESC DEPT;
DECLARE
    V_DEPTNO DEPT.DEPTNO%TYPE := 30;  -- ���̺��.Į����%TYPE := �����Ͱ�
    V_DEPTNO2 NUMBER(2) := 30;
BEGIN
    DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || V_DEPTNO);
    DBMS_OUTPUT.PUT_LINE('DEPTNO2 : ' || V_DEPTNO);
END;

/