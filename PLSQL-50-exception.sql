-- ����ó��(EXCEPTION)
-- ���ܰ� �߻��Ͽ��� ���α׷��� �������� �ʰ� ����

 SET SERVEROUTPUT ON;
 
DECLARE
    V_DNAME NUMBER; -- VARCHAR2(14)
    
BEGIN 
    SELECT DNAME INTO V_DNAME
        FROM DEPT
        WHERE DEPTNO = 10;
    EXCEPTION
        WHEN VALUE_ERROR THEN
            DBMS_OUTPUT.PUT_LINE('���� ó�� : ��ġ �Ǵ� �� ���� �߻�');
        DBMS_OUTPUT.PUT_LINE('THE END');
END;
/
    