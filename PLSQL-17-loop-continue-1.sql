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
CONTINUE WHEN 조건식
조건식이 만족하면 아래의 실행문을 건너뛰고 
다시 루프의 처음으로 이동하여 다음 조건을 실행
--------------------------------------------------------------------------------
*/
SET SERVEROUTPUT ON;
DECLARE
   V_SUM NUMBER := 0;
   V_CNT NUMBER := 0;
BEGIN
    DBMS_OUTPUT.PUT_LINE('FOR ... LOOP : 1부터 10까지 짝수의 합을 구합니다.');
    
    FOR CNT IN 1..10 LOOP   -- ..두개
        --CONTINUE WHEN MOD(CNT,2) = 0;   -- 짝수는 건너뜀
        --IF문으로 변경
        IF MOD(CNT,2) = 1 THEN
            CONTINUE;
        END IF;
        V_SUM := V_SUM + CNT;
        V_CNT := V_CNT+1;
        DBMS_OUTPUT.PUT_LINE('CNT : ' || CNT || ', SUM=' || V_SUM);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('1부터 10까지 V_CNT는? ' || V_CNT);
    DBMS_OUTPUT.PUT_LINE('1부터 10까지 짝수의 합은? ' || V_SUM);
END;