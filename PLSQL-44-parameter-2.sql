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
    OPEN C1(30); --�Ķ����
        LOOP
            FETCH C1 INTO V_DEPT_ROW;
            EXIT WHEN C1%NOTFOUND;
              DBMS_OUTPUT.PUT_LINE('30�� �μ� DEPTNO : ' || V_DEPT_ROW.DEPTNO 
                                     || ', DNAME : ' || V_DEPT_ROW.DNAME
                                     || ', LOC : ' || V_DEPT_ROW.LOC);
     END LOOP;
    CLOSE C1;
    
    OPEN C1(10); -- �Ķ����
        LOOP
            FETCH C1 INTO V_DEPT_ROW;
            EXIT WHEN C1%NOTFOUND;
              DBMS_OUTPUT.PUT_LINE('10�� �μ� DEPTNO : ' || V_DEPT_ROW.DEPTNO 
                                     || ', DNAME : ' || V_DEPT_ROW.DNAME
                                     || ', LOC : ' || V_DEPT_ROW.LOC);
     END LOOP;
    CLOSE C1;
END;
/
SELECT * FROM DEPT;
    