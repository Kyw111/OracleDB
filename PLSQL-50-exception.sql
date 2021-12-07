-- 예외처리(EXCEPTION)
-- 예외가 발생하여도 프로그램을 종료하지 않고 진행

 SET SERVEROUTPUT ON;
 
DECLARE
    V_DNAME NUMBER; -- VARCHAR2(14)
    
BEGIN 
    SELECT DNAME INTO V_DNAME
        FROM DEPT
        WHERE DEPTNO = 10;
    EXCEPTION
        WHEN VALUE_ERROR THEN
            DBMS_OUTPUT.PUT_LINE('예외 처리 : 수치 또는 값 오류 발생');
        DBMS_OUTPUT.PUT_LINE('THE END');
END;
/
    