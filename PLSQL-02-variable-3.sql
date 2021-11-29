/*
������:
    1. %TYPE    : ������(Į��)
    2. %ROWTYPE : ������(���ڵ�)
    3. �� : �����̸� ���̺��̸�.���̸�%TYPE
-----------------------------------------------------

*/

 SET SERVEROUTPUT ON;

DECLARE
    V_DEPTROW DEPT%ROWTYPE; -- ������ : %NOTYPE (���ڵ�, �ϳ��� ��)
BEGIN
    SELECT DEPTNO, DNAME, LOC INTO V_DEPTROW
    FROM DEPT
    WHERE DEPTNO = 30;

    DBMS_OUTPUT.PUT_LINE('[�μ��ڵ�(30) ����]');
    DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || V_DEPTROW.DEPTNO);
    DBMS_OUTPUT.PUT_LINE('DNAME : ' || V_DEPTROW.DNAME);
    DBMS_OUTPUT.PUT_LINE('LOC : ' || V_DEPTROW.LOC);
END;

/