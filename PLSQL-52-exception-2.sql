-- 예외처리(EXCEPTION)
-- SQLCODE : 오류 번호 반환
-- SQLERRM : 오류 메시지 반환

 SET SERVEROUTPUT ON;
 
DECLARE
    V_DNAME NUMBER;
    
BEGIN 
    SELECT DNAME INTO V_DNAME
        FROM DEPT
        WHERE DEPTNO = 10;
    DBMS_OUTPUT.PUT_LINE('예외가 발생하면 이 문장은 실행되지 않음.');    
    
    EXCEPTION
        
        WHEN OTHERS THEN 
            DBMS_OUTPUT.PUT_LINE('예외 처리 : 사전 정의 외 오류 발생');
            DBMS_OUTPUT.PUT_LINE('SQLCODE : ' || TO_CHAR(SQLCODE));
            DBMS_OUTPUT.PUT_LINE('SQLERRM : ' || SQLERRM);
            
       
        
END;
/
    