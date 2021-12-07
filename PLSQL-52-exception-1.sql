-- 예외처리(EXCEPTION)


 SET SERVEROUTPUT ON;
 
DECLARE
    V_DNAME VARCHAR2(2);
    
BEGIN 
    SELECT DNAME INTO V_DNAME
        FROM DEPT
        WHERE DEPTNO = 10;
    DBMS_OUTPUT.PUT_LINE('예외가 발생하면 이 문장은 실행되지 않음.');    
    
    EXCEPTION
        WHEN TOO_MANY_ROWS THEN
            DBMS_OUTPUT.PUT_LINE('예외 처리 : 요구보다 많은 행 추출 오류 발생');
       -- WHEN VALUE_ERROR THEN
       --     DBMS_OUTPUT.PUT_LINE('예외 처리 : 수치 또는 값 오류 발생');
        WHEN OTHERS THEN -- 이 명령문이 출력됨
            DBMS_OUTPUT.PUT_LINE('예외 처리 : 사전 정의 외 오류 발생');
            
       
        
END;
/
    