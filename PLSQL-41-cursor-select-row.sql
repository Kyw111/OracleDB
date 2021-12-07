/* Ŀ�� : 
    1.Ŀ���� �˻������ ��� �ִ� ����
    2.�˻������ 1�� �̻��� ����Ǿ��� �� ó�� 
    3.���ڵ��� ��ġ, ���� ��ġ�� �̵��ؼ� ã�ư� �� �ִ�.
--------------------*/

--------------------
-- 1. Ŀ������(declaration)
-- 2. Ŀ������(open)
-- 3. Ŀ���б�(fetch)
-- 4. Ŀ���ݱ�(close)

 SET SERVEROUTPUT ON;
 
DECLARE
    -- Ŀ�� �����͸� �Է��� ���� ����
    V_DEPT_ROW DEPT%ROWTYPE;
    
    -- ����� Ŀ�� ����
    CURSOR C1 IS
        SELECT DEPTNO, DNAME, LOC
            FROM DEPT
            WHERE DEPTNO = 40;
BEGIN
    OPEN C1; -- Ŀ������
    
    FETCH C1 INTO V_DEPT_ROW;
        
    DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || V_DEPT_ROW.DEPTNO);
    DBMS_OUTPUT.PUT_LINE('DNAME : ' || V_DEPT_ROW.DNAME);
    DBMS_OUTPUT.PUT_LINE('LOC : ' || V_DEPT_ROW.LOC);
    
    CLOSE C1;  -- Ŀ���ݱ�
END;
/
SELECT * FROM DEPT;
    