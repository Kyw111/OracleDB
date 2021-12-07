/*
반복 제어문:
    1. 기본 LOOP : 기본 반복문
    2. WHILE LOOP : 특정 조건식의 결과를 통해 반복 수행
    3. FOR LOOP : 반복 회수를 정하여 반복 수행
    4. CURSOR FOR LOOP : 커서를 활용한 반복 수행
--------------------------------------------------------------------------------
반복 수행 중단:
    1. EXIT : 수행 중인 반복 종료
    2. EXIT-WHEN : 반복 종료를 위한 조건식을 지정하고 만족하면 반복 종료
    3. CONTINUE : 수행 중인 반복의 현재 주기를 건너뜀
    4. CONTINUE-WHEN : 특정 조건식을 지정하고 조건식을 만족하면 현재 반복 주기를 건너뜀
--------------------------------------------------------------------------------
*/
SET SERVEROUTPUT ON;
DECLARE
   V_CNT NUMBER := 1;
BEGIN
    DBMS_OUTPUT.PUT_LINE('CNT가 1부터 10까지 증가합니다');
    
    WHILE V_CNT <= 10 LOOP  -- 조건을 만족하는 동안 블럭을 실행
        DBMS_OUTPUT.PUT_LINE('CNT : ' || V_CNT);
        V_CNT := V_CNT + 1;
    END LOOP;
END;