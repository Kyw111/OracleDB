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
---------------------------------------------------------------
*/

SET SERVEROUTPUT ON;

DECLARE
    TYPE REC_DEPT IS RECORD(    -- �μ����� ���ڵ�
        DEPTNO DEPT.DEPTNO%TYPE,
        DNAME  DEPT.DNAME%TYPE
    );
    
    TYPE DEPTLISTS IS TABLE OF DEPT%ROWTYPE INDEX BY PLS_INTEGER;   --�μ� ���̺� %ROWTYPE ��� �ִ� �迭
    
    DEPT_LISTS DEPTLISTS;
    IDX PLS_INTEGER := 0;
    
BEGIN
    FOR DEPT IN (SELECT * FROM DEPT) LOOP
        IDX := IDX + 1;
        DEPT_LISTS(IDX).DEPTNO  := DEPT.DEPTNO;
        DEPT_LISTS(IDX).DNAME   := DEPT.DNAME;
        DEPT_LISTS(IDX).LOC     := DEPT.LOC;
    END LOOP;
    
     DBMS_OUTPUT.PUT_LINE('* count : ' || DEPT_LISTS.COUNT);
     DBMS_OUTPUT.PUT_LINE('* FIRST : ' || DEPT_LISTS.FIRST);
     DBMS_OUTPUT.PUT_LINE('* LAST : ' || DEPT_LISTS.LAST);
     DBMS_OUTPUT.PUT_LINE('* PRIOR(5) : ' || DEPT_LISTS.PRIOR(5)); --() ��
     DBMS_OUTPUT.PUT_LINE('* NEXT(5) : ' || DEPT_LISTS.NEXT(5));  --() ��
     
    FOR CNT IN 1..IDX LOOP
        DBMS_OUTPUT.PUT_LINE('IDX[' || CNT || '] '||
        DEPT_LISTS(CNT).DEPTNO || ' , ' || 
        DEPT_LISTS(CNT).DNAME || ', ' ||
        DEPT_LISTS(CNT).LOC);
    END LOOP;
    
END;
/
    