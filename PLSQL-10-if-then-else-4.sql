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
    V_GRADE CHAR;
BEGIN
    IF V_SCORE >= 95 THEN
        V_GRADE := 'A';
    ELSIF V_SCORE >= 90 THEN
        V_GRADE := 'B';
    ELSIF V_SCORE >= 80 THEN
        V_GRADE := 'C';
    ELSIF V_SCORE >= 70 THEN
        V_GRADE := 'D';
    ELSIF V_SCORE >= 60 THEN
        V_GRADE := 'E';
    ELSE
        V_GRADE := 'F';
    END IF;
    DBMS_OUTPUT.PUT_LINE('점수 ' || V_SCORE || '는(은)' || V_GRADE || '학점입니다.');
END;

/