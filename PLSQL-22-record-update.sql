/*
���ڵ�(record) : �ڷ����� �ٸ� ���� �ڷ������� ����
TYPE ���ڵ��̸� IS RECORD (
    �����̸� �ڷ��� NOT NULL := �� �Ǵ� ǥ����
)
-----------------------------------------------------
���ڵ带 �̿��Ͽ� ���̺� ������ ����(UPDATE)
-----------------------------------------------------
*/

SET SERVEROUTPUT ON;

DESC DEPT;
SELECT * FROM DEPT;
DECLARE
    TYPE REC_DEPT IS RECORD( -- ����� �ڷ����� ����
        DEPTNO NUMBER(2) NOT NULL := 30,
        DNAME DEPT.DNAME%TYPE,
        LOC DEPT.LOC%TYPE
    );
   
    DEPT_REC REC_DEPT; -- ���ڵ��� ���� DEPT_REC ����
BEGIN
    DEPT_REC.DEPTNO := 57;          -- ���ڵ�������.�Ӽ��� ���� �Ҵ�
    DEPT_REC.DNAME := 'EZ57';   
    DEPT_REC.LOC := 'DAEJEON';
    DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || DEPT_REC.DEPTNO);   -- ���� : ���ڵ�������.�Ӽ����� ���� ����
    DBMS_OUTPUT.PUT_LINE('DNAME : ' || DEPT_REC.DNAME);
    DBMS_OUTPUT.PUT_LINE('LOC : ' || DEPT_REC.LOC);
    
    UPDATE DEPT -- �������� ���
            SET DNAME  = DEPT_REC.DNAME,
            LOC     = DEPT_REC.LOC
            WHERE DEPTNO = 57;
END;
/