/*
���ڵ�(record)�� �ȿ� �� �ٸ� ���ڵ���
-----------------------------------------------------
���ڵ�(RECORD) : �ڷ����� �ٸ� ���� �ڷ������� ����
TYPE ���ڵ��̸� IS RECORD (
    �����̸� �ڷ��� NOT NULL := �� �Ǵ� ǥ����
    �����̸� ���ڵ���
)
-----------------------------------------------------
������̺�(EMP)�ȿ� �μ������� ������ ����
*/

SET SERVEROUTPUT ON;

DECLARE
    TYPE REC_DEPT IS RECORD(        -- �μ� ���̺�
        DEPTNO DEPT.DEPTNO%TYPE,    -- �μ��ڵ�
        DNAME DEPT.DNAME%TYPE,      -- �μ��̸�
        LOC DEPT.LOC%TYPE           -- �μ���ġ
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