-- ����� Ŀ�� ���� (Declaration)
-- FOR ... LOOP
-- FOR ���� IN Ŀ���̸� LOOP
-- �ڵ����� Ŀ��(OPEN, FETCH, CLOSE ��)

 SET SERVEROUTPUT ON;
 
DECLARE
    CURSOR C1 IS SELECT DEPTNO, DNAME, LOC FROM DEPT;
BEGIN 
    -- Ŀ�� FOR LOOP ���� ( �ڵ� OPEN, FETCH, CLOSE)
    FOR C1_DEPT IN C1 LOOP
    DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || C1_DEPT.DEPTNO 
                        || ', DNAME : ' || C1_DEPT.DNAME
                        || ', LOC : ' || C1_DEPT.LOC);
    END LOOP;

END;
/
SELECT * FROM DEPT;
    