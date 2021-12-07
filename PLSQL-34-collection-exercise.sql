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
�÷��� �޼ҵ�
[����] DEPT_LISTS�� ��� �����͸� ��� ����϶�.
---------------------------------------------------------------
*/
DESC DEPT;

SET SERVEROUTPUT ON;

DECLARE
    
    TYPE DEPTLISTS IS TABLE OF DEPT%ROWTYPE INDEX BY PLS_INTEGER;   --�μ� ���̺� %ROWTYPE ��� �ִ� �迭
    
    DEPT_LISTS DEPTLISTS;
    
    DEPTNO DEPT.DEPTNO%TYPE;
BEGIN
    FOR DEPT IN (SELECT * FROM DEPT) LOOP
        DEPT_LISTS(DEPT.DEPTNO).DEPTNO  := DEPT.DEPTNO;
        DEPT_LISTS(DEPT.DEPTNO).DNAME   := DEPT.DNAME;
        DEPT_LISTS(DEPT.DEPTNO).LOC     := DEPT.LOC;
        
        DBMS_OUTPUT.PUT_LINE(DEPT.DEPTNO || ',' || DEPT.DNAME || ', ' || DEPT.LOC);
    END LOOP;
    
     DBMS_OUTPUT.PUT_LINE('* count : ' || DEPT_LISTS.COUNT);
     DBMS_OUTPUT.PUT_LINE('* FIRST : ' || DEPT_LISTS.FIRST);
     DBMS_OUTPUT.PUT_LINE('* LAST : ' || DEPT_LISTS.LAST);
     DBMS_OUTPUT.PUT_LINE('* PRIOR(5) : ' || DEPT_LISTS.PRIOR(5)); --() ��
     DBMS_OUTPUT.PUT_LINE('* NEXT(5) : ' || DEPT_LISTS.NEXT(5));  --() ��
     
    FOR ONE_DEPT IN (SELECT * FROM DEPT) LOOP
        DBMS_OUTPUT.PUT_LINE(DEPT_LISTS(ONE_DEPT.DEPTNO).DEPTNO || ', ' ||
        DEPT_LISTS(ONE_DEPT.DEPTNO).DNAME || ', ' ||
        DEPT_LISTS(ONE_DEPT.DEPTNO).LOC);
    END LOOP;
    
END;
/
    