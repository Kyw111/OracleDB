-- Ŀ���� �Ķ���� ���

 SET SERVEROUTPUT ON;
 
DECLARE
    -- Ŀ�� �����͸� �Է��� ���� ����
    V_DEPT_ROW DEPT%ROWTYPE;
    
    -- ����� Ŀ�� ����(DECLARATION) ////// �ϳ��� Ŀ���� ��Ȱ�� (�Ʒ� �Ķ����2��)
    CURSOR C1 (P_DEPTNO DEPT.DEPTNO%TYPE)IS 
        SELECT DEPTNO, DNAME, LOC 
        FROM DEPT
        WHERE DEPTNO = P_DEPTNO;
BEGIN 
    
    FOR V_DEPT_ROW IN C1(10) LOOP
    DBMS_OUTPUT.PUT_LINE('10�� �μ� DEPTNO : ' || V_DEPT_ROW.DEPTNO 
                                     || ', DNAME : ' || V_DEPT_ROW.DNAME
                                     || ', LOC : ' || V_DEPT_ROW.LOC);
    END LOOP;
    
     FOR V_DEPT_ROW IN C1(20) LOOP
    DBMS_OUTPUT.PUT_LINE('20�� �μ� DEPTNO : ' || V_DEPT_ROW.DEPTNO 
                                     || ', DNAME : ' || V_DEPT_ROW.DNAME
                                     || ', LOC : ' || V_DEPT_ROW.LOC);
    END LOOP;
    
END;
/
SELECT * FROM DEPT;
    