/*
조건 제어문:
IF 조건식 THEN
    명령문;
ELSIF 조건식 THEN
    명령문;
ELSE
    명령문;
END IF;
-------------------------------------------
-------------------------------------------
*/
SET SERVEROUTPUT ON;
DECLARE
    V_SCORE NUMBER := 90;
BEGIN
    IF V_SCORE >= 95 THEN
        DBMS_OUTPUT.PUT_LINE('점수 ' || V_SCORE || '는(은) A학점입니다');
    ELSIF V_SCORE >= 90 THEN
        DBMS_OUTPUT.PUT_LINE('점수 ' || V_SCORE || '는(은) B학점입니다');
    ELSIF V_SCORE >= 80 THEN
        DBMS_OUTPUT.PUT_LINE('점수 ' || V_SCORE || '는(은) C학점입니다');
    ELSIF V_SCORE >= 70 THEN
        DBMS_OUTPUT.PUT_LINE('점수 ' || V_SCORE || '는(은) D학점입니다');
    ELSIF V_SCORE >= 60 THEN
        DBMS_OUTPUT.PUT_LINE('점수 ' || V_SCORE || '는(은) E학점입니다');
    ELSE
        DBMS_OUTPUT.PUT_LINE('점수 ' || V_SCORE || '는(은) F학점입니다');
    END IF;
    DBMS_OUTPUT.PUT_LINE('학점');
END;

/