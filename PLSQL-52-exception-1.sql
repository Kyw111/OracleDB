-- ����ó��(EXCEPTION)


 SET SERVEROUTPUT ON;
 
DECLARE
    V_DNAME VARCHAR2(2);
    
BEGIN 
    SELECT DNAME INTO V_DNAME
        FROM DEPT
        WHERE DEPTNO = 10;
    DBMS_OUTPUT.PUT_LINE('���ܰ� �߻��ϸ� �� ������ ������� ����.');    
    
    EXCEPTION
        WHEN TOO_MANY_ROWS THEN
            DBMS_OUTPUT.PUT_LINE('���� ó�� : �䱸���� ���� �� ���� ���� �߻�');
       -- WHEN VALUE_ERROR THEN
       --     DBMS_OUTPUT.PUT_LINE('���� ó�� : ��ġ �Ǵ� �� ���� �߻�');
        WHEN OTHERS THEN -- �� ��ɹ��� ��µ�
            DBMS_OUTPUT.PUT_LINE('���� ó�� : ���� ���� �� ���� �߻�');
            
       
        
END;
/
    