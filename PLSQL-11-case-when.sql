/*
조건 제어문: CASE ~ WHEN
CASE 비교기준
    WHEN 값1 THEN
        명령문;
    WHEN 값2 THEN
        명령문;
    ELSE 
        명령문;
END CASE;
-------------------------------------------
SELECT ENAME, SAL, JOB,
    CASE JOB
        WHEN 'MANAGER' THEN SAL * 0.1
        WHEN 'SALESMAN' THEN SAL * 0.2
        WHEN 'ANALYST' THEN SAL * 0.3
        ELSE SAL * 0.05
    END AS upsal
    FROM EMP;
-------------------------------------------
*/
SET SERVEROUTPUT ON;
DECLARE
    V_SCORE NUMBER := 88;
    V_GRADE CHAR;
BEGIN
    DBMS_OUTPUT.PUT_LINE('V_SCORE/ 10 : ' || V_SCORE/10);
    DBMS_OUTPUT.PUT_LINE('TRUNC : ' || TRUNC(V_SCORE/10));
    
    CASE TRUNC(V_SCORE/10) -- 소숫점이하 버림
        WHEN 10 THEN
            V_GRADE := 'A';
        WHEN 9 THEN
            V_GRADE := 'B';
        WHEN 8 THEN
            V_GRADE := 'C';
        WHEN 7 THEN
            V_GRADE := 'D';
        WHEN 6 THEN
            V_GRADE := 'E';
        WHEN 5 THEN
            V_GRADE := 'F';
    END CASE;
    DBMS_OUTPUT.PUT_LINE('점수 ' || V_SCORE || '는(은)' || V_GRADE || '학점입니다.');
END;

/