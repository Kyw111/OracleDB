/*
�÷���(Collection) : ���� �ڷ���
1. Ư�� �ڷ����� ������ ����
2. ���� ������ �����͸� �ϳ��� ���� ���
---------------------------------------------------------------
�����迭:
TYPE �迭�̸� IS TABLE OF �ڷ��� INDEX BY �ε�����
---------------------------------------------------------------
�ε�����: Ű�� ����� �ε����� �ڷ���
1. BINARY_INTEGER
2. PLS_INTEGER(������)
3. VARCHAR2(������)
---------------------------------------------------------------
���ڵ带 Ȱ���� ���� �迭
---------------------------------------------------------------
*/

SET SERVEROUTPUT ON;

DECLARE
    TYPE REC_DEPT IS RECORD(    -- �μ����� ���ڵ�
        DEPTNO DEPT.DEPTNO%TYPE,
        DNAME  DEPT.DNAME%TYPE
    );
    
    TYPE DEPTLISTS IS TABLE OF REC_DEPT INDEX BY PLS_INTEGER;   --�μ����� ���ڵ带 ����ִ� �迭
    
    DEPT_LISTS DEPTLISTS;
    IDX PLS_INTEGER := 0;
    
BEGIN
    FOR DEPT IN (SELECT DEPTNO, DNAME FROM DEPT) LOOP
        IDX := IDX + 1;
        DEPT_LISTS(IDX).DEPTNO := DEPT.DEPTNO;
        DEPT_LISTS(IDX).DNAME := DEPT.DNAME;
    END LOOP;
    
    FOR CNT IN 1..IDX LOOP
        DBMS_OUTPUT.PUT_LINE('IDX[' || CNT || '] '|| DEPT_LISTS(CNT).DEPTNO || ' : ' || DEPT_LISTS(CNT).DNAME);
    END LOOP;
    
END;
/
    