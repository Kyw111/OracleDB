-- Ŀ��(cursor) 
-- ���� �� ��ȸ

 SET SERVEROUTPUT ON;
 
DECLARE
    V_DEPT_ROW DEPT%ROWTYPE;
    
    CURSOR C1 IS SELECT DEPTNO, DNAME, LOC FROM DEPT;
BEGIN
    OPEN C1; 
    
    LOOP
        FETCH C1 INTO V_DEPT_ROW;
        EXIT WHEN C1%NOTFOUND; -- FETCH�� �ؼ� ���̻� ���� ���ڵ尡 ������ TRUE�� �Ǿ� LOOP�� Ż��
        
    DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || V_DEPT_ROW.DEPTNO 
                        || ', DNAME : ' || V_DEPT_ROW.DNAME
                        || ', LOC : ' || V_DEPT_ROW.LOC);
    END LOOP;
    
    CLOSE C1;  -- Ŀ���ݱ�
END;
/
SELECT * FROM DEPT;
    