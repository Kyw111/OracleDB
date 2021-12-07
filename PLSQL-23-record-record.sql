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
    TYPE REC_EMP IS RECORD(
    EMPNO EMP.EMPNO%TYPE,   --����ڵ�
    ENAME EMP.ENAME%TYPE,   --����̸�
    DEPT REC_DEPT           --�μ�����
    );
    
    EMP_REC REC_EMP;
BEGIN
    DBMS_OUTPUT.PUT_LINE('���ڵ� �ȿ� ���ڵ� ����');
    
    EMP_REC.EMPNO := 7900;
    EMP_REC.ENAME := 'KIM';
    
    EMP_REC.DEPT.DEPTNO := 55;
    EMP_REC.DEPT.DNAME := 'RND';
    EMP_REC.DEPT.LOC := 'SEOUL';
    
    DBMS_OUTPUT.PUT_LINE(EMP_REC.EMPNO);
    DBMS_OUTPUT.PUT_LINE(EMP_REC.ENAME);
    DBMS_OUTPUT.PUT_LINE(EMP_REC.DEPT.DEPTNO);
    DBMS_OUTPUT.PUT_LINE(EMP_REC.DEPT.DNAME);
    DBMS_OUTPUT.PUT_LINE(EMP_REC.DEPT.LOC);
    
END;
/