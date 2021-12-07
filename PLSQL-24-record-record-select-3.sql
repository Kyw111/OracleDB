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
    --DEPT REC_DEPT           --�μ�����
    DEPT DEPT%ROWTYPE       -- �μ�����
    );
    
    EMP_REC REC_EMP;
BEGIN
    SELECT E.EMPNO, E.ENAME, D.DEPTNO, D.DNAME, D.LOC
        --INTO EMP_REC
        INTO EMP_REC.EMPNO, EMP_REC.ENAME, EMP_REC.DEPT.DEPTNO,
        EMP_REC.DEPT.DNAME, EMP_REC.DEPT.LOC
        FROM EMP E, DEPT D
        WHERE E.DEPTNO = D.DEPTNO
        AND E.EMPNO = 7900;
    
    DBMS_OUTPUT.PUT_LINE('���ڵ� �ȿ� ���ڵ� ����');
    
    DBMS_OUTPUT.PUT_LINE(EMP_REC.EMPNO);
    DBMS_OUTPUT.PUT_LINE(EMP_REC.ENAME);
    DBMS_OUTPUT.PUT_LINE(EMP_REC.DEPT.DEPTNO);
    DBMS_OUTPUT.PUT_LINE(EMP_REC.DEPT.DNAME);
    DBMS_OUTPUT.PUT_LINE(EMP_REC.DEPT.LOC);
    
END;
/